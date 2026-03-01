import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_instance_args.dart';
import 'backup_instance_response.dart';
import 'system_data_response.dart';

/// BackupInstance Resource
///
/// Uses Azure REST API version 2025-01-01. In version 2.x of the Azure Native provider, it used API version 2023-01-01.
///
/// Other available API versions: 2023-01-01, 2023-04-01-preview, 2023-05-01, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01, 2023-12-01, 2024-02-01-preview, 2024-03-01, 2024-04-01, 2025-02-01, 2025-07-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dataprotection [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create BackupInstance
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var backupInstance = new AzureNative.DataProtection.BackupInstance("backupInstance", new()
///     {
///         BackupInstanceName = "testInstance1",
///         Properties = new AzureNative.DataProtection.Inputs.BackupInstanceArgs
///         {
///             DataSourceInfo = new AzureNative.DataProtection.Inputs.DatasourceArgs
///             {
///                 DatasourceType = "Microsoft.DBforPostgreSQL/servers/databases",
///                 ObjectType = "Datasource",
///                 ResourceID = "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest/databases/testdb",
///                 ResourceLocation = "",
///                 ResourceName = "testdb",
///                 ResourceType = "Microsoft.DBforPostgreSQL/servers/databases",
///                 ResourceUri = "",
///             },
///             DataSourceSetInfo = new AzureNative.DataProtection.Inputs.DatasourceSetArgs
///             {
///                 DatasourceType = "Microsoft.DBforPostgreSQL/servers/databases",
///                 ObjectType = "DatasourceSet",
///                 ResourceID = "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest",
///                 ResourceLocation = "",
///                 ResourceName = "viveksipgtest",
///                 ResourceType = "Microsoft.DBforPostgreSQL/servers",
///                 ResourceUri = "",
///             },
///             DatasourceAuthCredentials = new AzureNative.DataProtection.Inputs.SecretStoreBasedAuthCredentialsArgs
///             {
///                 ObjectType = "SecretStoreBasedAuthCredentials",
///                 SecretStoreResource = new AzureNative.DataProtection.Inputs.SecretStoreResourceArgs
///                 {
///                     SecretStoreType = AzureNative.DataProtection.SecretStoreType.AzureKeyVault,
///                     Uri = "https://samplevault.vault.azure.net/secrets/credentials",
///                 },
///             },
///             FriendlyName = "harshitbi2",
///             IdentityDetails = new AzureNative.DataProtection.Inputs.IdentityDetailsArgs
///             {
///                 UseSystemAssignedIdentity = false,
///                 UserAssignedIdentityArmUrl = "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourcegroups/rg-name/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testUami",
///             },
///             ObjectType = "BackupInstance",
///             PolicyInfo = new AzureNative.DataProtection.Inputs.PolicyInfoArgs
///             {
///                 PolicyId = "/subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/000pikumar/providers/Microsoft.DataProtection/Backupvaults/PratikPrivatePreviewVault1/backupPolicies/PratikPolicy1",
///                 PolicyParameters = new AzureNative.DataProtection.Inputs.PolicyParametersArgs
///                 {
///                     DataStoreParametersList = new[]
///                     {
///                         new AzureNative.DataProtection.Inputs.AzureOperationalStoreParametersArgs
///                         {
///                             DataStoreType = AzureNative.DataProtection.DataStoreTypes.OperationalStore,
///                             ObjectType = "AzureOperationalStoreParameters",
///                             ResourceGroupId = "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest",
///                         },
///                     },
///                 },
///             },
///             ValidationType = AzureNative.DataProtection.ValidationType.ShallowValidation,
///         },
///         ResourceGroupName = "000pikumar",
///         Tags =
///         {
///             { "key1", "val1" },
///         },
///         VaultName = "PratikPrivatePreviewVault1",
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
/// 	dataprotection "github.com/pulumi/pulumi-azure-native-sdk/dataprotection/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataprotection.NewBackupInstance(ctx, "backupInstance", &dataprotection.BackupInstanceArgs{
/// 			BackupInstanceName: pulumi.String("testInstance1"),
/// 			Properties: &dataprotection.BackupInstanceTypeArgs{
/// 				DataSourceInfo: &dataprotection.DatasourceArgs{
/// 					DatasourceType:   pulumi.String("Microsoft.DBforPostgreSQL/servers/databases"),
/// 					ObjectType:       pulumi.String("Datasource"),
/// 					ResourceID:       pulumi.String("/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest/databases/testdb"),
/// 					ResourceLocation: pulumi.String(""),
/// 					ResourceName:     pulumi.String("testdb"),
/// 					ResourceType:     pulumi.String("Microsoft.DBforPostgreSQL/servers/databases"),
/// 					ResourceUri:      pulumi.String(""),
/// 				},
/// 				DataSourceSetInfo: &dataprotection.DatasourceSetArgs{
/// 					DatasourceType:   pulumi.String("Microsoft.DBforPostgreSQL/servers/databases"),
/// 					ObjectType:       pulumi.String("DatasourceSet"),
/// 					ResourceID:       pulumi.String("/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest"),
/// 					ResourceLocation: pulumi.String(""),
/// 					ResourceName:     pulumi.String("viveksipgtest"),
/// 					ResourceType:     pulumi.String("Microsoft.DBforPostgreSQL/servers"),
/// 					ResourceUri:      pulumi.String(""),
/// 				},
/// 				DatasourceAuthCredentials: &dataprotection.SecretStoreBasedAuthCredentialsArgs{
/// 					ObjectType: pulumi.String("SecretStoreBasedAuthCredentials"),
/// 					SecretStoreResource: &dataprotection.SecretStoreResourceArgs{
/// 						SecretStoreType: pulumi.String(dataprotection.SecretStoreTypeAzureKeyVault),
/// 						Uri:             pulumi.String("https://samplevault.vault.azure.net/secrets/credentials"),
/// 					},
/// 				},
/// 				FriendlyName: pulumi.String("harshitbi2"),
/// 				IdentityDetails: &dataprotection.IdentityDetailsArgs{
/// 					UseSystemAssignedIdentity:  pulumi.Bool(false),
/// 					UserAssignedIdentityArmUrl: pulumi.String("/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourcegroups/rg-name/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testUami"),
/// 				},
/// 				ObjectType: pulumi.String("BackupInstance"),
/// 				PolicyInfo: &dataprotection.PolicyInfoArgs{
/// 					PolicyId: pulumi.String("/subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/000pikumar/providers/Microsoft.DataProtection/Backupvaults/PratikPrivatePreviewVault1/backupPolicies/PratikPolicy1"),
/// 					PolicyParameters: &dataprotection.PolicyParametersArgs{
/// 						DataStoreParametersList: dataprotection.AzureOperationalStoreParametersArray{
/// 							&dataprotection.AzureOperationalStoreParametersArgs{
/// 								DataStoreType:   pulumi.String(dataprotection.DataStoreTypesOperationalStore),
/// 								ObjectType:      pulumi.String("AzureOperationalStoreParameters"),
/// 								ResourceGroupId: pulumi.String("/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				ValidationType: pulumi.String(dataprotection.ValidationTypeShallowValidation),
/// 			},
/// 			ResourceGroupName: pulumi.String("000pikumar"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 			},
/// 			VaultName: pulumi.String("PratikPrivatePreviewVault1"),
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
/// import com.pulumi.azurenative.dataprotection.BackupInstance;
/// import com.pulumi.azurenative.dataprotection.inputs.DatasourceArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.DatasourceSetArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.SecretStoreBasedAuthCredentialsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.SecretStoreResourceArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.IdentityDetailsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.PolicyInfoArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.PolicyParametersArgs;
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
///         var backupInstance = new BackupInstance("backupInstance", BackupInstanceArgs.builder()
///             .backupInstanceName("testInstance1")
///             .properties(BackupInstanceArgs.builder()
///                 .dataSourceInfo(DatasourceArgs.builder()
///                     .datasourceType("Microsoft.DBforPostgreSQL/servers/databases")
///                     .objectType("Datasource")
///                     .resourceID("/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest/databases/testdb")
///                     .resourceLocation("")
///                     .resourceName("testdb")
///                     .resourceType("Microsoft.DBforPostgreSQL/servers/databases")
///                     .resourceUri("")
///                     .build())
///                 .dataSourceSetInfo(DatasourceSetArgs.builder()
///                     .datasourceType("Microsoft.DBforPostgreSQL/servers/databases")
///                     .objectType("DatasourceSet")
///                     .resourceID("/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest")
///                     .resourceLocation("")
///                     .resourceName("viveksipgtest")
///                     .resourceType("Microsoft.DBforPostgreSQL/servers")
///                     .resourceUri("")
///                     .build())
///                 .datasourceAuthCredentials(Map.ofEntries(
///                     Map.entry("objectType", "SecretStoreBasedAuthCredentials"),
///                     Map.entry("secretStoreResource", SecretStoreResourceArgs.builder()
///                         .secretStoreType("AzureKeyVault")
///                         .uri("https://samplevault.vault.azure.net/secrets/credentials")
///                         .build())
///                 ))
///                 .friendlyName("harshitbi2")
///                 .identityDetails(IdentityDetailsArgs.builder()
///                     .useSystemAssignedIdentity(false)
///                     .userAssignedIdentityArmUrl("/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourcegroups/rg-name/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testUami")
///                     .build())
///                 .objectType("BackupInstance")
///                 .policyInfo(PolicyInfoArgs.builder()
///                     .policyId("/subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/000pikumar/providers/Microsoft.DataProtection/Backupvaults/PratikPrivatePreviewVault1/backupPolicies/PratikPolicy1")
///                     .policyParameters(PolicyParametersArgs.builder()
///                         .dataStoreParametersList(Map.ofEntries(
///                             Map.entry("dataStoreType", "OperationalStore"),
///                             Map.entry("objectType", "AzureOperationalStoreParameters"),
///                             Map.entry("resourceGroupId", "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest")
///                         ))
///                         .build())
///                     .build())
///                 .validationType("ShallowValidation")
///                 .build())
///             .resourceGroupName("000pikumar")
///             .tags(Map.of("key1", "val1"))
///             .vaultName("PratikPrivatePreviewVault1")
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
/// const backupInstance = new azure_native.dataprotection.BackupInstance("backupInstance", {
///     backupInstanceName: "testInstance1",
///     properties: {
///         dataSourceInfo: {
///             datasourceType: "Microsoft.DBforPostgreSQL/servers/databases",
///             objectType: "Datasource",
///             resourceID: "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest/databases/testdb",
///             resourceLocation: "",
///             resourceName: "testdb",
///             resourceType: "Microsoft.DBforPostgreSQL/servers/databases",
///             resourceUri: "",
///         },
///         dataSourceSetInfo: {
///             datasourceType: "Microsoft.DBforPostgreSQL/servers/databases",
///             objectType: "DatasourceSet",
///             resourceID: "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest",
///             resourceLocation: "",
///             resourceName: "viveksipgtest",
///             resourceType: "Microsoft.DBforPostgreSQL/servers",
///             resourceUri: "",
///         },
///         datasourceAuthCredentials: {
///             objectType: "SecretStoreBasedAuthCredentials",
///             secretStoreResource: {
///                 secretStoreType: azure_native.dataprotection.SecretStoreType.AzureKeyVault,
///                 uri: "https://samplevault.vault.azure.net/secrets/credentials",
///             },
///         },
///         friendlyName: "harshitbi2",
///         identityDetails: {
///             useSystemAssignedIdentity: false,
///             userAssignedIdentityArmUrl: "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourcegroups/rg-name/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testUami",
///         },
///         objectType: "BackupInstance",
///         policyInfo: {
///             policyId: "/subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/000pikumar/providers/Microsoft.DataProtection/Backupvaults/PratikPrivatePreviewVault1/backupPolicies/PratikPolicy1",
///             policyParameters: {
///                 dataStoreParametersList: [{
///                     dataStoreType: azure_native.dataprotection.DataStoreTypes.OperationalStore,
///                     objectType: "AzureOperationalStoreParameters",
///                     resourceGroupId: "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest",
///                 }],
///             },
///         },
///         validationType: azure_native.dataprotection.ValidationType.ShallowValidation,
///     },
///     resourceGroupName: "000pikumar",
///     tags: {
///         key1: "val1",
///     },
///     vaultName: "PratikPrivatePreviewVault1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// backup_instance = azure_native.dataprotection.BackupInstance("backupInstance",
///     backup_instance_name="testInstance1",
///     properties={
///         "data_source_info": {
///             "datasource_type": "Microsoft.DBforPostgreSQL/servers/databases",
///             "object_type": "Datasource",
///             "resource_id": "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest/databases/testdb",
///             "resource_location": "",
///             "resource_name": "testdb",
///             "resource_type": "Microsoft.DBforPostgreSQL/servers/databases",
///             "resource_uri": "",
///         },
///         "data_source_set_info": {
///             "datasource_type": "Microsoft.DBforPostgreSQL/servers/databases",
///             "object_type": "DatasourceSet",
///             "resource_id": "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest",
///             "resource_location": "",
///             "resource_name": "viveksipgtest",
///             "resource_type": "Microsoft.DBforPostgreSQL/servers",
///             "resource_uri": "",
///         },
///         "datasource_auth_credentials": {
///             "object_type": "SecretStoreBasedAuthCredentials",
///             "secret_store_resource": {
///                 "secret_store_type": azure_native.dataprotection.SecretStoreType.AZURE_KEY_VAULT,
///                 "uri": "https://samplevault.vault.azure.net/secrets/credentials",
///             },
///         },
///         "friendly_name": "harshitbi2",
///         "identity_details": {
///             "use_system_assigned_identity": False,
///             "user_assigned_identity_arm_url": "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourcegroups/rg-name/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testUami",
///         },
///         "object_type": "BackupInstance",
///         "policy_info": {
///             "policy_id": "/subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/000pikumar/providers/Microsoft.DataProtection/Backupvaults/PratikPrivatePreviewVault1/backupPolicies/PratikPolicy1",
///             "policy_parameters": {
///                 "data_store_parameters_list": [{
///                     "data_store_type": azure_native.dataprotection.DataStoreTypes.OPERATIONAL_STORE,
///                     "object_type": "AzureOperationalStoreParameters",
///                     "resource_group_id": "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest",
///                 }],
///             },
///         },
///         "validation_type": azure_native.dataprotection.ValidationType.SHALLOW_VALIDATION,
///     },
///     resource_group_name="000pikumar",
///     tags={
///         "key1": "val1",
///     },
///     vault_name="PratikPrivatePreviewVault1")
///
/// ```
///
/// ```yaml
/// resources:
///   backupInstance:
///     type: azure-native:dataprotection:BackupInstance
///     properties:
///       backupInstanceName: testInstance1
///       properties:
///         dataSourceInfo:
///           datasourceType: Microsoft.DBforPostgreSQL/servers/databases
///           objectType: Datasource
///           resourceID: /subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest/databases/testdb
///           resourceLocation: ""
///           resourceName: testdb
///           resourceType: Microsoft.DBforPostgreSQL/servers/databases
///           resourceUri: ""
///         dataSourceSetInfo:
///           datasourceType: Microsoft.DBforPostgreSQL/servers/databases
///           objectType: DatasourceSet
///           resourceID: /subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest
///           resourceLocation: ""
///           resourceName: viveksipgtest
///           resourceType: Microsoft.DBforPostgreSQL/servers
///           resourceUri: ""
///         datasourceAuthCredentials:
///           objectType: SecretStoreBasedAuthCredentials
///           secretStoreResource:
///             secretStoreType: AzureKeyVault
///             uri: https://samplevault.vault.azure.net/secrets/credentials
///         friendlyName: harshitbi2
///         identityDetails:
///           useSystemAssignedIdentity: false
///           userAssignedIdentityArmUrl: /subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourcegroups/rg-name/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testUami
///         objectType: BackupInstance
///         policyInfo:
///           policyId: /subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/000pikumar/providers/Microsoft.DataProtection/Backupvaults/PratikPrivatePreviewVault1/backupPolicies/PratikPolicy1
///           policyParameters:
///             dataStoreParametersList:
///               - dataStoreType: OperationalStore
///                 objectType: AzureOperationalStoreParameters
///                 resourceGroupId: /subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest
///         validationType: ShallowValidation
///       resourceGroupName: 000pikumar
///       tags:
///         key1: val1
///       vaultName: PratikPrivatePreviewVault1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create BackupInstance With KubernetesClusterBackupDatasourceParameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var backupInstance = new AzureNative.DataProtection.BackupInstance("backupInstance", new()
///     {
///         BackupInstanceName = "aksbi",
///         Properties = new AzureNative.DataProtection.Inputs.BackupInstanceArgs
///         {
///             DataSourceInfo = new AzureNative.DataProtection.Inputs.DatasourceArgs
///             {
///                 DatasourceType = "Microsoft.ContainerService/managedclusters",
///                 ObjectType = "Datasource",
///                 ResourceID = "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster",
///                 ResourceLocation = "eastus2euap",
///                 ResourceName = "akscluster",
///                 ResourceType = "Microsoft.ContainerService/managedclusters",
///                 ResourceUri = "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster",
///             },
///             DataSourceSetInfo = new AzureNative.DataProtection.Inputs.DatasourceSetArgs
///             {
///                 DatasourceType = "Microsoft.ContainerService/managedclusters",
///                 ObjectType = "DatasourceSet",
///                 ResourceID = "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster",
///                 ResourceLocation = "eastus2euap",
///                 ResourceName = "akscluster",
///                 ResourceType = "Microsoft.ContainerService/managedclusters",
///                 ResourceUri = "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster",
///             },
///             FriendlyName = "aksbi",
///             ObjectType = "BackupInstance",
///             PolicyInfo = new AzureNative.DataProtection.Inputs.PolicyInfoArgs
///             {
///                 PolicyId = "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourcegroups/aksrg/providers/Microsoft.DataProtection/BackupVaults/aksvault/backupPolicies/akspolicy",
///                 PolicyParameters = new AzureNative.DataProtection.Inputs.PolicyParametersArgs
///                 {
///                     BackupDatasourceParametersList = new[]
///                     {
///                         new AzureNative.DataProtection.Inputs.KubernetesClusterBackupDatasourceParametersArgs
///                         {
///                             ExcludedNamespaces = new[]
///                             {
///                                 "kube-system",
///                             },
///                             ExcludedResourceTypes = new[]
///                             {
///                                 "v1/Secret",
///                             },
///                             IncludeClusterScopeResources = true,
///                             IncludedNamespaces = new[]
///                             {
///                                 "test",
///                             },
///                             IncludedResourceTypes = new() { },
///                             IncludedVolumeTypes = new[]
///                             {
///                                 AzureNative.DataProtection.AKSVolumeTypes.AzureDisk,
///                                 AzureNative.DataProtection.AKSVolumeTypes.AzureFileShareSMB,
///                             },
///                             LabelSelectors = new() { },
///                             ObjectType = "KubernetesClusterBackupDatasourceParameters",
///                             SnapshotVolumes = true,
///                         },
///                     },
///                     DataStoreParametersList = new[]
///                     {
///                         new AzureNative.DataProtection.Inputs.AzureOperationalStoreParametersArgs
///                         {
///                             DataStoreType = AzureNative.DataProtection.DataStoreTypes.OperationalStore,
///                             ObjectType = "AzureOperationalStoreParameters",
///                             ResourceGroupId = "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg",
///                         },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "aksrg",
///         Tags =
///         {
///             { "key1", "val1" },
///         },
///         VaultName = "aksvault",
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
/// 	dataprotection "github.com/pulumi/pulumi-azure-native-sdk/dataprotection/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataprotection.NewBackupInstance(ctx, "backupInstance", &dataprotection.BackupInstanceArgs{
/// 			BackupInstanceName: pulumi.String("aksbi"),
/// 			Properties: &dataprotection.BackupInstanceTypeArgs{
/// 				DataSourceInfo: &dataprotection.DatasourceArgs{
/// 					DatasourceType:   pulumi.String("Microsoft.ContainerService/managedclusters"),
/// 					ObjectType:       pulumi.String("Datasource"),
/// 					ResourceID:       pulumi.String("/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster"),
/// 					ResourceLocation: pulumi.String("eastus2euap"),
/// 					ResourceName:     pulumi.String("akscluster"),
/// 					ResourceType:     pulumi.String("Microsoft.ContainerService/managedclusters"),
/// 					ResourceUri:      pulumi.String("/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster"),
/// 				},
/// 				DataSourceSetInfo: &dataprotection.DatasourceSetArgs{
/// 					DatasourceType:   pulumi.String("Microsoft.ContainerService/managedclusters"),
/// 					ObjectType:       pulumi.String("DatasourceSet"),
/// 					ResourceID:       pulumi.String("/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster"),
/// 					ResourceLocation: pulumi.String("eastus2euap"),
/// 					ResourceName:     pulumi.String("akscluster"),
/// 					ResourceType:     pulumi.String("Microsoft.ContainerService/managedclusters"),
/// 					ResourceUri:      pulumi.String("/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster"),
/// 				},
/// 				FriendlyName: pulumi.String("aksbi"),
/// 				ObjectType:   pulumi.String("BackupInstance"),
/// 				PolicyInfo: &dataprotection.PolicyInfoArgs{
/// 					PolicyId: pulumi.String("/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourcegroups/aksrg/providers/Microsoft.DataProtection/BackupVaults/aksvault/backupPolicies/akspolicy"),
/// 					PolicyParameters: &dataprotection.PolicyParametersArgs{
/// 						BackupDatasourceParametersList: pulumi.Array{
/// 							dataprotection.KubernetesClusterBackupDatasourceParameters{
/// 								ExcludedNamespaces: []string{
/// 									"kube-system",
/// 								},
/// 								ExcludedResourceTypes: []string{
/// 									"v1/Secret",
/// 								},
/// 								IncludeClusterScopeResources: true,
/// 								IncludedNamespaces: []string{
/// 									"test",
/// 								},
/// 								IncludedResourceTypes: []interface{}{},
/// 								IncludedVolumeTypes: []dataprotection.AKSVolumeTypes{
/// 									dataprotection.AKSVolumeTypesAzureDisk,
/// 									dataprotection.AKSVolumeTypesAzureFileShareSMB,
/// 								},
/// 								LabelSelectors:  []interface{}{},
/// 								ObjectType:      "KubernetesClusterBackupDatasourceParameters",
/// 								SnapshotVolumes: true,
/// 							},
/// 						},
/// 						DataStoreParametersList: dataprotection.AzureOperationalStoreParametersArray{
/// 							&dataprotection.AzureOperationalStoreParametersArgs{
/// 								DataStoreType:   pulumi.String(dataprotection.DataStoreTypesOperationalStore),
/// 								ObjectType:      pulumi.String("AzureOperationalStoreParameters"),
/// 								ResourceGroupId: pulumi.String("/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("aksrg"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 			},
/// 			VaultName: pulumi.String("aksvault"),
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
/// import com.pulumi.azurenative.dataprotection.BackupInstance;
/// import com.pulumi.azurenative.dataprotection.inputs.DatasourceArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.DatasourceSetArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.PolicyInfoArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.PolicyParametersArgs;
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
///         var backupInstance = new BackupInstance("backupInstance", BackupInstanceArgs.builder()
///             .backupInstanceName("aksbi")
///             .properties(BackupInstanceArgs.builder()
///                 .dataSourceInfo(DatasourceArgs.builder()
///                     .datasourceType("Microsoft.ContainerService/managedclusters")
///                     .objectType("Datasource")
///                     .resourceID("/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster")
///                     .resourceLocation("eastus2euap")
///                     .resourceName("akscluster")
///                     .resourceType("Microsoft.ContainerService/managedclusters")
///                     .resourceUri("/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster")
///                     .build())
///                 .dataSourceSetInfo(DatasourceSetArgs.builder()
///                     .datasourceType("Microsoft.ContainerService/managedclusters")
///                     .objectType("DatasourceSet")
///                     .resourceID("/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster")
///                     .resourceLocation("eastus2euap")
///                     .resourceName("akscluster")
///                     .resourceType("Microsoft.ContainerService/managedclusters")
///                     .resourceUri("/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster")
///                     .build())
///                 .friendlyName("aksbi")
///                 .objectType("BackupInstance")
///                 .policyInfo(PolicyInfoArgs.builder()
///                     .policyId("/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourcegroups/aksrg/providers/Microsoft.DataProtection/BackupVaults/aksvault/backupPolicies/akspolicy")
///                     .policyParameters(PolicyParametersArgs.builder()
///                         .backupDatasourceParametersList(KubernetesClusterBackupDatasourceParametersArgs.builder()
///                             .excludedNamespaces("kube-system")
///                             .excludedResourceTypes("v1/Secret")
///                             .includeClusterScopeResources(true)
///                             .includedNamespaces("test")
///                             .includedResourceTypes()
///                             .includedVolumeTypes(
///                                 "AzureDisk",
///                                 "AzureFileShareSMB")
///                             .labelSelectors()
///                             .objectType("KubernetesClusterBackupDatasourceParameters")
///                             .snapshotVolumes(true)
///                             .build())
///                         .dataStoreParametersList(Map.ofEntries(
///                             Map.entry("dataStoreType", "OperationalStore"),
///                             Map.entry("objectType", "AzureOperationalStoreParameters"),
///                             Map.entry("resourceGroupId", "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg")
///                         ))
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("aksrg")
///             .tags(Map.of("key1", "val1"))
///             .vaultName("aksvault")
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
/// const backupInstance = new azure_native.dataprotection.BackupInstance("backupInstance", {
///     backupInstanceName: "aksbi",
///     properties: {
///         dataSourceInfo: {
///             datasourceType: "Microsoft.ContainerService/managedclusters",
///             objectType: "Datasource",
///             resourceID: "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster",
///             resourceLocation: "eastus2euap",
///             resourceName: "akscluster",
///             resourceType: "Microsoft.ContainerService/managedclusters",
///             resourceUri: "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster",
///         },
///         dataSourceSetInfo: {
///             datasourceType: "Microsoft.ContainerService/managedclusters",
///             objectType: "DatasourceSet",
///             resourceID: "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster",
///             resourceLocation: "eastus2euap",
///             resourceName: "akscluster",
///             resourceType: "Microsoft.ContainerService/managedclusters",
///             resourceUri: "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster",
///         },
///         friendlyName: "aksbi",
///         objectType: "BackupInstance",
///         policyInfo: {
///             policyId: "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourcegroups/aksrg/providers/Microsoft.DataProtection/BackupVaults/aksvault/backupPolicies/akspolicy",
///             policyParameters: {
///                 backupDatasourceParametersList: [{
///                     excludedNamespaces: ["kube-system"],
///                     excludedResourceTypes: ["v1/Secret"],
///                     includeClusterScopeResources: true,
///                     includedNamespaces: ["test"],
///                     includedResourceTypes: [],
///                     includedVolumeTypes: [
///                         azure_native.dataprotection.AKSVolumeTypes.AzureDisk,
///                         azure_native.dataprotection.AKSVolumeTypes.AzureFileShareSMB,
///                     ],
///                     labelSelectors: [],
///                     objectType: "KubernetesClusterBackupDatasourceParameters",
///                     snapshotVolumes: true,
///                 }],
///                 dataStoreParametersList: [{
///                     dataStoreType: azure_native.dataprotection.DataStoreTypes.OperationalStore,
///                     objectType: "AzureOperationalStoreParameters",
///                     resourceGroupId: "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg",
///                 }],
///             },
///         },
///     },
///     resourceGroupName: "aksrg",
///     tags: {
///         key1: "val1",
///     },
///     vaultName: "aksvault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// backup_instance = azure_native.dataprotection.BackupInstance("backupInstance",
///     backup_instance_name="aksbi",
///     properties={
///         "data_source_info": {
///             "datasource_type": "Microsoft.ContainerService/managedclusters",
///             "object_type": "Datasource",
///             "resource_id": "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster",
///             "resource_location": "eastus2euap",
///             "resource_name": "akscluster",
///             "resource_type": "Microsoft.ContainerService/managedclusters",
///             "resource_uri": "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster",
///         },
///         "data_source_set_info": {
///             "datasource_type": "Microsoft.ContainerService/managedclusters",
///             "object_type": "DatasourceSet",
///             "resource_id": "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster",
///             "resource_location": "eastus2euap",
///             "resource_name": "akscluster",
///             "resource_type": "Microsoft.ContainerService/managedclusters",
///             "resource_uri": "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster",
///         },
///         "friendly_name": "aksbi",
///         "object_type": "BackupInstance",
///         "policy_info": {
///             "policy_id": "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourcegroups/aksrg/providers/Microsoft.DataProtection/BackupVaults/aksvault/backupPolicies/akspolicy",
///             "policy_parameters": {
///                 "backup_datasource_parameters_list": [{
///                     "excluded_namespaces": ["kube-system"],
///                     "excluded_resource_types": ["v1/Secret"],
///                     "include_cluster_scope_resources": True,
///                     "included_namespaces": ["test"],
///                     "included_resource_types": [],
///                     "included_volume_types": [
///                         azure_native.dataprotection.AKSVolumeTypes.AZURE_DISK,
///                         azure_native.dataprotection.AKSVolumeTypes.AZURE_FILE_SHARE_SMB,
///                     ],
///                     "label_selectors": [],
///                     "object_type": "KubernetesClusterBackupDatasourceParameters",
///                     "snapshot_volumes": True,
///                 }],
///                 "data_store_parameters_list": [{
///                     "data_store_type": azure_native.dataprotection.DataStoreTypes.OPERATIONAL_STORE,
///                     "object_type": "AzureOperationalStoreParameters",
///                     "resource_group_id": "/subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg",
///                 }],
///             },
///         },
///     },
///     resource_group_name="aksrg",
///     tags={
///         "key1": "val1",
///     },
///     vault_name="aksvault")
///
/// ```
///
/// ```yaml
/// resources:
///   backupInstance:
///     type: azure-native:dataprotection:BackupInstance
///     properties:
///       backupInstanceName: aksbi
///       properties:
///         dataSourceInfo:
///           datasourceType: Microsoft.ContainerService/managedclusters
///           objectType: Datasource
///           resourceID: /subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster
///           resourceLocation: eastus2euap
///           resourceName: akscluster
///           resourceType: Microsoft.ContainerService/managedclusters
///           resourceUri: /subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster
///         dataSourceSetInfo:
///           datasourceType: Microsoft.ContainerService/managedclusters
///           objectType: DatasourceSet
///           resourceID: /subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster
///           resourceLocation: eastus2euap
///           resourceName: akscluster
///           resourceType: Microsoft.ContainerService/managedclusters
///           resourceUri: /subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg/providers/Microsoft.ContainerService/managedClusters/akscluster
///         friendlyName: aksbi
///         objectType: BackupInstance
///         policyInfo:
///           policyId: /subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourcegroups/aksrg/providers/Microsoft.DataProtection/BackupVaults/aksvault/backupPolicies/akspolicy
///           policyParameters:
///             backupDatasourceParametersList:
///               - excludedNamespaces:
///                   - kube-system
///                 excludedResourceTypes:
///                   - v1/Secret
///                 includeClusterScopeResources: true
///                 includedNamespaces:
///                   - test
///                 includedResourceTypes: []
///                 includedVolumeTypes:
///                   - AzureDisk
///                   - AzureFileShareSMB
///                 labelSelectors: []
///                 objectType: KubernetesClusterBackupDatasourceParameters
///                 snapshotVolumes: true
///             dataStoreParametersList:
///               - dataStoreType: OperationalStore
///                 objectType: AzureOperationalStoreParameters
///                 resourceGroupId: /subscriptions/62b829ee-7936-40c9-a1c9-47a93f9f3965/resourceGroups/aksrg
///       resourceGroupName: aksrg
///       tags:
///         key1: val1
///       vaultName: aksvault
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create BackupInstance to perform critical operation With MUA
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var backupInstance = new AzureNative.DataProtection.BackupInstance("backupInstance", new()
///     {
///         BackupInstanceName = "testInstance1",
///         Properties = new AzureNative.DataProtection.Inputs.BackupInstanceArgs
///         {
///             DataSourceInfo = new AzureNative.DataProtection.Inputs.DatasourceArgs
///             {
///                 DatasourceType = "Microsoft.DBforPostgreSQL/servers/databases",
///                 ObjectType = "Datasource",
///                 ResourceID = "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest/databases/testdb",
///                 ResourceLocation = "",
///                 ResourceName = "testdb",
///                 ResourceType = "Microsoft.DBforPostgreSQL/servers/databases",
///                 ResourceUri = "",
///             },
///             DataSourceSetInfo = new AzureNative.DataProtection.Inputs.DatasourceSetArgs
///             {
///                 DatasourceType = "Microsoft.DBforPostgreSQL/servers/databases",
///                 ObjectType = "DatasourceSet",
///                 ResourceID = "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest",
///                 ResourceLocation = "",
///                 ResourceName = "viveksipgtest",
///                 ResourceType = "Microsoft.DBforPostgreSQL/servers",
///                 ResourceUri = "",
///             },
///             DatasourceAuthCredentials = new AzureNative.DataProtection.Inputs.SecretStoreBasedAuthCredentialsArgs
///             {
///                 ObjectType = "SecretStoreBasedAuthCredentials",
///                 SecretStoreResource = new AzureNative.DataProtection.Inputs.SecretStoreResourceArgs
///                 {
///                     SecretStoreType = AzureNative.DataProtection.SecretStoreType.AzureKeyVault,
///                     Uri = "https://samplevault.vault.azure.net/secrets/credentials",
///                 },
///             },
///             FriendlyName = "harshitbi2",
///             ObjectType = "BackupInstance",
///             PolicyInfo = new AzureNative.DataProtection.Inputs.PolicyInfoArgs
///             {
///                 PolicyId = "/subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/000pikumar/providers/Microsoft.DataProtection/Backupvaults/PratikPrivatePreviewVault1/backupPolicies/PratikPolicy1",
///                 PolicyParameters = new AzureNative.DataProtection.Inputs.PolicyParametersArgs
///                 {
///                     DataStoreParametersList = new[]
///                     {
///                         new AzureNative.DataProtection.Inputs.AzureOperationalStoreParametersArgs
///                         {
///                             DataStoreType = AzureNative.DataProtection.DataStoreTypes.OperationalStore,
///                             ObjectType = "AzureOperationalStoreParameters",
///                             ResourceGroupId = "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest",
///                         },
///                     },
///                 },
///             },
///             ResourceGuardOperationRequests = new[]
///             {
///                 "/subscriptions/38304e13-357e-405e-9e9a-220351dcce8c/resourcegroups/ankurResourceGuard1/providers/Microsoft.DataProtection/resourceGuards/ResourceGuard38-1/dppModifyPolicy/default",
///             },
///             ValidationType = AzureNative.DataProtection.ValidationType.ShallowValidation,
///         },
///         ResourceGroupName = "000pikumar",
///         Tags =
///         {
///             { "key1", "val1" },
///         },
///         VaultName = "PratikPrivatePreviewVault1",
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
/// 	dataprotection "github.com/pulumi/pulumi-azure-native-sdk/dataprotection/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataprotection.NewBackupInstance(ctx, "backupInstance", &dataprotection.BackupInstanceArgs{
/// 			BackupInstanceName: pulumi.String("testInstance1"),
/// 			Properties: &dataprotection.BackupInstanceTypeArgs{
/// 				DataSourceInfo: &dataprotection.DatasourceArgs{
/// 					DatasourceType:   pulumi.String("Microsoft.DBforPostgreSQL/servers/databases"),
/// 					ObjectType:       pulumi.String("Datasource"),
/// 					ResourceID:       pulumi.String("/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest/databases/testdb"),
/// 					ResourceLocation: pulumi.String(""),
/// 					ResourceName:     pulumi.String("testdb"),
/// 					ResourceType:     pulumi.String("Microsoft.DBforPostgreSQL/servers/databases"),
/// 					ResourceUri:      pulumi.String(""),
/// 				},
/// 				DataSourceSetInfo: &dataprotection.DatasourceSetArgs{
/// 					DatasourceType:   pulumi.String("Microsoft.DBforPostgreSQL/servers/databases"),
/// 					ObjectType:       pulumi.String("DatasourceSet"),
/// 					ResourceID:       pulumi.String("/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest"),
/// 					ResourceLocation: pulumi.String(""),
/// 					ResourceName:     pulumi.String("viveksipgtest"),
/// 					ResourceType:     pulumi.String("Microsoft.DBforPostgreSQL/servers"),
/// 					ResourceUri:      pulumi.String(""),
/// 				},
/// 				DatasourceAuthCredentials: &dataprotection.SecretStoreBasedAuthCredentialsArgs{
/// 					ObjectType: pulumi.String("SecretStoreBasedAuthCredentials"),
/// 					SecretStoreResource: &dataprotection.SecretStoreResourceArgs{
/// 						SecretStoreType: pulumi.String(dataprotection.SecretStoreTypeAzureKeyVault),
/// 						Uri:             pulumi.String("https://samplevault.vault.azure.net/secrets/credentials"),
/// 					},
/// 				},
/// 				FriendlyName: pulumi.String("harshitbi2"),
/// 				ObjectType:   pulumi.String("BackupInstance"),
/// 				PolicyInfo: &dataprotection.PolicyInfoArgs{
/// 					PolicyId: pulumi.String("/subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/000pikumar/providers/Microsoft.DataProtection/Backupvaults/PratikPrivatePreviewVault1/backupPolicies/PratikPolicy1"),
/// 					PolicyParameters: &dataprotection.PolicyParametersArgs{
/// 						DataStoreParametersList: dataprotection.AzureOperationalStoreParametersArray{
/// 							&dataprotection.AzureOperationalStoreParametersArgs{
/// 								DataStoreType:   pulumi.String(dataprotection.DataStoreTypesOperationalStore),
/// 								ObjectType:      pulumi.String("AzureOperationalStoreParameters"),
/// 								ResourceGroupId: pulumi.String("/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				ResourceGuardOperationRequests: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/38304e13-357e-405e-9e9a-220351dcce8c/resourcegroups/ankurResourceGuard1/providers/Microsoft.DataProtection/resourceGuards/ResourceGuard38-1/dppModifyPolicy/default"),
/// 				},
/// 				ValidationType: pulumi.String(dataprotection.ValidationTypeShallowValidation),
/// 			},
/// 			ResourceGroupName: pulumi.String("000pikumar"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 			},
/// 			VaultName: pulumi.String("PratikPrivatePreviewVault1"),
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
/// import com.pulumi.azurenative.dataprotection.BackupInstance;
/// import com.pulumi.azurenative.dataprotection.inputs.DatasourceArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.DatasourceSetArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.SecretStoreBasedAuthCredentialsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.SecretStoreResourceArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.PolicyInfoArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.PolicyParametersArgs;
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
///         var backupInstance = new BackupInstance("backupInstance", BackupInstanceArgs.builder()
///             .backupInstanceName("testInstance1")
///             .properties(BackupInstanceArgs.builder()
///                 .dataSourceInfo(DatasourceArgs.builder()
///                     .datasourceType("Microsoft.DBforPostgreSQL/servers/databases")
///                     .objectType("Datasource")
///                     .resourceID("/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest/databases/testdb")
///                     .resourceLocation("")
///                     .resourceName("testdb")
///                     .resourceType("Microsoft.DBforPostgreSQL/servers/databases")
///                     .resourceUri("")
///                     .build())
///                 .dataSourceSetInfo(DatasourceSetArgs.builder()
///                     .datasourceType("Microsoft.DBforPostgreSQL/servers/databases")
///                     .objectType("DatasourceSet")
///                     .resourceID("/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest")
///                     .resourceLocation("")
///                     .resourceName("viveksipgtest")
///                     .resourceType("Microsoft.DBforPostgreSQL/servers")
///                     .resourceUri("")
///                     .build())
///                 .datasourceAuthCredentials(Map.ofEntries(
///                     Map.entry("objectType", "SecretStoreBasedAuthCredentials"),
///                     Map.entry("secretStoreResource", SecretStoreResourceArgs.builder()
///                         .secretStoreType("AzureKeyVault")
///                         .uri("https://samplevault.vault.azure.net/secrets/credentials")
///                         .build())
///                 ))
///                 .friendlyName("harshitbi2")
///                 .objectType("BackupInstance")
///                 .policyInfo(PolicyInfoArgs.builder()
///                     .policyId("/subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/000pikumar/providers/Microsoft.DataProtection/Backupvaults/PratikPrivatePreviewVault1/backupPolicies/PratikPolicy1")
///                     .policyParameters(PolicyParametersArgs.builder()
///                         .dataStoreParametersList(Map.ofEntries(
///                             Map.entry("dataStoreType", "OperationalStore"),
///                             Map.entry("objectType", "AzureOperationalStoreParameters"),
///                             Map.entry("resourceGroupId", "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest")
///                         ))
///                         .build())
///                     .build())
///                 .resourceGuardOperationRequests("/subscriptions/38304e13-357e-405e-9e9a-220351dcce8c/resourcegroups/ankurResourceGuard1/providers/Microsoft.DataProtection/resourceGuards/ResourceGuard38-1/dppModifyPolicy/default")
///                 .validationType("ShallowValidation")
///                 .build())
///             .resourceGroupName("000pikumar")
///             .tags(Map.of("key1", "val1"))
///             .vaultName("PratikPrivatePreviewVault1")
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
/// const backupInstance = new azure_native.dataprotection.BackupInstance("backupInstance", {
///     backupInstanceName: "testInstance1",
///     properties: {
///         dataSourceInfo: {
///             datasourceType: "Microsoft.DBforPostgreSQL/servers/databases",
///             objectType: "Datasource",
///             resourceID: "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest/databases/testdb",
///             resourceLocation: "",
///             resourceName: "testdb",
///             resourceType: "Microsoft.DBforPostgreSQL/servers/databases",
///             resourceUri: "",
///         },
///         dataSourceSetInfo: {
///             datasourceType: "Microsoft.DBforPostgreSQL/servers/databases",
///             objectType: "DatasourceSet",
///             resourceID: "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest",
///             resourceLocation: "",
///             resourceName: "viveksipgtest",
///             resourceType: "Microsoft.DBforPostgreSQL/servers",
///             resourceUri: "",
///         },
///         datasourceAuthCredentials: {
///             objectType: "SecretStoreBasedAuthCredentials",
///             secretStoreResource: {
///                 secretStoreType: azure_native.dataprotection.SecretStoreType.AzureKeyVault,
///                 uri: "https://samplevault.vault.azure.net/secrets/credentials",
///             },
///         },
///         friendlyName: "harshitbi2",
///         objectType: "BackupInstance",
///         policyInfo: {
///             policyId: "/subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/000pikumar/providers/Microsoft.DataProtection/Backupvaults/PratikPrivatePreviewVault1/backupPolicies/PratikPolicy1",
///             policyParameters: {
///                 dataStoreParametersList: [{
///                     dataStoreType: azure_native.dataprotection.DataStoreTypes.OperationalStore,
///                     objectType: "AzureOperationalStoreParameters",
///                     resourceGroupId: "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest",
///                 }],
///             },
///         },
///         resourceGuardOperationRequests: ["/subscriptions/38304e13-357e-405e-9e9a-220351dcce8c/resourcegroups/ankurResourceGuard1/providers/Microsoft.DataProtection/resourceGuards/ResourceGuard38-1/dppModifyPolicy/default"],
///         validationType: azure_native.dataprotection.ValidationType.ShallowValidation,
///     },
///     resourceGroupName: "000pikumar",
///     tags: {
///         key1: "val1",
///     },
///     vaultName: "PratikPrivatePreviewVault1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// backup_instance = azure_native.dataprotection.BackupInstance("backupInstance",
///     backup_instance_name="testInstance1",
///     properties={
///         "data_source_info": {
///             "datasource_type": "Microsoft.DBforPostgreSQL/servers/databases",
///             "object_type": "Datasource",
///             "resource_id": "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest/databases/testdb",
///             "resource_location": "",
///             "resource_name": "testdb",
///             "resource_type": "Microsoft.DBforPostgreSQL/servers/databases",
///             "resource_uri": "",
///         },
///         "data_source_set_info": {
///             "datasource_type": "Microsoft.DBforPostgreSQL/servers/databases",
///             "object_type": "DatasourceSet",
///             "resource_id": "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest",
///             "resource_location": "",
///             "resource_name": "viveksipgtest",
///             "resource_type": "Microsoft.DBforPostgreSQL/servers",
///             "resource_uri": "",
///         },
///         "datasource_auth_credentials": {
///             "object_type": "SecretStoreBasedAuthCredentials",
///             "secret_store_resource": {
///                 "secret_store_type": azure_native.dataprotection.SecretStoreType.AZURE_KEY_VAULT,
///                 "uri": "https://samplevault.vault.azure.net/secrets/credentials",
///             },
///         },
///         "friendly_name": "harshitbi2",
///         "object_type": "BackupInstance",
///         "policy_info": {
///             "policy_id": "/subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/000pikumar/providers/Microsoft.DataProtection/Backupvaults/PratikPrivatePreviewVault1/backupPolicies/PratikPolicy1",
///             "policy_parameters": {
///                 "data_store_parameters_list": [{
///                     "data_store_type": azure_native.dataprotection.DataStoreTypes.OPERATIONAL_STORE,
///                     "object_type": "AzureOperationalStoreParameters",
///                     "resource_group_id": "/subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest",
///                 }],
///             },
///         },
///         "resource_guard_operation_requests": ["/subscriptions/38304e13-357e-405e-9e9a-220351dcce8c/resourcegroups/ankurResourceGuard1/providers/Microsoft.DataProtection/resourceGuards/ResourceGuard38-1/dppModifyPolicy/default"],
///         "validation_type": azure_native.dataprotection.ValidationType.SHALLOW_VALIDATION,
///     },
///     resource_group_name="000pikumar",
///     tags={
///         "key1": "val1",
///     },
///     vault_name="PratikPrivatePreviewVault1")
///
/// ```
///
/// ```yaml
/// resources:
///   backupInstance:
///     type: azure-native:dataprotection:BackupInstance
///     properties:
///       backupInstanceName: testInstance1
///       properties:
///         dataSourceInfo:
///           datasourceType: Microsoft.DBforPostgreSQL/servers/databases
///           objectType: Datasource
///           resourceID: /subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest/databases/testdb
///           resourceLocation: ""
///           resourceName: testdb
///           resourceType: Microsoft.DBforPostgreSQL/servers/databases
///           resourceUri: ""
///         dataSourceSetInfo:
///           datasourceType: Microsoft.DBforPostgreSQL/servers/databases
///           objectType: DatasourceSet
///           resourceID: /subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest/providers/Microsoft.DBforPostgreSQL/servers/viveksipgtest
///           resourceLocation: ""
///           resourceName: viveksipgtest
///           resourceType: Microsoft.DBforPostgreSQL/servers
///           resourceUri: ""
///         datasourceAuthCredentials:
///           objectType: SecretStoreBasedAuthCredentials
///           secretStoreResource:
///             secretStoreType: AzureKeyVault
///             uri: https://samplevault.vault.azure.net/secrets/credentials
///         friendlyName: harshitbi2
///         objectType: BackupInstance
///         policyInfo:
///           policyId: /subscriptions/04cf684a-d41f-4550-9f70-7708a3a2283b/resourceGroups/000pikumar/providers/Microsoft.DataProtection/Backupvaults/PratikPrivatePreviewVault1/backupPolicies/PratikPolicy1
///           policyParameters:
///             dataStoreParametersList:
///               - dataStoreType: OperationalStore
///                 objectType: AzureOperationalStoreParameters
///                 resourceGroupId: /subscriptions/f75d8d8b-6735-4697-82e1-1a7a3ff0d5d4/resourceGroups/viveksipgtest
///         resourceGuardOperationRequests:
///           - /subscriptions/38304e13-357e-405e-9e9a-220351dcce8c/resourcegroups/ankurResourceGuard1/providers/Microsoft.DataProtection/resourceGuards/ResourceGuard38-1/dppModifyPolicy/default
///         validationType: ShallowValidation
///       resourceGroupName: 000pikumar
///       tags:
///         key1: val1
///       vaultName: PratikPrivatePreviewVault1
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
/// $ pulumi import azure-native:dataprotection:BackupInstance harshitbi2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataProtection/backupVaults/{vaultName}/backupInstances/{backupInstanceName}
/// ```
class BackupInstanceDataprotection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Proxy Resource name associated with the resource.
  late final pulumi.Output<String> name;
  /// BackupInstanceResource properties
  late final pulumi.Output<BackupInstanceResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Proxy Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Proxy Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  late final pulumi.Output<String> type;

  /// Creates a new [BackupInstanceDataprotection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupInstanceDataprotection]. {@macro pulumi_dataprotection_backup_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupInstanceDataprotection(
    String name, {
    BackupInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dataprotection:BackupInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<BackupInstanceResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
