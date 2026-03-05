import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_resource_cassandra_role_assignment_args.dart';
import 'system_data_response.dart';

/// Parameters to create and update an Azure Cosmos DB Cassandra Role Assignment.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBCassandraRoleAssignmentCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cassandraResourceCassandraRoleAssignment = new AzureNative.CosmosDB.CassandraResourceCassandraRoleAssignment("cassandraResourceCassandraRoleAssignment", new()
///     {
///         AccountName = "myAccountName",
///         PrincipalId = "myPrincipalId",
///         ResourceGroupName = "myResourceGroupName",
///         RoleAssignmentId = "myRoleAssignmentId",
///         RoleDefinitionId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/cassandraRoleDefinitions/myRoleDefinitionId",
///         Scope = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases/colls/redmond-purchases",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	cosmosdb "github.com/pulumi/pulumi-azure-native-sdk/cosmosdb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cosmosdb.NewCassandraResourceCassandraRoleAssignment(ctx, "cassandraResourceCassandraRoleAssignment", &cosmosdb.CassandraResourceCassandraRoleAssignmentArgs{
/// 			AccountName:       pulumi.String("myAccountName"),
/// 			PrincipalId:       pulumi.String("myPrincipalId"),
/// 			ResourceGroupName: pulumi.String("myResourceGroupName"),
/// 			RoleAssignmentId:  pulumi.String("myRoleAssignmentId"),
/// 			RoleDefinitionId:  pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/cassandraRoleDefinitions/myRoleDefinitionId"),
/// 			Scope:             pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases/colls/redmond-purchases"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.cosmosdb.CassandraResourceCassandraRoleAssignment;
/// import com.pulumi.azurenative.cosmosdb.CassandraResourceCassandraRoleAssignmentArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var cassandraResourceCassandraRoleAssignment = new CassandraResourceCassandraRoleAssignment("cassandraResourceCassandraRoleAssignment", CassandraResourceCassandraRoleAssignmentArgs.builder()
///             .accountName("myAccountName")
///             .principalId("myPrincipalId")
///             .resourceGroupName("myResourceGroupName")
///             .roleAssignmentId("myRoleAssignmentId")
///             .roleDefinitionId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/cassandraRoleDefinitions/myRoleDefinitionId")
///             .scope("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases/colls/redmond-purchases")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const cassandraResourceCassandraRoleAssignment = new azure_native.cosmosdb.CassandraResourceCassandraRoleAssignment("cassandraResourceCassandraRoleAssignment", {
///     accountName: "myAccountName",
///     principalId: "myPrincipalId",
///     resourceGroupName: "myResourceGroupName",
///     roleAssignmentId: "myRoleAssignmentId",
///     roleDefinitionId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/cassandraRoleDefinitions/myRoleDefinitionId",
///     scope: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases/colls/redmond-purchases",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cassandra_resource_cassandra_role_assignment = azure_native.cosmosdb.CassandraResourceCassandraRoleAssignment("cassandraResourceCassandraRoleAssignment",
///     account_name="myAccountName",
///     principal_id="myPrincipalId",
///     resource_group_name="myResourceGroupName",
///     role_assignment_id="myRoleAssignmentId",
///     role_definition_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/cassandraRoleDefinitions/myRoleDefinitionId",
///     scope="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases/colls/redmond-purchases")
///
/// ```
///
/// ```yaml
/// resources:
///   cassandraResourceCassandraRoleAssignment:
///     type: azure-native:cosmosdb:CassandraResourceCassandraRoleAssignment
///     properties:
///       accountName: myAccountName
///       principalId: myPrincipalId
///       resourceGroupName: myResourceGroupName
///       roleAssignmentId: myRoleAssignmentId
///       roleDefinitionId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/cassandraRoleDefinitions/myRoleDefinitionId
///       scope: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases/colls/redmond-purchases
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:cosmosdb:CassandraResourceCassandraRoleAssignment myRoleAssignmentId /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/cassandraRoleAssignments/{roleAssignmentId}
/// ```
class CassandraResourceCassandraRoleAssignment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The unique identifier for the associated AAD principal in the AAD graph to which access is being granted through this Cassandra Role Assignment. Tenant ID for the principal is inferred using the tenant associated with the subscription.
  late final pulumi.Output<String?> principalId;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The unique identifier for the associated Role Definition.
  late final pulumi.Output<String?> roleDefinitionId;
  /// The data plane resource path for which access is being granted through this Cassandra Role Assignment.
  late final pulumi.Output<String?> scope;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CassandraResourceCassandraRoleAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CassandraResourceCassandraRoleAssignment]. {@macro pulumi_cosmosdb_cassandra_resource_cassandra_role_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CassandraResourceCassandraRoleAssignment(
    String name, {
    CassandraResourceCassandraRoleAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:CassandraResourceCassandraRoleAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    principalId = registerOutput<String?>('principalId');
    provisioningState = registerOutput<String>('provisioningState');
    roleDefinitionId = registerOutput<String?>('roleDefinitionId');
    scope = registerOutput<String?>('scope');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
