import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/authorization.dart' as authorization;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azure_native/storage.dart' as storage;
import 'package:pulumi_azure_native/synapse.dart' as synapse;
import 'package:pulumi_random/pulumi_random.dart' as random;

class AzureNativeSynapseStack extends pulumi.Stack {
  AzureNativeSynapseStack() : super() {
    final resourceGroup = resources.ResourceGroup('synapse-rg');

    final storageAccount = storage.StorageAccount(
      'synapsesa',
      args: storage.StorageAccountArgs(
        resourceGroupName: resourceGroup.name,
        location: resourceGroup.location,
        accessTier: storage.AccessTier.valueHot.output(),
        enableHttpsTrafficOnly: true.output(),
        isHnsEnabled: true.output(),
        kind: storage.Kind.valueStorageV2.wireValue.output(),
        sku: storage.Sku(
          name: storage.SkuName.valueStandardRAGRS.wireValue.output(),
        ).output(),
      ),
    );

    storage.BlobContainer(
      'users',
      args: storage.BlobContainerArgs(
        resourceGroupName: resourceGroup.name,
        accountName: storageAccount.name,
        publicAccess: storage.PublicAccess.valueNone.output(),
      ),
    );

    final dataLakeStorageAccountUrl = storageAccount.name.apply<String>(
      (name) => 'https://$name.dfs.core.windows.net',
    );

    final workspacePassword = random.index.RandomPassword(
      'workspacePwd',
      args: random.index.RandomPasswordArgs(length: 12.output()),
    );

    final workspace = synapse.Workspace(
      'my-workspace',
      args: synapse.WorkspaceArgs(
        resourceGroupName: resourceGroup.name,
        location: resourceGroup.location,
        defaultDataLakeStorage: synapse.DataLakeStorageAccountDetails(
          accountUrl: dataLakeStorageAccountUrl,
          filesystem: 'users'.output(),
        ).output(),
        identity: synapse.ManagedIdentity(
          type: synapse.ResourceIdentityType.valueSystemAssigned.output(),
        ).output(),
        sqlAdministratorLogin: 'sqladminuser'.output(),
        sqlAdministratorLoginPassword: workspacePassword.result,
      ),
    );

    synapse.IpFirewallRule(
      'allowAll',
      args: synapse.IpFirewallRuleArgs(
        resourceGroupName: resourceGroup.name,
        workspaceName: workspace.name,
        startIpAddress: '0.0.0.0'.output(),
        endIpAddress: '255.255.255.255'.output(),
      ),
    );

    final subscriptionId = resourceGroup.id.apply<String>(
      (id) => id.split('/')[2],
    );

    final roleDefinitionId = subscriptionId.apply<String>(
      (id) =>
          '/subscriptions/$id/providers/Microsoft.Authorization/roleDefinitions/ba92f5b4-2d11-453d-a403-e96b0029c9fe',
    );

    final workspacePrincipalId = workspace.identity.apply<String>((identity) {
      if (identity == null) {
        if (pulumi.Deployment.instance.isDryRun) {
          return '<preview>';
        }
        throw StateError('Workspace identity principalId is not available.');
      }
      return identity.principalId;
    });

    final storageRoleName = random.index.RandomUuid('storage-role-name');
    authorization.RoleAssignment(
      'storageAccess',
      args: authorization.RoleAssignmentArgs(
        roleAssignmentName: storageRoleName.result,
        scope: storageAccount.id,
        principalId: workspacePrincipalId,
        principalType: authorization
            .PrincipalType
            .valueServicePrincipal
            .wireValue
            .output(),
        roleDefinitionId: roleDefinitionId,
      ),
    );

    final clientConfig = pulumi.output(authorization.getClientConfig());
    final userRoleName = random.index.RandomUuid('user-role-name');
    authorization.RoleAssignment(
      'userAccess',
      args: authorization.RoleAssignmentArgs(
        roleAssignmentName: userRoleName.result,
        scope: storageAccount.id,
        principalId: clientConfig.apply<String>((result) => result.objectId),
        principalType: authorization.PrincipalType.valueUser.wireValue.output(),
        roleDefinitionId: roleDefinitionId,
      ),
    );

    final sqlPool = synapse.SqlPool(
      'SQLPOOL1',
      args: synapse.SqlPoolArgs(
        resourceGroupName: resourceGroup.name,
        workspaceName: workspace.name,
        collation: 'SQL_Latin1_General_CP1_CI_AS'.output(),
        createMode: 'Default'.output(),
        sku: synapse.Sku(name: 'DW100c'.output()).output(),
      ),
    );

    final sparkPool = synapse.BigDataPool(
      'Spark1',
      args: synapse.BigDataPoolArgs(
        resourceGroupName: resourceGroup.name,
        workspaceName: workspace.name,
        autoPause: synapse.AutoPauseProperties(
          delayInMinutes: 15.output(),
          enabled: true.output(),
        ).output(),
        autoScale: synapse.AutoScaleProperties(
          enabled: true.output(),
          maxNodeCount: 3.output(),
          minNodeCount: 3.output(),
        ).output(),
        nodeCount: 3.output(),
        nodeSize: synapse.NodeSize.valueSmall.wireValue.output(),
        nodeSizeFamily: synapse.NodeSizeFamily.valueMemoryOptimized.wireValue
            .output(),
        sparkVersion: '2.4'.output(),
      ),
    );

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'workspaceName': workspace.name,
      'workspaceUid': workspace.workspaceUID,
      'sqlPoolName': sqlPool.name,
      'sparkPoolName': sparkPool.name,
    });
  }
}
