import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_volume_args.dart';
import 'elastic_volume_properties_response.dart';
import 'system_data_response.dart';

/// NetApp Elastic Volume resource
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ElasticVolumes_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticVolume = new AzureNative.NetApp.ElasticVolume("elasticVolume", new()
///     {
///         AccountName = "account1",
///         Location = "eastus",
///         PoolName = "pool1",
///         Properties = new AzureNative.NetApp.Inputs.ElasticVolumePropertiesArgs
///         {
///             DataProtection = new AzureNative.NetApp.Inputs.ElasticVolumeDataProtectionPropertiesArgs
///             {
///                 Backup = new AzureNative.NetApp.Inputs.ElasticVolumeBackupPropertiesArgs
///                 {
///                     ElasticBackupPolicyResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticBackupPolicies/elasticBackupPolicy1",
///                     ElasticBackupVaultResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticBackupVaults/elasticBackupVault1",
///                     PolicyEnforcement = AzureNative.NetApp.ElasticVolumePolicyEnforcement.Enforced,
///                 },
///                 Snapshot = new AzureNative.NetApp.Inputs.ElasticVolumeSnapshotPropertiesArgs
///                 {
///                     SnapshotPolicyResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticSnapshotPolicies/policy1",
///                 },
///             },
///             ExportPolicy = new AzureNative.NetApp.Inputs.ElasticExportPolicyArgs
///             {
///                 Rules = new[]
///                 {
///                     new AzureNative.NetApp.Inputs.ElasticExportPolicyRuleArgs
///                     {
///                         AllowedClients = new[]
///                         {
///                             "0.0.0.0/0",
///                         },
///                         Nfsv3 = AzureNative.NetApp.ElasticNfsv3Access.Enabled,
///                         Nfsv4 = AzureNative.NetApp.ElasticNfsv4Access.Disabled,
///                         RootAccess = AzureNative.NetApp.ElasticRootAccess.Disabled,
///                         RuleIndex = 1,
///                         UnixAccessRule = AzureNative.NetApp.ElasticUnixAccessRule.ReadOnly,
///                     },
///                 },
///             },
///             FilePath = "my-unique-file-path",
///             ProtocolTypes = new[]
///             {
///                 AzureNative.NetApp.ElasticProtocolType.NFSv3,
///             },
///             Size = 107374182400,
///         },
///         ResourceGroupName = "myRG",
///         VolumeName = "volume1",
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
/// 	netapp "github.com/pulumi/pulumi-azure-native-sdk/netapp/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewElasticVolume(ctx, "elasticVolume", &netapp.ElasticVolumeArgs{
/// 			AccountName: pulumi.String("account1"),
/// 			Location:    pulumi.String("eastus"),
/// 			PoolName:    pulumi.String("pool1"),
/// 			Properties: &netapp.ElasticVolumePropertiesArgs{
/// 				DataProtection: &netapp.ElasticVolumeDataProtectionPropertiesArgs{
/// 					Backup: &netapp.ElasticVolumeBackupPropertiesArgs{
/// 						ElasticBackupPolicyResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticBackupPolicies/elasticBackupPolicy1"),
/// 						ElasticBackupVaultResourceId:  pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticBackupVaults/elasticBackupVault1"),
/// 						PolicyEnforcement:             pulumi.String(netapp.ElasticVolumePolicyEnforcementEnforced),
/// 					},
/// 					Snapshot: &netapp.ElasticVolumeSnapshotPropertiesArgs{
/// 						SnapshotPolicyResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticSnapshotPolicies/policy1"),
/// 					},
/// 				},
/// 				ExportPolicy: &netapp.ElasticExportPolicyArgs{
/// 					Rules: netapp.ElasticExportPolicyRuleArray{
/// 						&netapp.ElasticExportPolicyRuleArgs{
/// 							AllowedClients: pulumi.StringArray{
/// 								pulumi.String("0.0.0.0/0"),
/// 							},
/// 							Nfsv3:          pulumi.String(netapp.ElasticNfsv3AccessEnabled),
/// 							Nfsv4:          pulumi.String(netapp.ElasticNfsv4AccessDisabled),
/// 							RootAccess:     pulumi.String(netapp.ElasticRootAccessDisabled),
/// 							RuleIndex:      pulumi.Int(1),
/// 							UnixAccessRule: pulumi.String(netapp.ElasticUnixAccessRuleReadOnly),
/// 						},
/// 					},
/// 				},
/// 				FilePath: pulumi.String("my-unique-file-path"),
/// 				ProtocolTypes: pulumi.StringArray{
/// 					pulumi.String(netapp.ElasticProtocolTypeNFSv3),
/// 				},
/// 				Size: pulumi.Float64(107374182400),
/// 			},
/// 			ResourceGroupName: pulumi.String("myRG"),
/// 			VolumeName:        pulumi.String("volume1"),
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
/// import com.pulumi.azurenative.netapp.ElasticVolume;
/// import com.pulumi.azurenative.netapp.ElasticVolumeArgs;
/// import com.pulumi.azurenative.netapp.inputs.ElasticVolumePropertiesArgs;
/// import com.pulumi.azurenative.netapp.inputs.ElasticVolumeDataProtectionPropertiesArgs;
/// import com.pulumi.azurenative.netapp.inputs.ElasticVolumeBackupPropertiesArgs;
/// import com.pulumi.azurenative.netapp.inputs.ElasticVolumeSnapshotPropertiesArgs;
/// import com.pulumi.azurenative.netapp.inputs.ElasticExportPolicyArgs;
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
///         var elasticVolume = new ElasticVolume("elasticVolume", ElasticVolumeArgs.builder()
///             .accountName("account1")
///             .location("eastus")
///             .poolName("pool1")
///             .properties(ElasticVolumePropertiesArgs.builder()
///                 .dataProtection(ElasticVolumeDataProtectionPropertiesArgs.builder()
///                     .backup(ElasticVolumeBackupPropertiesArgs.builder()
///                         .elasticBackupPolicyResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticBackupPolicies/elasticBackupPolicy1")
///                         .elasticBackupVaultResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticBackupVaults/elasticBackupVault1")
///                         .policyEnforcement("Enforced")
///                         .build())
///                     .snapshot(ElasticVolumeSnapshotPropertiesArgs.builder()
///                         .snapshotPolicyResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticSnapshotPolicies/policy1")
///                         .build())
///                     .build())
///                 .exportPolicy(ElasticExportPolicyArgs.builder()
///                     .rules(ElasticExportPolicyRuleArgs.builder()
///                         .allowedClients("0.0.0.0/0")
///                         .nfsv3("Enabled")
///                         .nfsv4("Disabled")
///                         .rootAccess("Disabled")
///                         .ruleIndex(1)
///                         .unixAccessRule("ReadOnly")
///                         .build())
///                     .build())
///                 .filePath("my-unique-file-path")
///                 .protocolTypes("NFSv3")
///                 .size(107374182400.0)
///                 .build())
///             .resourceGroupName("myRG")
///             .volumeName("volume1")
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
/// const elasticVolume = new azure_native.netapp.ElasticVolume("elasticVolume", {
///     accountName: "account1",
///     location: "eastus",
///     poolName: "pool1",
///     properties: {
///         dataProtection: {
///             backup: {
///                 elasticBackupPolicyResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticBackupPolicies/elasticBackupPolicy1",
///                 elasticBackupVaultResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticBackupVaults/elasticBackupVault1",
///                 policyEnforcement: azure_native.netapp.ElasticVolumePolicyEnforcement.Enforced,
///             },
///             snapshot: {
///                 snapshotPolicyResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticSnapshotPolicies/policy1",
///             },
///         },
///         exportPolicy: {
///             rules: [{
///                 allowedClients: ["0.0.0.0/0"],
///                 nfsv3: azure_native.netapp.ElasticNfsv3Access.Enabled,
///                 nfsv4: azure_native.netapp.ElasticNfsv4Access.Disabled,
///                 rootAccess: azure_native.netapp.ElasticRootAccess.Disabled,
///                 ruleIndex: 1,
///                 unixAccessRule: azure_native.netapp.ElasticUnixAccessRule.ReadOnly,
///             }],
///         },
///         filePath: "my-unique-file-path",
///         protocolTypes: [azure_native.netapp.ElasticProtocolType.NFSv3],
///         size: 107374182400,
///     },
///     resourceGroupName: "myRG",
///     volumeName: "volume1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_volume = azure_native.netapp.ElasticVolume("elasticVolume",
///     account_name="account1",
///     location="eastus",
///     pool_name="pool1",
///     properties={
///         "data_protection": {
///             "backup": {
///                 "elastic_backup_policy_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticBackupPolicies/elasticBackupPolicy1",
///                 "elastic_backup_vault_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticBackupVaults/elasticBackupVault1",
///                 "policy_enforcement": azure_native.netapp.ElasticVolumePolicyEnforcement.ENFORCED,
///             },
///             "snapshot": {
///                 "snapshot_policy_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticSnapshotPolicies/policy1",
///             },
///         },
///         "export_policy": {
///             "rules": [{
///                 "allowed_clients": ["0.0.0.0/0"],
///                 "nfsv3": azure_native.netapp.ElasticNfsv3Access.ENABLED,
///                 "nfsv4": azure_native.netapp.ElasticNfsv4Access.DISABLED,
///                 "root_access": azure_native.netapp.ElasticRootAccess.DISABLED,
///                 "rule_index": 1,
///                 "unix_access_rule": azure_native.netapp.ElasticUnixAccessRule.READ_ONLY,
///             }],
///         },
///         "file_path": "my-unique-file-path",
///         "protocol_types": [azure_native.netapp.ElasticProtocolType.NF_SV3],
///         "size": 107374182400,
///     },
///     resource_group_name="myRG",
///     volume_name="volume1")
///
/// ```
///
/// ```yaml
/// resources:
///   elasticVolume:
///     type: azure-native:netapp:ElasticVolume
///     properties:
///       accountName: account1
///       location: eastus
///       poolName: pool1
///       properties:
///         dataProtection:
///           backup:
///             elasticBackupPolicyResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticBackupPolicies/elasticBackupPolicy1
///             elasticBackupVaultResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticBackupVaults/elasticBackupVault1
///             policyEnforcement: Enforced
///           snapshot:
///             snapshotPolicyResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.NetApp/elasticAccounts/account1/elasticSnapshotPolicies/policy1
///         exportPolicy:
///           rules:
///             - allowedClients:
///                 - 0.0.0.0/0
///               nfsv3: Enabled
///               nfsv4: Disabled
///               rootAccess: Disabled
///               ruleIndex: 1
///               unixAccessRule: ReadOnly
///         filePath: my-unique-file-path
///         protocolTypes:
///           - NFSv3
///         size: 1.073741824e+11
///       resourceGroupName: myRG
///       volumeName: volume1
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
/// $ pulumi import azure-native:netapp:ElasticVolume account1/pool1/volume1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/elasticAccounts/{accountName}/elasticCapacityPools/{poolName}/elasticVolumes/{volumeName}
/// ```
class ElasticVolume extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ElasticVolumePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The availability zones.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [ElasticVolume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticVolume]. {@macro pulumi_netapp_elastic_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticVolume(
    String name, {
    ElasticVolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:ElasticVolume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.eTag = registerOutput<String>('eTag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ElasticVolumePropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.zones = registerOutput<List<String>?>('zones');
  }
}
