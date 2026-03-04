import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_vault_args.dart';
import 'backup_vault_response.dart';
import 'dpp_identity_details_response.dart';
import 'system_data_response.dart';

/// Backup Vault Resource
///
/// Uses Azure REST API version 2025-01-01. In version 2.x of the Azure Native provider, it used API version 2023-01-01.
///
/// Other available API versions: 2023-01-01, 2023-04-01-preview, 2023-05-01, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01, 2023-12-01, 2024-02-01-preview, 2024-03-01, 2024-04-01, 2025-02-01, 2025-07-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dataprotection [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create BackupVault
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var backupVault = new AzureNative.DataProtection.BackupVault("backupVault", new()
///     {
///         Identity = new AzureNative.DataProtection.Inputs.DppIdentityDetailsArgs
///         {
///             Type = "None",
///         },
///         Location = "WestUS",
///         Properties = new AzureNative.DataProtection.Inputs.BackupVaultArgs
///         {
///             FeatureSettings = new AzureNative.DataProtection.Inputs.FeatureSettingsArgs
///             {
///                 CrossRegionRestoreSettings = new AzureNative.DataProtection.Inputs.CrossRegionRestoreSettingsArgs
///                 {
///                     State = AzureNative.DataProtection.CrossRegionRestoreState.Enabled,
///                 },
///             },
///             MonitoringSettings = new AzureNative.DataProtection.Inputs.MonitoringSettingsArgs
///             {
///                 AzureMonitorAlertSettings = new AzureNative.DataProtection.Inputs.AzureMonitorAlertSettingsArgs
///                 {
///                     AlertsForAllJobFailures = AzureNative.DataProtection.AlertsState.Enabled,
///                 },
///             },
///             SecuritySettings = new AzureNative.DataProtection.Inputs.SecuritySettingsArgs
///             {
///                 SoftDeleteSettings = new AzureNative.DataProtection.Inputs.SoftDeleteSettingsArgs
///                 {
///                     RetentionDurationInDays = 14,
///                     State = "Enabled",
///                 },
///             },
///             StorageSettings = new[]
///             {
///                 new AzureNative.DataProtection.Inputs.StorageSettingArgs
///                 {
///                     DatastoreType = AzureNative.DataProtection.StorageSettingStoreTypes.VaultStore,
///                     Type = AzureNative.DataProtection.StorageSettingTypes.LocallyRedundant,
///                 },
///             },
///         },
///         ResourceGroupName = "SampleResourceGroup",
///         Tags =
///         {
///             { "key1", "val1" },
///         },
///         VaultName = "swaggerExample",
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
/// 		_, err := dataprotection.NewBackupVault(ctx, "backupVault", &dataprotection.BackupVaultArgs{
/// 			Identity: &dataprotection.DppIdentityDetailsArgs{
/// 				Type: pulumi.String("None"),
/// 			},
/// 			Location: pulumi.String("WestUS"),
/// 			Properties: &dataprotection.BackupVaultTypeArgs{
/// 				FeatureSettings: &dataprotection.FeatureSettingsArgs{
/// 					CrossRegionRestoreSettings: &dataprotection.CrossRegionRestoreSettingsArgs{
/// 						State: pulumi.String(dataprotection.CrossRegionRestoreStateEnabled),
/// 					},
/// 				},
/// 				MonitoringSettings: &dataprotection.MonitoringSettingsArgs{
/// 					AzureMonitorAlertSettings: &dataprotection.AzureMonitorAlertSettingsArgs{
/// 						AlertsForAllJobFailures: pulumi.String(dataprotection.AlertsStateEnabled),
/// 					},
/// 				},
/// 				SecuritySettings: &dataprotection.SecuritySettingsArgs{
/// 					SoftDeleteSettings: &dataprotection.SoftDeleteSettingsArgs{
/// 						RetentionDurationInDays: pulumi.Float64(14),
/// 						State:                   pulumi.String("Enabled"),
/// 					},
/// 				},
/// 				StorageSettings: dataprotection.StorageSettingArray{
/// 					&dataprotection.StorageSettingArgs{
/// 						DatastoreType: pulumi.String(dataprotection.StorageSettingStoreTypesVaultStore),
/// 						Type:          pulumi.String(dataprotection.StorageSettingTypesLocallyRedundant),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 			},
/// 			VaultName: pulumi.String("swaggerExample"),
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
/// import com.pulumi.azurenative.dataprotection.BackupVault;
/// import com.pulumi.azurenative.dataprotection.inputs.DppIdentityDetailsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.FeatureSettingsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.CrossRegionRestoreSettingsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.MonitoringSettingsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.AzureMonitorAlertSettingsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.SecuritySettingsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.SoftDeleteSettingsArgs;
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
///         var backupVault = new BackupVault("backupVault", BackupVaultArgs.builder()
///             .identity(DppIdentityDetailsArgs.builder()
///                 .type("None")
///                 .build())
///             .location("WestUS")
///             .properties(BackupVaultArgs.builder()
///                 .featureSettings(FeatureSettingsArgs.builder()
///                     .crossRegionRestoreSettings(CrossRegionRestoreSettingsArgs.builder()
///                         .state("Enabled")
///                         .build())
///                     .build())
///                 .monitoringSettings(MonitoringSettingsArgs.builder()
///                     .azureMonitorAlertSettings(AzureMonitorAlertSettingsArgs.builder()
///                         .alertsForAllJobFailures("Enabled")
///                         .build())
///                     .build())
///                 .securitySettings(SecuritySettingsArgs.builder()
///                     .softDeleteSettings(SoftDeleteSettingsArgs.builder()
///                         .retentionDurationInDays(14.0)
///                         .state("Enabled")
///                         .build())
///                     .build())
///                 .storageSettings(StorageSettingArgs.builder()
///                     .datastoreType("VaultStore")
///                     .type("LocallyRedundant")
///                     .build())
///                 .build())
///             .resourceGroupName("SampleResourceGroup")
///             .tags(Map.of("key1", "val1"))
///             .vaultName("swaggerExample")
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
/// const backupVault = new azure_native.dataprotection.BackupVault("backupVault", {
///     identity: {
///         type: "None",
///     },
///     location: "WestUS",
///     properties: {
///         featureSettings: {
///             crossRegionRestoreSettings: {
///                 state: azure_native.dataprotection.CrossRegionRestoreState.Enabled,
///             },
///         },
///         monitoringSettings: {
///             azureMonitorAlertSettings: {
///                 alertsForAllJobFailures: azure_native.dataprotection.AlertsState.Enabled,
///             },
///         },
///         securitySettings: {
///             softDeleteSettings: {
///                 retentionDurationInDays: 14,
///                 state: "Enabled",
///             },
///         },
///         storageSettings: [{
///             datastoreType: azure_native.dataprotection.StorageSettingStoreTypes.VaultStore,
///             type: azure_native.dataprotection.StorageSettingTypes.LocallyRedundant,
///         }],
///     },
///     resourceGroupName: "SampleResourceGroup",
///     tags: {
///         key1: "val1",
///     },
///     vaultName: "swaggerExample",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// backup_vault = azure_native.dataprotection.BackupVault("backupVault",
///     identity={
///         "type": "None",
///     },
///     location="WestUS",
///     properties={
///         "feature_settings": {
///             "cross_region_restore_settings": {
///                 "state": azure_native.dataprotection.CrossRegionRestoreState.ENABLED,
///             },
///         },
///         "monitoring_settings": {
///             "azure_monitor_alert_settings": {
///                 "alerts_for_all_job_failures": azure_native.dataprotection.AlertsState.ENABLED,
///             },
///         },
///         "security_settings": {
///             "soft_delete_settings": {
///                 "retention_duration_in_days": 14,
///                 "state": "Enabled",
///             },
///         },
///         "storage_settings": [{
///             "datastore_type": azure_native.dataprotection.StorageSettingStoreTypes.VAULT_STORE,
///             "type": azure_native.dataprotection.StorageSettingTypes.LOCALLY_REDUNDANT,
///         }],
///     },
///     resource_group_name="SampleResourceGroup",
///     tags={
///         "key1": "val1",
///     },
///     vault_name="swaggerExample")
///
/// ```
///
/// ```yaml
/// resources:
///   backupVault:
///     type: azure-native:dataprotection:BackupVault
///     properties:
///       identity:
///         type: None
///       location: WestUS
///       properties:
///         featureSettings:
///           crossRegionRestoreSettings:
///             state: Enabled
///         monitoringSettings:
///           azureMonitorAlertSettings:
///             alertsForAllJobFailures: Enabled
///         securitySettings:
///           softDeleteSettings:
///             retentionDurationInDays: 14
///             state: Enabled
///         storageSettings:
///           - datastoreType: VaultStore
///             type: LocallyRedundant
///       resourceGroupName: SampleResourceGroup
///       tags:
///         key1: val1
///       vaultName: swaggerExample
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create BackupVault With CMK
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var backupVault = new AzureNative.DataProtection.BackupVault("backupVault", new()
///     {
///         Identity = new AzureNative.DataProtection.Inputs.DppIdentityDetailsArgs
///         {
///             Type = "None",
///         },
///         Location = "WestUS",
///         Properties = new AzureNative.DataProtection.Inputs.BackupVaultArgs
///         {
///             MonitoringSettings = new AzureNative.DataProtection.Inputs.MonitoringSettingsArgs
///             {
///                 AzureMonitorAlertSettings = new AzureNative.DataProtection.Inputs.AzureMonitorAlertSettingsArgs
///                 {
///                     AlertsForAllJobFailures = AzureNative.DataProtection.AlertsState.Enabled,
///                 },
///             },
///             SecuritySettings = new AzureNative.DataProtection.Inputs.SecuritySettingsArgs
///             {
///                 EncryptionSettings = new AzureNative.DataProtection.Inputs.EncryptionSettingsArgs
///                 {
///                     InfrastructureEncryption = AzureNative.DataProtection.InfrastructureEncryptionState.Enabled,
///                     KekIdentity = new AzureNative.DataProtection.Inputs.CmkKekIdentityArgs
///                     {
///                         IdentityId = "/subscriptions/85bf5e8c-3084-4f42-add2-746ebb7e97b2/resourcegroups/defaultrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplemsi",
///                         IdentityType = AzureNative.DataProtection.IdentityType.UserAssigned,
///                     },
///                     KeyVaultProperties = new AzureNative.DataProtection.Inputs.CmkKeyVaultPropertiesArgs
///                     {
///                         KeyUri = "https://cmk2xkv.vault.azure.net/keys/Key1/0767b348bb1a4c07baa6c4ec0055d2b3",
///                     },
///                     State = AzureNative.DataProtection.EncryptionState.Enabled,
///                 },
///                 ImmutabilitySettings = new AzureNative.DataProtection.Inputs.ImmutabilitySettingsArgs
///                 {
///                     State = AzureNative.DataProtection.ImmutabilityState.Disabled,
///                 },
///                 SoftDeleteSettings = new AzureNative.DataProtection.Inputs.SoftDeleteSettingsArgs
///                 {
///                     RetentionDurationInDays = 0,
///                     State = AzureNative.DataProtection.SoftDeleteState.Off,
///                 },
///             },
///             StorageSettings = new[]
///             {
///                 new AzureNative.DataProtection.Inputs.StorageSettingArgs
///                 {
///                     DatastoreType = AzureNative.DataProtection.StorageSettingStoreTypes.VaultStore,
///                     Type = AzureNative.DataProtection.StorageSettingTypes.LocallyRedundant,
///                 },
///             },
///         },
///         ResourceGroupName = "SampleResourceGroup",
///         Tags =
///         {
///             { "key1", "val1" },
///         },
///         VaultName = "swaggerExample",
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
/// 		_, err := dataprotection.NewBackupVault(ctx, "backupVault", &dataprotection.BackupVaultArgs{
/// 			Identity: &dataprotection.DppIdentityDetailsArgs{
/// 				Type: pulumi.String("None"),
/// 			},
/// 			Location: pulumi.String("WestUS"),
/// 			Properties: &dataprotection.BackupVaultTypeArgs{
/// 				MonitoringSettings: &dataprotection.MonitoringSettingsArgs{
/// 					AzureMonitorAlertSettings: &dataprotection.AzureMonitorAlertSettingsArgs{
/// 						AlertsForAllJobFailures: pulumi.String(dataprotection.AlertsStateEnabled),
/// 					},
/// 				},
/// 				SecuritySettings: &dataprotection.SecuritySettingsArgs{
/// 					EncryptionSettings: &dataprotection.EncryptionSettingsArgs{
/// 						InfrastructureEncryption: pulumi.String(dataprotection.InfrastructureEncryptionStateEnabled),
/// 						KekIdentity: &dataprotection.CmkKekIdentityArgs{
/// 							IdentityId:   pulumi.String("/subscriptions/85bf5e8c-3084-4f42-add2-746ebb7e97b2/resourcegroups/defaultrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplemsi"),
/// 							IdentityType: pulumi.String(dataprotection.IdentityTypeUserAssigned),
/// 						},
/// 						KeyVaultProperties: &dataprotection.CmkKeyVaultPropertiesArgs{
/// 							KeyUri: pulumi.String("https://cmk2xkv.vault.azure.net/keys/Key1/0767b348bb1a4c07baa6c4ec0055d2b3"),
/// 						},
/// 						State: pulumi.String(dataprotection.EncryptionStateEnabled),
/// 					},
/// 					ImmutabilitySettings: &dataprotection.ImmutabilitySettingsArgs{
/// 						State: pulumi.String(dataprotection.ImmutabilityStateDisabled),
/// 					},
/// 					SoftDeleteSettings: &dataprotection.SoftDeleteSettingsArgs{
/// 						RetentionDurationInDays: pulumi.Float64(0),
/// 						State:                   pulumi.String(dataprotection.SoftDeleteStateOff),
/// 					},
/// 				},
/// 				StorageSettings: dataprotection.StorageSettingArray{
/// 					&dataprotection.StorageSettingArgs{
/// 						DatastoreType: pulumi.String(dataprotection.StorageSettingStoreTypesVaultStore),
/// 						Type:          pulumi.String(dataprotection.StorageSettingTypesLocallyRedundant),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 			},
/// 			VaultName: pulumi.String("swaggerExample"),
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
/// import com.pulumi.azurenative.dataprotection.BackupVault;
/// import com.pulumi.azurenative.dataprotection.inputs.DppIdentityDetailsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.MonitoringSettingsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.AzureMonitorAlertSettingsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.SecuritySettingsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.EncryptionSettingsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.CmkKekIdentityArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.CmkKeyVaultPropertiesArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.ImmutabilitySettingsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.SoftDeleteSettingsArgs;
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
///         var backupVault = new BackupVault("backupVault", BackupVaultArgs.builder()
///             .identity(DppIdentityDetailsArgs.builder()
///                 .type("None")
///                 .build())
///             .location("WestUS")
///             .properties(BackupVaultArgs.builder()
///                 .monitoringSettings(MonitoringSettingsArgs.builder()
///                     .azureMonitorAlertSettings(AzureMonitorAlertSettingsArgs.builder()
///                         .alertsForAllJobFailures("Enabled")
///                         .build())
///                     .build())
///                 .securitySettings(SecuritySettingsArgs.builder()
///                     .encryptionSettings(EncryptionSettingsArgs.builder()
///                         .infrastructureEncryption("Enabled")
///                         .kekIdentity(CmkKekIdentityArgs.builder()
///                             .identityId("/subscriptions/85bf5e8c-3084-4f42-add2-746ebb7e97b2/resourcegroups/defaultrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplemsi")
///                             .identityType("UserAssigned")
///                             .build())
///                         .keyVaultProperties(CmkKeyVaultPropertiesArgs.builder()
///                             .keyUri("https://cmk2xkv.vault.azure.net/keys/Key1/0767b348bb1a4c07baa6c4ec0055d2b3")
///                             .build())
///                         .state("Enabled")
///                         .build())
///                     .immutabilitySettings(ImmutabilitySettingsArgs.builder()
///                         .state("Disabled")
///                         .build())
///                     .softDeleteSettings(SoftDeleteSettingsArgs.builder()
///                         .retentionDurationInDays(0.0)
///                         .state("Off")
///                         .build())
///                     .build())
///                 .storageSettings(StorageSettingArgs.builder()
///                     .datastoreType("VaultStore")
///                     .type("LocallyRedundant")
///                     .build())
///                 .build())
///             .resourceGroupName("SampleResourceGroup")
///             .tags(Map.of("key1", "val1"))
///             .vaultName("swaggerExample")
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
/// const backupVault = new azure_native.dataprotection.BackupVault("backupVault", {
///     identity: {
///         type: "None",
///     },
///     location: "WestUS",
///     properties: {
///         monitoringSettings: {
///             azureMonitorAlertSettings: {
///                 alertsForAllJobFailures: azure_native.dataprotection.AlertsState.Enabled,
///             },
///         },
///         securitySettings: {
///             encryptionSettings: {
///                 infrastructureEncryption: azure_native.dataprotection.InfrastructureEncryptionState.Enabled,
///                 kekIdentity: {
///                     identityId: "/subscriptions/85bf5e8c-3084-4f42-add2-746ebb7e97b2/resourcegroups/defaultrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplemsi",
///                     identityType: azure_native.dataprotection.IdentityType.UserAssigned,
///                 },
///                 keyVaultProperties: {
///                     keyUri: "https://cmk2xkv.vault.azure.net/keys/Key1/0767b348bb1a4c07baa6c4ec0055d2b3",
///                 },
///                 state: azure_native.dataprotection.EncryptionState.Enabled,
///             },
///             immutabilitySettings: {
///                 state: azure_native.dataprotection.ImmutabilityState.Disabled,
///             },
///             softDeleteSettings: {
///                 retentionDurationInDays: 0,
///                 state: azure_native.dataprotection.SoftDeleteState.Off,
///             },
///         },
///         storageSettings: [{
///             datastoreType: azure_native.dataprotection.StorageSettingStoreTypes.VaultStore,
///             type: azure_native.dataprotection.StorageSettingTypes.LocallyRedundant,
///         }],
///     },
///     resourceGroupName: "SampleResourceGroup",
///     tags: {
///         key1: "val1",
///     },
///     vaultName: "swaggerExample",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// backup_vault = azure_native.dataprotection.BackupVault("backupVault",
///     identity={
///         "type": "None",
///     },
///     location="WestUS",
///     properties={
///         "monitoring_settings": {
///             "azure_monitor_alert_settings": {
///                 "alerts_for_all_job_failures": azure_native.dataprotection.AlertsState.ENABLED,
///             },
///         },
///         "security_settings": {
///             "encryption_settings": {
///                 "infrastructure_encryption": azure_native.dataprotection.InfrastructureEncryptionState.ENABLED,
///                 "kek_identity": {
///                     "identity_id": "/subscriptions/85bf5e8c-3084-4f42-add2-746ebb7e97b2/resourcegroups/defaultrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplemsi",
///                     "identity_type": azure_native.dataprotection.IdentityType.USER_ASSIGNED,
///                 },
///                 "key_vault_properties": {
///                     "key_uri": "https://cmk2xkv.vault.azure.net/keys/Key1/0767b348bb1a4c07baa6c4ec0055d2b3",
///                 },
///                 "state": azure_native.dataprotection.EncryptionState.ENABLED,
///             },
///             "immutability_settings": {
///                 "state": azure_native.dataprotection.ImmutabilityState.DISABLED,
///             },
///             "soft_delete_settings": {
///                 "retention_duration_in_days": 0,
///                 "state": azure_native.dataprotection.SoftDeleteState.OFF,
///             },
///         },
///         "storage_settings": [{
///             "datastore_type": azure_native.dataprotection.StorageSettingStoreTypes.VAULT_STORE,
///             "type": azure_native.dataprotection.StorageSettingTypes.LOCALLY_REDUNDANT,
///         }],
///     },
///     resource_group_name="SampleResourceGroup",
///     tags={
///         "key1": "val1",
///     },
///     vault_name="swaggerExample")
///
/// ```
///
/// ```yaml
/// resources:
///   backupVault:
///     type: azure-native:dataprotection:BackupVault
///     properties:
///       identity:
///         type: None
///       location: WestUS
///       properties:
///         monitoringSettings:
///           azureMonitorAlertSettings:
///             alertsForAllJobFailures: Enabled
///         securitySettings:
///           encryptionSettings:
///             infrastructureEncryption: Enabled
///             kekIdentity:
///               identityId: /subscriptions/85bf5e8c-3084-4f42-add2-746ebb7e97b2/resourcegroups/defaultrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplemsi
///               identityType: UserAssigned
///             keyVaultProperties:
///               keyUri: https://cmk2xkv.vault.azure.net/keys/Key1/0767b348bb1a4c07baa6c4ec0055d2b3
///             state: Enabled
///           immutabilitySettings:
///             state: Disabled
///           softDeleteSettings:
///             retentionDurationInDays: 0
///             state: Off
///         storageSettings:
///           - datastoreType: VaultStore
///             type: LocallyRedundant
///       resourceGroupName: SampleResourceGroup
///       tags:
///         key1: val1
///       vaultName: swaggerExample
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create BackupVault With MSI
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var backupVault = new AzureNative.DataProtection.BackupVault("backupVault", new()
///     {
///         Identity = new AzureNative.DataProtection.Inputs.DppIdentityDetailsArgs
///         {
///             Type = "systemAssigned",
///         },
///         Location = "WestUS",
///         Properties = new AzureNative.DataProtection.Inputs.BackupVaultArgs
///         {
///             FeatureSettings = new AzureNative.DataProtection.Inputs.FeatureSettingsArgs
///             {
///                 CrossRegionRestoreSettings = new AzureNative.DataProtection.Inputs.CrossRegionRestoreSettingsArgs
///                 {
///                     State = AzureNative.DataProtection.CrossRegionRestoreState.Enabled,
///                 },
///             },
///             MonitoringSettings = new AzureNative.DataProtection.Inputs.MonitoringSettingsArgs
///             {
///                 AzureMonitorAlertSettings = new AzureNative.DataProtection.Inputs.AzureMonitorAlertSettingsArgs
///                 {
///                     AlertsForAllJobFailures = AzureNative.DataProtection.AlertsState.Enabled,
///                 },
///             },
///             SecuritySettings = new AzureNative.DataProtection.Inputs.SecuritySettingsArgs
///             {
///                 SoftDeleteSettings = new AzureNative.DataProtection.Inputs.SoftDeleteSettingsArgs
///                 {
///                     RetentionDurationInDays = 14,
///                     State = "Enabled",
///                 },
///             },
///             StorageSettings = new[]
///             {
///                 new AzureNative.DataProtection.Inputs.StorageSettingArgs
///                 {
///                     DatastoreType = AzureNative.DataProtection.StorageSettingStoreTypes.VaultStore,
///                     Type = AzureNative.DataProtection.StorageSettingTypes.LocallyRedundant,
///                 },
///             },
///         },
///         ResourceGroupName = "SampleResourceGroup",
///         Tags =
///         {
///             { "key1", "val1" },
///         },
///         VaultName = "swaggerExample",
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
/// 		_, err := dataprotection.NewBackupVault(ctx, "backupVault", &dataprotection.BackupVaultArgs{
/// 			Identity: &dataprotection.DppIdentityDetailsArgs{
/// 				Type: pulumi.String("systemAssigned"),
/// 			},
/// 			Location: pulumi.String("WestUS"),
/// 			Properties: &dataprotection.BackupVaultTypeArgs{
/// 				FeatureSettings: &dataprotection.FeatureSettingsArgs{
/// 					CrossRegionRestoreSettings: &dataprotection.CrossRegionRestoreSettingsArgs{
/// 						State: pulumi.String(dataprotection.CrossRegionRestoreStateEnabled),
/// 					},
/// 				},
/// 				MonitoringSettings: &dataprotection.MonitoringSettingsArgs{
/// 					AzureMonitorAlertSettings: &dataprotection.AzureMonitorAlertSettingsArgs{
/// 						AlertsForAllJobFailures: pulumi.String(dataprotection.AlertsStateEnabled),
/// 					},
/// 				},
/// 				SecuritySettings: &dataprotection.SecuritySettingsArgs{
/// 					SoftDeleteSettings: &dataprotection.SoftDeleteSettingsArgs{
/// 						RetentionDurationInDays: pulumi.Float64(14),
/// 						State:                   pulumi.String("Enabled"),
/// 					},
/// 				},
/// 				StorageSettings: dataprotection.StorageSettingArray{
/// 					&dataprotection.StorageSettingArgs{
/// 						DatastoreType: pulumi.String(dataprotection.StorageSettingStoreTypesVaultStore),
/// 						Type:          pulumi.String(dataprotection.StorageSettingTypesLocallyRedundant),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 			},
/// 			VaultName: pulumi.String("swaggerExample"),
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
/// import com.pulumi.azurenative.dataprotection.BackupVault;
/// import com.pulumi.azurenative.dataprotection.inputs.DppIdentityDetailsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.FeatureSettingsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.CrossRegionRestoreSettingsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.MonitoringSettingsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.AzureMonitorAlertSettingsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.SecuritySettingsArgs;
/// import com.pulumi.azurenative.dataprotection.inputs.SoftDeleteSettingsArgs;
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
///         var backupVault = new BackupVault("backupVault", BackupVaultArgs.builder()
///             .identity(DppIdentityDetailsArgs.builder()
///                 .type("systemAssigned")
///                 .build())
///             .location("WestUS")
///             .properties(BackupVaultArgs.builder()
///                 .featureSettings(FeatureSettingsArgs.builder()
///                     .crossRegionRestoreSettings(CrossRegionRestoreSettingsArgs.builder()
///                         .state("Enabled")
///                         .build())
///                     .build())
///                 .monitoringSettings(MonitoringSettingsArgs.builder()
///                     .azureMonitorAlertSettings(AzureMonitorAlertSettingsArgs.builder()
///                         .alertsForAllJobFailures("Enabled")
///                         .build())
///                     .build())
///                 .securitySettings(SecuritySettingsArgs.builder()
///                     .softDeleteSettings(SoftDeleteSettingsArgs.builder()
///                         .retentionDurationInDays(14.0)
///                         .state("Enabled")
///                         .build())
///                     .build())
///                 .storageSettings(StorageSettingArgs.builder()
///                     .datastoreType("VaultStore")
///                     .type("LocallyRedundant")
///                     .build())
///                 .build())
///             .resourceGroupName("SampleResourceGroup")
///             .tags(Map.of("key1", "val1"))
///             .vaultName("swaggerExample")
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
/// const backupVault = new azure_native.dataprotection.BackupVault("backupVault", {
///     identity: {
///         type: "systemAssigned",
///     },
///     location: "WestUS",
///     properties: {
///         featureSettings: {
///             crossRegionRestoreSettings: {
///                 state: azure_native.dataprotection.CrossRegionRestoreState.Enabled,
///             },
///         },
///         monitoringSettings: {
///             azureMonitorAlertSettings: {
///                 alertsForAllJobFailures: azure_native.dataprotection.AlertsState.Enabled,
///             },
///         },
///         securitySettings: {
///             softDeleteSettings: {
///                 retentionDurationInDays: 14,
///                 state: "Enabled",
///             },
///         },
///         storageSettings: [{
///             datastoreType: azure_native.dataprotection.StorageSettingStoreTypes.VaultStore,
///             type: azure_native.dataprotection.StorageSettingTypes.LocallyRedundant,
///         }],
///     },
///     resourceGroupName: "SampleResourceGroup",
///     tags: {
///         key1: "val1",
///     },
///     vaultName: "swaggerExample",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// backup_vault = azure_native.dataprotection.BackupVault("backupVault",
///     identity={
///         "type": "systemAssigned",
///     },
///     location="WestUS",
///     properties={
///         "feature_settings": {
///             "cross_region_restore_settings": {
///                 "state": azure_native.dataprotection.CrossRegionRestoreState.ENABLED,
///             },
///         },
///         "monitoring_settings": {
///             "azure_monitor_alert_settings": {
///                 "alerts_for_all_job_failures": azure_native.dataprotection.AlertsState.ENABLED,
///             },
///         },
///         "security_settings": {
///             "soft_delete_settings": {
///                 "retention_duration_in_days": 14,
///                 "state": "Enabled",
///             },
///         },
///         "storage_settings": [{
///             "datastore_type": azure_native.dataprotection.StorageSettingStoreTypes.VAULT_STORE,
///             "type": azure_native.dataprotection.StorageSettingTypes.LOCALLY_REDUNDANT,
///         }],
///     },
///     resource_group_name="SampleResourceGroup",
///     tags={
///         "key1": "val1",
///     },
///     vault_name="swaggerExample")
///
/// ```
///
/// ```yaml
/// resources:
///   backupVault:
///     type: azure-native:dataprotection:BackupVault
///     properties:
///       identity:
///         type: systemAssigned
///       location: WestUS
///       properties:
///         featureSettings:
///           crossRegionRestoreSettings:
///             state: Enabled
///         monitoringSettings:
///           azureMonitorAlertSettings:
///             alertsForAllJobFailures: Enabled
///         securitySettings:
///           softDeleteSettings:
///             retentionDurationInDays: 14
///             state: Enabled
///         storageSettings:
///           - datastoreType: VaultStore
///             type: LocallyRedundant
///       resourceGroupName: SampleResourceGroup
///       tags:
///         key1: val1
///       vaultName: swaggerExample
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
/// $ pulumi import azure-native:dataprotection:BackupVault swaggerExample /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataProtection/backupVaults/{vaultName}
/// ```
class BackupVaultDataprotection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Optional ETag.
  late final pulumi.Output<String?> eTag;

  /// Input Managed Identity Details
  late final pulumi.Output<DppIdentityDetailsResponse?> identity;

  /// Resource location.
  late final pulumi.Output<String> location;

  /// Resource name associated with the resource.
  late final pulumi.Output<String> name;

  /// BackupVaultResource properties
  late final pulumi.Output<BackupVaultResponse> properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  late final pulumi.Output<String> type;

  /// Creates a new [BackupVaultDataprotection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupVaultDataprotection]. {@macro pulumi_dataprotection_backup_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupVaultDataprotection(
    String name, {
    BackupVaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:dataprotection:BackupVault',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    identity = registerOutput<DppIdentityDetailsResponse?>('identity');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<BackupVaultResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
