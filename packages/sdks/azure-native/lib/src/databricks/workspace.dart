import 'package:pulumi/pulumi.dart' as pulumi;
import 'created_by_response.dart';
import 'default_catalog_properties_response.dart';
import 'enhanced_security_compliance_definition_response.dart';
import 'managed_identity_configuration_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';
import 'workspace_args.dart';
import 'workspace_custom_parameters_response.dart';
import 'workspace_properties_access_connector_response.dart';
import 'workspace_properties_encryption_response.dart';

/// Information about workspace.
///
/// Uses Azure REST API version 2026-01-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-09-15-preview, 2024-05-01, 2024-09-01-preview, 2025-03-01-preview, 2025-08-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databricks [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a workspace which is ready for Customer-Managed Key (CMK) encryption
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.Databricks.Workspace("workspace", new()
///     {
///         ComputeMode = AzureNative.Databricks.ComputeMode.Hybrid,
///         Location = "westus",
///         ManagedResourceGroupId = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///         Parameters = new AzureNative.Databricks.Inputs.WorkspaceCustomParametersArgs
///         {
///             PrepareEncryption = new AzureNative.Databricks.Inputs.WorkspaceCustomBooleanParameterArgs
///             {
///                 Value = true,
///             },
///         },
///         ResourceGroupName = "rg",
///         Sku = new AzureNative.Databricks.Inputs.SkuArgs
///         {
///             Name = "premium",
///         },
///         WorkspaceName = "myWorkspace",
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
/// 	databricks "github.com/pulumi/pulumi-azure-native-sdk/databricks/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databricks.NewWorkspace(ctx, "workspace", &databricks.WorkspaceArgs{
/// 			ComputeMode:            pulumi.String(databricks.ComputeModeHybrid),
/// 			Location:               pulumi.String("westus"),
/// 			ManagedResourceGroupId: pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG"),
/// 			Parameters: &databricks.WorkspaceCustomParametersArgs{
/// 				PrepareEncryption: &databricks.WorkspaceCustomBooleanParameterArgs{
/// 					Value: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Sku: &databricks.SkuArgs{
/// 				Name: pulumi.String("premium"),
/// 			},
/// 			WorkspaceName: pulumi.String("myWorkspace"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_databricks_workspace" "workspace" {
///   compute_mode              = "Hybrid"
///   location                  = "westus"
///   managed_resource_group_id = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG"
///   parameters = {
///     prepare_encryption = {
///       value = true
///     }
///   }
///   resource_group_name = "rg"
///   sku = {
///     name = "premium"
///   }
///   workspace_name = "myWorkspace"
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
/// import com.pulumi.azurenative.databricks.Workspace;
/// import com.pulumi.azurenative.databricks.WorkspaceArgs;
/// import com.pulumi.azurenative.databricks.inputs.WorkspaceCustomParametersArgs;
/// import com.pulumi.azurenative.databricks.inputs.WorkspaceCustomBooleanParameterArgs;
/// import com.pulumi.azurenative.databricks.inputs.SkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .computeMode("Hybrid")
///             .location("westus")
///             .managedResourceGroupId("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG")
///             .parameters(WorkspaceCustomParametersArgs.builder()
///                 .prepareEncryption(WorkspaceCustomBooleanParameterArgs.builder()
///                     .value(true)
///                     .build())
///                 .build())
///             .resourceGroupName("rg")
///             .sku(SkuArgs.builder()
///                 .name("premium")
///                 .build())
///             .workspaceName("myWorkspace")
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
/// const workspace = new azure_native.databricks.Workspace("workspace", {
///     computeMode: azure_native.databricks.ComputeMode.Hybrid,
///     location: "westus",
///     managedResourceGroupId: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///     parameters: {
///         prepareEncryption: {
///             value: true,
///         },
///     },
///     resourceGroupName: "rg",
///     sku: {
///         name: "premium",
///     },
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.databricks.Workspace("workspace",
///     compute_mode=azure_native.databricks.ComputeMode.HYBRID,
///     location="westus",
///     managed_resource_group_id="/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///     parameters={
///         "prepare_encryption": {
///             "value": True,
///         },
///     },
///     resource_group_name="rg",
///     sku={
///         "name": "premium",
///     },
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:databricks:Workspace
///     properties:
///       computeMode: Hybrid
///       location: westus
///       managedResourceGroupId: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG
///       parameters:
///         prepareEncryption:
///           value: true
///       resourceGroupName: rg
///       sku:
///         name: premium
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a workspace with Customer-Managed Key (CMK) encryption for Managed Disks
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.Databricks.Workspace("workspace", new()
///     {
///         ComputeMode = AzureNative.Databricks.ComputeMode.Hybrid,
///         Encryption = new AzureNative.Databricks.Inputs.WorkspacePropertiesEncryptionArgs
///         {
///             Entities = new AzureNative.Databricks.Inputs.EncryptionEntitiesDefinitionArgs
///             {
///                 ManagedDisk = new AzureNative.Databricks.Inputs.ManagedDiskEncryptionArgs
///                 {
///                     KeySource = AzureNative.Databricks.EncryptionKeySource.Microsoft_Keyvault,
///                     KeyVaultProperties = new AzureNative.Databricks.Inputs.ManagedDiskEncryptionKeyVaultPropertiesArgs
///                     {
///                         KeyName = "test-cmk-key",
///                         KeyVaultUri = "https://test-vault-name.vault.azure.net/",
///                         KeyVersion = "00000000000000000000000000000000",
///                     },
///                     RotationToLatestKeyVersionEnabled = true,
///                 },
///             },
///         },
///         Location = "westus",
///         ManagedResourceGroupId = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///         ResourceGroupName = "rg",
///         Sku = new AzureNative.Databricks.Inputs.SkuArgs
///         {
///             Name = "premium",
///         },
///         WorkspaceName = "myWorkspace",
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
/// 	databricks "github.com/pulumi/pulumi-azure-native-sdk/databricks/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databricks.NewWorkspace(ctx, "workspace", &databricks.WorkspaceArgs{
/// 			ComputeMode: pulumi.String(databricks.ComputeModeHybrid),
/// 			Encryption: &databricks.WorkspacePropertiesEncryptionArgs{
/// 				Entities: &databricks.EncryptionEntitiesDefinitionArgs{
/// 					ManagedDisk: &databricks.ManagedDiskEncryptionArgs{
/// 						KeySource: pulumi.String(databricks.EncryptionKeySource_Microsoft_Keyvault),
/// 						KeyVaultProperties: &databricks.ManagedDiskEncryptionKeyVaultPropertiesArgs{
/// 							KeyName:     pulumi.String("test-cmk-key"),
/// 							KeyVaultUri: pulumi.String("https://test-vault-name.vault.azure.net/"),
/// 							KeyVersion:  pulumi.String("00000000000000000000000000000000"),
/// 						},
/// 						RotationToLatestKeyVersionEnabled: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			Location:               pulumi.String("westus"),
/// 			ManagedResourceGroupId: pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG"),
/// 			ResourceGroupName:      pulumi.String("rg"),
/// 			Sku: &databricks.SkuArgs{
/// 				Name: pulumi.String("premium"),
/// 			},
/// 			WorkspaceName: pulumi.String("myWorkspace"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_databricks_workspace" "workspace" {
///   compute_mode = "Hybrid"
///   encryption = {
///     entities = {
///       managed_disk = {
///         key_source = "Microsoft.Keyvault"
///         key_vault_properties = {
///           key_name      = "test-cmk-key"
///           key_vault_uri = "https://test-vault-name.vault.azure.net/"
///           key_version   = "00000000000000000000000000000000"
///         }
///         rotation_to_latest_key_version_enabled = true
///       }
///     }
///   }
///   location                  = "westus"
///   managed_resource_group_id = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG"
///   resource_group_name       = "rg"
///   sku = {
///     name = "premium"
///   }
///   workspace_name = "myWorkspace"
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
/// import com.pulumi.azurenative.databricks.Workspace;
/// import com.pulumi.azurenative.databricks.WorkspaceArgs;
/// import com.pulumi.azurenative.databricks.inputs.WorkspacePropertiesEncryptionArgs;
/// import com.pulumi.azurenative.databricks.inputs.EncryptionEntitiesDefinitionArgs;
/// import com.pulumi.azurenative.databricks.inputs.ManagedDiskEncryptionArgs;
/// import com.pulumi.azurenative.databricks.inputs.ManagedDiskEncryptionKeyVaultPropertiesArgs;
/// import com.pulumi.azurenative.databricks.inputs.SkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .computeMode("Hybrid")
///             .encryption(WorkspacePropertiesEncryptionArgs.builder()
///                 .entities(EncryptionEntitiesDefinitionArgs.builder()
///                     .managedDisk(ManagedDiskEncryptionArgs.builder()
///                         .keySource("Microsoft.Keyvault")
///                         .keyVaultProperties(ManagedDiskEncryptionKeyVaultPropertiesArgs.builder()
///                             .keyName("test-cmk-key")
///                             .keyVaultUri("https://test-vault-name.vault.azure.net/")
///                             .keyVersion("00000000000000000000000000000000")
///                             .build())
///                         .rotationToLatestKeyVersionEnabled(true)
///                         .build())
///                     .build())
///                 .build())
///             .location("westus")
///             .managedResourceGroupId("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG")
///             .resourceGroupName("rg")
///             .sku(SkuArgs.builder()
///                 .name("premium")
///                 .build())
///             .workspaceName("myWorkspace")
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
/// const workspace = new azure_native.databricks.Workspace("workspace", {
///     computeMode: azure_native.databricks.ComputeMode.Hybrid,
///     encryption: {
///         entities: {
///             managedDisk: {
///                 keySource: azure_native.databricks.EncryptionKeySource.Microsoft_Keyvault,
///                 keyVaultProperties: {
///                     keyName: "test-cmk-key",
///                     keyVaultUri: "https://test-vault-name.vault.azure.net/",
///                     keyVersion: "00000000000000000000000000000000",
///                 },
///                 rotationToLatestKeyVersionEnabled: true,
///             },
///         },
///     },
///     location: "westus",
///     managedResourceGroupId: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///     resourceGroupName: "rg",
///     sku: {
///         name: "premium",
///     },
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.databricks.Workspace("workspace",
///     compute_mode=azure_native.databricks.ComputeMode.HYBRID,
///     encryption={
///         "entities": {
///             "managed_disk": {
///                 "key_source": azure_native.databricks.EncryptionKeySource.MICROSOFT_KEYVAULT,
///                 "key_vault_properties": {
///                     "key_name": "test-cmk-key",
///                     "key_vault_uri": "https://test-vault-name.vault.azure.net/",
///                     "key_version": "00000000000000000000000000000000",
///                 },
///                 "rotation_to_latest_key_version_enabled": True,
///             },
///         },
///     },
///     location="westus",
///     managed_resource_group_id="/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///     resource_group_name="rg",
///     sku={
///         "name": "premium",
///     },
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:databricks:Workspace
///     properties:
///       computeMode: Hybrid
///       encryption:
///         entities:
///           managedDisk:
///             keySource: Microsoft.Keyvault
///             keyVaultProperties:
///               keyName: test-cmk-key
///               keyVaultUri: https://test-vault-name.vault.azure.net/
///               keyVersion: '00000000000000000000000000000000'
///             rotationToLatestKeyVersionEnabled: true
///       location: westus
///       managedResourceGroupId: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG
///       resourceGroupName: rg
///       sku:
///         name: premium
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a workspace with Enhanced Security & Compliance Add-On
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.Databricks.Workspace("workspace", new()
///     {
///         ComputeMode = AzureNative.Databricks.ComputeMode.Hybrid,
///         EnhancedSecurityCompliance = new AzureNative.Databricks.Inputs.EnhancedSecurityComplianceDefinitionArgs
///         {
///             AutomaticClusterUpdate = new AzureNative.Databricks.Inputs.AutomaticClusterUpdateDefinitionArgs
///             {
///                 Value = AzureNative.Databricks.AutomaticClusterUpdateValue.Enabled,
///             },
///             ComplianceSecurityProfile = new AzureNative.Databricks.Inputs.ComplianceSecurityProfileDefinitionArgs
///             {
///                 ComplianceStandards = new[]
///                 {
///                     AzureNative.Databricks.ComplianceStandard.PCI_DSS,
///                     AzureNative.Databricks.ComplianceStandard.HIPAA,
///                 },
///                 Value = AzureNative.Databricks.ComplianceSecurityProfileValue.Enabled,
///             },
///             EnhancedSecurityMonitoring = new AzureNative.Databricks.Inputs.EnhancedSecurityMonitoringDefinitionArgs
///             {
///                 Value = AzureNative.Databricks.EnhancedSecurityMonitoringValue.Enabled,
///             },
///         },
///         Location = "eastus2",
///         ManagedResourceGroupId = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///         ResourceGroupName = "rg",
///         Sku = new AzureNative.Databricks.Inputs.SkuArgs
///         {
///             Name = "premium",
///         },
///         WorkspaceName = "myWorkspace",
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
/// 	databricks "github.com/pulumi/pulumi-azure-native-sdk/databricks/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databricks.NewWorkspace(ctx, "workspace", &databricks.WorkspaceArgs{
/// 			ComputeMode: pulumi.String(databricks.ComputeModeHybrid),
/// 			EnhancedSecurityCompliance: &databricks.EnhancedSecurityComplianceDefinitionArgs{
/// 				AutomaticClusterUpdate: &databricks.AutomaticClusterUpdateDefinitionArgs{
/// 					Value: pulumi.String(databricks.AutomaticClusterUpdateValueEnabled),
/// 				},
/// 				ComplianceSecurityProfile: &databricks.ComplianceSecurityProfileDefinitionArgs{
/// 					ComplianceStandards: pulumi.StringArray{
/// 						pulumi.String(databricks.ComplianceStandard_PCI_DSS),
/// 						pulumi.String(databricks.ComplianceStandardHIPAA),
/// 					},
/// 					Value: pulumi.String(databricks.ComplianceSecurityProfileValueEnabled),
/// 				},
/// 				EnhancedSecurityMonitoring: &databricks.EnhancedSecurityMonitoringDefinitionArgs{
/// 					Value: pulumi.String(databricks.EnhancedSecurityMonitoringValueEnabled),
/// 				},
/// 			},
/// 			Location:               pulumi.String("eastus2"),
/// 			ManagedResourceGroupId: pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG"),
/// 			ResourceGroupName:      pulumi.String("rg"),
/// 			Sku: &databricks.SkuArgs{
/// 				Name: pulumi.String("premium"),
/// 			},
/// 			WorkspaceName: pulumi.String("myWorkspace"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_databricks_workspace" "workspace" {
///   compute_mode = "Hybrid"
///   enhanced_security_compliance = {
///     automatic_cluster_update = {
///       value = "Enabled"
///     }
///     compliance_security_profile = {
///       compliance_standards = ["PCI_DSS", "HIPAA"]
///       value                = "Enabled"
///     }
///     enhanced_security_monitoring = {
///       value = "Enabled"
///     }
///   }
///   location                  = "eastus2"
///   managed_resource_group_id = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG"
///   resource_group_name       = "rg"
///   sku = {
///     name = "premium"
///   }
///   workspace_name = "myWorkspace"
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
/// import com.pulumi.azurenative.databricks.Workspace;
/// import com.pulumi.azurenative.databricks.WorkspaceArgs;
/// import com.pulumi.azurenative.databricks.inputs.EnhancedSecurityComplianceDefinitionArgs;
/// import com.pulumi.azurenative.databricks.inputs.AutomaticClusterUpdateDefinitionArgs;
/// import com.pulumi.azurenative.databricks.inputs.ComplianceSecurityProfileDefinitionArgs;
/// import com.pulumi.azurenative.databricks.inputs.EnhancedSecurityMonitoringDefinitionArgs;
/// import com.pulumi.azurenative.databricks.inputs.SkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .computeMode("Hybrid")
///             .enhancedSecurityCompliance(EnhancedSecurityComplianceDefinitionArgs.builder()
///                 .automaticClusterUpdate(AutomaticClusterUpdateDefinitionArgs.builder()
///                     .value("Enabled")
///                     .build())
///                 .complianceSecurityProfile(ComplianceSecurityProfileDefinitionArgs.builder()
///                     .complianceStandards(
///                         "PCI_DSS",
///                         "HIPAA")
///                     .value("Enabled")
///                     .build())
///                 .enhancedSecurityMonitoring(EnhancedSecurityMonitoringDefinitionArgs.builder()
///                     .value("Enabled")
///                     .build())
///                 .build())
///             .location("eastus2")
///             .managedResourceGroupId("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG")
///             .resourceGroupName("rg")
///             .sku(SkuArgs.builder()
///                 .name("premium")
///                 .build())
///             .workspaceName("myWorkspace")
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
/// const workspace = new azure_native.databricks.Workspace("workspace", {
///     computeMode: azure_native.databricks.ComputeMode.Hybrid,
///     enhancedSecurityCompliance: {
///         automaticClusterUpdate: {
///             value: azure_native.databricks.AutomaticClusterUpdateValue.Enabled,
///         },
///         complianceSecurityProfile: {
///             complianceStandards: [
///                 azure_native.databricks.ComplianceStandard.PCI_DSS,
///                 azure_native.databricks.ComplianceStandard.HIPAA,
///             ],
///             value: azure_native.databricks.ComplianceSecurityProfileValue.Enabled,
///         },
///         enhancedSecurityMonitoring: {
///             value: azure_native.databricks.EnhancedSecurityMonitoringValue.Enabled,
///         },
///     },
///     location: "eastus2",
///     managedResourceGroupId: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///     resourceGroupName: "rg",
///     sku: {
///         name: "premium",
///     },
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.databricks.Workspace("workspace",
///     compute_mode=azure_native.databricks.ComputeMode.HYBRID,
///     enhanced_security_compliance={
///         "automatic_cluster_update": {
///             "value": azure_native.databricks.AutomaticClusterUpdateValue.ENABLED,
///         },
///         "compliance_security_profile": {
///             "compliance_standards": [
///                 azure_native.databricks.ComplianceStandard.PC_I_DSS,
///                 azure_native.databricks.ComplianceStandard.HIPAA,
///             ],
///             "value": azure_native.databricks.ComplianceSecurityProfileValue.ENABLED,
///         },
///         "enhanced_security_monitoring": {
///             "value": azure_native.databricks.EnhancedSecurityMonitoringValue.ENABLED,
///         },
///     },
///     location="eastus2",
///     managed_resource_group_id="/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///     resource_group_name="rg",
///     sku={
///         "name": "premium",
///     },
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:databricks:Workspace
///     properties:
///       computeMode: Hybrid
///       enhancedSecurityCompliance:
///         automaticClusterUpdate:
///           value: Enabled
///         complianceSecurityProfile:
///           complianceStandards:
///             - PCI_DSS
///             - HIPAA
///           value: Enabled
///         enhancedSecurityMonitoring:
///           value: Enabled
///       location: eastus2
///       managedResourceGroupId: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG
///       resourceGroupName: rg
///       sku:
///         name: premium
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update serverless workspace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.Databricks.Workspace("workspace", new()
///     {
///         ComputeMode = AzureNative.Databricks.ComputeMode.Serverless,
///         Location = "westus",
///         ResourceGroupName = "rg",
///         Sku = new AzureNative.Databricks.Inputs.SkuArgs
///         {
///             Name = "premium",
///         },
///         WorkspaceName = "myWorkspace",
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
/// 	databricks "github.com/pulumi/pulumi-azure-native-sdk/databricks/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databricks.NewWorkspace(ctx, "workspace", &databricks.WorkspaceArgs{
/// 			ComputeMode:       pulumi.String(databricks.ComputeModeServerless),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Sku: &databricks.SkuArgs{
/// 				Name: pulumi.String("premium"),
/// 			},
/// 			WorkspaceName: pulumi.String("myWorkspace"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_databricks_workspace" "workspace" {
///   compute_mode        = "Serverless"
///   location            = "westus"
///   resource_group_name = "rg"
///   sku = {
///     name = "premium"
///   }
///   workspace_name = "myWorkspace"
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
/// import com.pulumi.azurenative.databricks.Workspace;
/// import com.pulumi.azurenative.databricks.WorkspaceArgs;
/// import com.pulumi.azurenative.databricks.inputs.SkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .computeMode("Serverless")
///             .location("westus")
///             .resourceGroupName("rg")
///             .sku(SkuArgs.builder()
///                 .name("premium")
///                 .build())
///             .workspaceName("myWorkspace")
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
/// const workspace = new azure_native.databricks.Workspace("workspace", {
///     computeMode: azure_native.databricks.ComputeMode.Serverless,
///     location: "westus",
///     resourceGroupName: "rg",
///     sku: {
///         name: "premium",
///     },
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.databricks.Workspace("workspace",
///     compute_mode=azure_native.databricks.ComputeMode.SERVERLESS,
///     location="westus",
///     resource_group_name="rg",
///     sku={
///         "name": "premium",
///     },
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:databricks:Workspace
///     properties:
///       computeMode: Serverless
///       location: westus
///       resourceGroupName: rg
///       sku:
///         name: premium
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update workspace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.Databricks.Workspace("workspace", new()
///     {
///         AccessConnector = new AzureNative.Databricks.Inputs.WorkspacePropertiesAccessConnectorArgs
///         {
///             Id = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/adbrg/providers/Microsoft.Databricks/accessConnectors/myAccessConnector",
///             IdentityType = AzureNative.Databricks.IdentityType.SystemAssigned,
///         },
///         ComputeMode = AzureNative.Databricks.ComputeMode.Hybrid,
///         DefaultCatalog = new AzureNative.Databricks.Inputs.DefaultCatalogPropertiesArgs
///         {
///             InitialName = "",
///             InitialType = AzureNative.Databricks.InitialType.UnityCatalog,
///         },
///         DefaultStorageFirewall = AzureNative.Databricks.DefaultStorageFirewall.Enabled,
///         Location = "westus",
///         ManagedResourceGroupId = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///         ResourceGroupName = "rg",
///         Sku = new AzureNative.Databricks.Inputs.SkuArgs
///         {
///             Name = "premium",
///         },
///         WorkspaceName = "myWorkspace",
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
/// 	databricks "github.com/pulumi/pulumi-azure-native-sdk/databricks/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databricks.NewWorkspace(ctx, "workspace", &databricks.WorkspaceArgs{
/// 			AccessConnector: &databricks.WorkspacePropertiesAccessConnectorArgs{
/// 				Id:           pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/adbrg/providers/Microsoft.Databricks/accessConnectors/myAccessConnector"),
/// 				IdentityType: pulumi.String(databricks.IdentityTypeSystemAssigned),
/// 			},
/// 			ComputeMode: pulumi.String(databricks.ComputeModeHybrid),
/// 			DefaultCatalog: &databricks.DefaultCatalogPropertiesArgs{
/// 				InitialName: pulumi.String(""),
/// 				InitialType: pulumi.String(databricks.InitialTypeUnityCatalog),
/// 			},
/// 			DefaultStorageFirewall: pulumi.String(databricks.DefaultStorageFirewallEnabled),
/// 			Location:               pulumi.String("westus"),
/// 			ManagedResourceGroupId: pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG"),
/// 			ResourceGroupName:      pulumi.String("rg"),
/// 			Sku: &databricks.SkuArgs{
/// 				Name: pulumi.String("premium"),
/// 			},
/// 			WorkspaceName: pulumi.String("myWorkspace"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_databricks_workspace" "workspace" {
///   access_connector = {
///     id            = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/adbrg/providers/Microsoft.Databricks/accessConnectors/myAccessConnector"
///     identity_type = "SystemAssigned"
///   }
///   compute_mode = "Hybrid"
///   default_catalog = {
///     initial_name = ""
///     initial_type = "UnityCatalog"
///   }
///   default_storage_firewall  = "Enabled"
///   location                  = "westus"
///   managed_resource_group_id = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG"
///   resource_group_name       = "rg"
///   sku = {
///     name = "premium"
///   }
///   workspace_name = "myWorkspace"
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
/// import com.pulumi.azurenative.databricks.Workspace;
/// import com.pulumi.azurenative.databricks.WorkspaceArgs;
/// import com.pulumi.azurenative.databricks.inputs.WorkspacePropertiesAccessConnectorArgs;
/// import com.pulumi.azurenative.databricks.inputs.DefaultCatalogPropertiesArgs;
/// import com.pulumi.azurenative.databricks.inputs.SkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .accessConnector(WorkspacePropertiesAccessConnectorArgs.builder()
///                 .id("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/adbrg/providers/Microsoft.Databricks/accessConnectors/myAccessConnector")
///                 .identityType("SystemAssigned")
///                 .build())
///             .computeMode("Hybrid")
///             .defaultCatalog(DefaultCatalogPropertiesArgs.builder()
///                 .initialName("")
///                 .initialType("UnityCatalog")
///                 .build())
///             .defaultStorageFirewall("Enabled")
///             .location("westus")
///             .managedResourceGroupId("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG")
///             .resourceGroupName("rg")
///             .sku(SkuArgs.builder()
///                 .name("premium")
///                 .build())
///             .workspaceName("myWorkspace")
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
/// const workspace = new azure_native.databricks.Workspace("workspace", {
///     accessConnector: {
///         id: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/adbrg/providers/Microsoft.Databricks/accessConnectors/myAccessConnector",
///         identityType: azure_native.databricks.IdentityType.SystemAssigned,
///     },
///     computeMode: azure_native.databricks.ComputeMode.Hybrid,
///     defaultCatalog: {
///         initialName: "",
///         initialType: azure_native.databricks.InitialType.UnityCatalog,
///     },
///     defaultStorageFirewall: azure_native.databricks.DefaultStorageFirewall.Enabled,
///     location: "westus",
///     managedResourceGroupId: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///     resourceGroupName: "rg",
///     sku: {
///         name: "premium",
///     },
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.databricks.Workspace("workspace",
///     access_connector={
///         "id": "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/adbrg/providers/Microsoft.Databricks/accessConnectors/myAccessConnector",
///         "identity_type": azure_native.databricks.IdentityType.SYSTEM_ASSIGNED,
///     },
///     compute_mode=azure_native.databricks.ComputeMode.HYBRID,
///     default_catalog={
///         "initial_name": "",
///         "initial_type": azure_native.databricks.InitialType.UNITY_CATALOG,
///     },
///     default_storage_firewall=azure_native.databricks.DefaultStorageFirewall.ENABLED,
///     location="westus",
///     managed_resource_group_id="/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///     resource_group_name="rg",
///     sku={
///         "name": "premium",
///     },
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:databricks:Workspace
///     properties:
///       accessConnector:
///         id: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/adbrg/providers/Microsoft.Databricks/accessConnectors/myAccessConnector
///         identityType: SystemAssigned
///       computeMode: Hybrid
///       defaultCatalog:
///         initialName: ""
///         initialType: UnityCatalog
///       defaultStorageFirewall: Enabled
///       location: westus
///       managedResourceGroupId: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG
///       resourceGroupName: rg
///       sku:
///         name: premium
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update workspace with custom parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.Databricks.Workspace("workspace", new()
///     {
///         AccessConnector = new AzureNative.Databricks.Inputs.WorkspacePropertiesAccessConnectorArgs
///         {
///             Id = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/adbrg/providers/Microsoft.Databricks/accessConnectors/myAccessConnector",
///             IdentityType = AzureNative.Databricks.IdentityType.UserAssigned,
///             UserAssignedIdentityId = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///         },
///         ComputeMode = AzureNative.Databricks.ComputeMode.Hybrid,
///         DefaultCatalog = new AzureNative.Databricks.Inputs.DefaultCatalogPropertiesArgs
///         {
///             InitialName = "",
///             InitialType = AzureNative.Databricks.InitialType.HiveMetastore,
///         },
///         DefaultStorageFirewall = AzureNative.Databricks.DefaultStorageFirewall.Enabled,
///         Location = "westus",
///         ManagedResourceGroupId = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///         Parameters = new AzureNative.Databricks.Inputs.WorkspaceCustomParametersArgs
///         {
///             CustomPrivateSubnetName = new AzureNative.Databricks.Inputs.WorkspaceCustomStringParameterArgs
///             {
///                 Value = "myPrivateSubnet",
///             },
///             CustomPublicSubnetName = new AzureNative.Databricks.Inputs.WorkspaceCustomStringParameterArgs
///             {
///                 Value = "myPublicSubnet",
///             },
///             CustomVirtualNetworkId = new AzureNative.Databricks.Inputs.WorkspaceCustomStringParameterArgs
///             {
///                 Value = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/myNetwork",
///             },
///         },
///         ResourceGroupName = "rg",
///         Sku = new AzureNative.Databricks.Inputs.SkuArgs
///         {
///             Name = "premium",
///         },
///         WorkspaceName = "myWorkspace",
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
/// 	databricks "github.com/pulumi/pulumi-azure-native-sdk/databricks/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databricks.NewWorkspace(ctx, "workspace", &databricks.WorkspaceArgs{
/// 			AccessConnector: &databricks.WorkspacePropertiesAccessConnectorArgs{
/// 				Id:                     pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/adbrg/providers/Microsoft.Databricks/accessConnectors/myAccessConnector"),
/// 				IdentityType:           pulumi.String(databricks.IdentityTypeUserAssigned),
/// 				UserAssignedIdentityId: pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity"),
/// 			},
/// 			ComputeMode: pulumi.String(databricks.ComputeModeHybrid),
/// 			DefaultCatalog: &databricks.DefaultCatalogPropertiesArgs{
/// 				InitialName: pulumi.String(""),
/// 				InitialType: pulumi.String(databricks.InitialTypeHiveMetastore),
/// 			},
/// 			DefaultStorageFirewall: pulumi.String(databricks.DefaultStorageFirewallEnabled),
/// 			Location:               pulumi.String("westus"),
/// 			ManagedResourceGroupId: pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG"),
/// 			Parameters: &databricks.WorkspaceCustomParametersArgs{
/// 				CustomPrivateSubnetName: &databricks.WorkspaceCustomStringParameterArgs{
/// 					Value: pulumi.String("myPrivateSubnet"),
/// 				},
/// 				CustomPublicSubnetName: &databricks.WorkspaceCustomStringParameterArgs{
/// 					Value: pulumi.String("myPublicSubnet"),
/// 				},
/// 				CustomVirtualNetworkId: &databricks.WorkspaceCustomStringParameterArgs{
/// 					Value: pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/myNetwork"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Sku: &databricks.SkuArgs{
/// 				Name: pulumi.String("premium"),
/// 			},
/// 			WorkspaceName: pulumi.String("myWorkspace"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_databricks_workspace" "workspace" {
///   access_connector = {
///     id                        = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/adbrg/providers/Microsoft.Databricks/accessConnectors/myAccessConnector"
///     identity_type             = "UserAssigned"
///     user_assigned_identity_id = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity"
///   }
///   compute_mode = "Hybrid"
///   default_catalog = {
///     initial_name = ""
///     initial_type = "HiveMetastore"
///   }
///   default_storage_firewall  = "Enabled"
///   location                  = "westus"
///   managed_resource_group_id = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG"
///   parameters = {
///     custom_private_subnet_name = {
///       value = "myPrivateSubnet"
///     }
///     custom_public_subnet_name = {
///       value = "myPublicSubnet"
///     }
///     custom_virtual_network_id = {
///       value = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/myNetwork"
///     }
///   }
///   resource_group_name = "rg"
///   sku = {
///     name = "premium"
///   }
///   workspace_name = "myWorkspace"
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
/// import com.pulumi.azurenative.databricks.Workspace;
/// import com.pulumi.azurenative.databricks.WorkspaceArgs;
/// import com.pulumi.azurenative.databricks.inputs.WorkspacePropertiesAccessConnectorArgs;
/// import com.pulumi.azurenative.databricks.inputs.DefaultCatalogPropertiesArgs;
/// import com.pulumi.azurenative.databricks.inputs.WorkspaceCustomParametersArgs;
/// import com.pulumi.azurenative.databricks.inputs.WorkspaceCustomStringParameterArgs;
/// import com.pulumi.azurenative.databricks.inputs.SkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .accessConnector(WorkspacePropertiesAccessConnectorArgs.builder()
///                 .id("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/adbrg/providers/Microsoft.Databricks/accessConnectors/myAccessConnector")
///                 .identityType("UserAssigned")
///                 .userAssignedIdentityId("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity")
///                 .build())
///             .computeMode("Hybrid")
///             .defaultCatalog(DefaultCatalogPropertiesArgs.builder()
///                 .initialName("")
///                 .initialType("HiveMetastore")
///                 .build())
///             .defaultStorageFirewall("Enabled")
///             .location("westus")
///             .managedResourceGroupId("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG")
///             .parameters(WorkspaceCustomParametersArgs.builder()
///                 .customPrivateSubnetName(WorkspaceCustomStringParameterArgs.builder()
///                     .value("myPrivateSubnet")
///                     .build())
///                 .customPublicSubnetName(WorkspaceCustomStringParameterArgs.builder()
///                     .value("myPublicSubnet")
///                     .build())
///                 .customVirtualNetworkId(WorkspaceCustomStringParameterArgs.builder()
///                     .value("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/myNetwork")
///                     .build())
///                 .build())
///             .resourceGroupName("rg")
///             .sku(SkuArgs.builder()
///                 .name("premium")
///                 .build())
///             .workspaceName("myWorkspace")
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
/// const workspace = new azure_native.databricks.Workspace("workspace", {
///     accessConnector: {
///         id: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/adbrg/providers/Microsoft.Databricks/accessConnectors/myAccessConnector",
///         identityType: azure_native.databricks.IdentityType.UserAssigned,
///         userAssignedIdentityId: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///     },
///     computeMode: azure_native.databricks.ComputeMode.Hybrid,
///     defaultCatalog: {
///         initialName: "",
///         initialType: azure_native.databricks.InitialType.HiveMetastore,
///     },
///     defaultStorageFirewall: azure_native.databricks.DefaultStorageFirewall.Enabled,
///     location: "westus",
///     managedResourceGroupId: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///     parameters: {
///         customPrivateSubnetName: {
///             value: "myPrivateSubnet",
///         },
///         customPublicSubnetName: {
///             value: "myPublicSubnet",
///         },
///         customVirtualNetworkId: {
///             value: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/myNetwork",
///         },
///     },
///     resourceGroupName: "rg",
///     sku: {
///         name: "premium",
///     },
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.databricks.Workspace("workspace",
///     access_connector={
///         "id": "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/adbrg/providers/Microsoft.Databricks/accessConnectors/myAccessConnector",
///         "identity_type": azure_native.databricks.IdentityType.USER_ASSIGNED,
///         "user_assigned_identity_id": "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///     },
///     compute_mode=azure_native.databricks.ComputeMode.HYBRID,
///     default_catalog={
///         "initial_name": "",
///         "initial_type": azure_native.databricks.InitialType.HIVE_METASTORE,
///     },
///     default_storage_firewall=azure_native.databricks.DefaultStorageFirewall.ENABLED,
///     location="westus",
///     managed_resource_group_id="/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///     parameters={
///         "custom_private_subnet_name": {
///             "value": "myPrivateSubnet",
///         },
///         "custom_public_subnet_name": {
///             "value": "myPublicSubnet",
///         },
///         "custom_virtual_network_id": {
///             "value": "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/myNetwork",
///         },
///     },
///     resource_group_name="rg",
///     sku={
///         "name": "premium",
///     },
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:databricks:Workspace
///     properties:
///       accessConnector:
///         id: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/adbrg/providers/Microsoft.Databricks/accessConnectors/myAccessConnector
///         identityType: UserAssigned
///         userAssignedIdentityId: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity
///       computeMode: Hybrid
///       defaultCatalog:
///         initialName: ""
///         initialType: HiveMetastore
///       defaultStorageFirewall: Enabled
///       location: westus
///       managedResourceGroupId: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG
///       parameters:
///         customPrivateSubnetName:
///           value: myPrivateSubnet
///         customPublicSubnetName:
///           value: myPublicSubnet
///         customVirtualNetworkId:
///           value: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/rg/providers/Microsoft.Network/virtualNetworks/myNetwork
///       resourceGroupName: rg
///       sku:
///         name: premium
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Enable Customer-Managed Key (CMK) encryption on a workspace which is prepared for encryption
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.Databricks.Workspace("workspace", new()
///     {
///         ComputeMode = AzureNative.Databricks.ComputeMode.Hybrid,
///         Location = "westus",
///         ManagedResourceGroupId = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///         Parameters = new AzureNative.Databricks.Inputs.WorkspaceCustomParametersArgs
///         {
///             Encryption = new AzureNative.Databricks.Inputs.WorkspaceEncryptionParameterArgs
///             {
///                 Value = new AzureNative.Databricks.Inputs.EncryptionArgs
///                 {
///                     KeyName = "myKeyName",
///                     KeySource = AzureNative.Databricks.KeySource.Microsoft_Keyvault,
///                     KeyVaultUri = "https://myKeyVault.vault.azure.net/",
///                     KeyVersion = "00000000000000000000000000000000",
///                 },
///             },
///             PrepareEncryption = new AzureNative.Databricks.Inputs.WorkspaceCustomBooleanParameterArgs
///             {
///                 Value = true,
///             },
///         },
///         ResourceGroupName = "rg",
///         Sku = new AzureNative.Databricks.Inputs.SkuArgs
///         {
///             Name = "premium",
///         },
///         WorkspaceName = "myWorkspace",
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
/// 	databricks "github.com/pulumi/pulumi-azure-native-sdk/databricks/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databricks.NewWorkspace(ctx, "workspace", &databricks.WorkspaceArgs{
/// 			ComputeMode:            pulumi.String(databricks.ComputeModeHybrid),
/// 			Location:               pulumi.String("westus"),
/// 			ManagedResourceGroupId: pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG"),
/// 			Parameters: &databricks.WorkspaceCustomParametersArgs{
/// 				Encryption: &databricks.WorkspaceEncryptionParameterArgs{
/// 					Value: &databricks.EncryptionArgs{
/// 						KeyName:     pulumi.String("myKeyName"),
/// 						KeySource:   pulumi.String(databricks.KeySource_Microsoft_Keyvault),
/// 						KeyVaultUri: pulumi.String("https://myKeyVault.vault.azure.net/"),
/// 						KeyVersion:  pulumi.String("00000000000000000000000000000000"),
/// 					},
/// 				},
/// 				PrepareEncryption: &databricks.WorkspaceCustomBooleanParameterArgs{
/// 					Value: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Sku: &databricks.SkuArgs{
/// 				Name: pulumi.String("premium"),
/// 			},
/// 			WorkspaceName: pulumi.String("myWorkspace"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_databricks_workspace" "workspace" {
///   compute_mode              = "Hybrid"
///   location                  = "westus"
///   managed_resource_group_id = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG"
///   parameters = {
///     encryption = {
///       value = {
///         key_name      = "myKeyName"
///         key_source    = "Microsoft.Keyvault"
///         key_vault_uri = "https://myKeyVault.vault.azure.net/"
///         key_version   = "00000000000000000000000000000000"
///       }
///     }
///     prepare_encryption = {
///       value = true
///     }
///   }
///   resource_group_name = "rg"
///   sku = {
///     name = "premium"
///   }
///   workspace_name = "myWorkspace"
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
/// import com.pulumi.azurenative.databricks.Workspace;
/// import com.pulumi.azurenative.databricks.WorkspaceArgs;
/// import com.pulumi.azurenative.databricks.inputs.WorkspaceCustomParametersArgs;
/// import com.pulumi.azurenative.databricks.inputs.WorkspaceEncryptionParameterArgs;
/// import com.pulumi.azurenative.databricks.inputs.EncryptionArgs;
/// import com.pulumi.azurenative.databricks.inputs.WorkspaceCustomBooleanParameterArgs;
/// import com.pulumi.azurenative.databricks.inputs.SkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .computeMode("Hybrid")
///             .location("westus")
///             .managedResourceGroupId("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG")
///             .parameters(WorkspaceCustomParametersArgs.builder()
///                 .encryption(WorkspaceEncryptionParameterArgs.builder()
///                     .value(EncryptionArgs.builder()
///                         .keyName("myKeyName")
///                         .keySource("Microsoft.Keyvault")
///                         .keyVaultUri("https://myKeyVault.vault.azure.net/")
///                         .keyVersion("00000000000000000000000000000000")
///                         .build())
///                     .build())
///                 .prepareEncryption(WorkspaceCustomBooleanParameterArgs.builder()
///                     .value(true)
///                     .build())
///                 .build())
///             .resourceGroupName("rg")
///             .sku(SkuArgs.builder()
///                 .name("premium")
///                 .build())
///             .workspaceName("myWorkspace")
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
/// const workspace = new azure_native.databricks.Workspace("workspace", {
///     computeMode: azure_native.databricks.ComputeMode.Hybrid,
///     location: "westus",
///     managedResourceGroupId: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///     parameters: {
///         encryption: {
///             value: {
///                 keyName: "myKeyName",
///                 keySource: azure_native.databricks.KeySource.Microsoft_Keyvault,
///                 keyVaultUri: "https://myKeyVault.vault.azure.net/",
///                 keyVersion: "00000000000000000000000000000000",
///             },
///         },
///         prepareEncryption: {
///             value: true,
///         },
///     },
///     resourceGroupName: "rg",
///     sku: {
///         name: "premium",
///     },
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.databricks.Workspace("workspace",
///     compute_mode=azure_native.databricks.ComputeMode.HYBRID,
///     location="westus",
///     managed_resource_group_id="/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///     parameters={
///         "encryption": {
///             "value": {
///                 "key_name": "myKeyName",
///                 "key_source": azure_native.databricks.KeySource.MICROSOFT_KEYVAULT,
///                 "key_vault_uri": "https://myKeyVault.vault.azure.net/",
///                 "key_version": "00000000000000000000000000000000",
///             },
///         },
///         "prepare_encryption": {
///             "value": True,
///         },
///     },
///     resource_group_name="rg",
///     sku={
///         "name": "premium",
///     },
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:databricks:Workspace
///     properties:
///       computeMode: Hybrid
///       location: westus
///       managedResourceGroupId: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG
///       parameters:
///         encryption:
///           value:
///             keyName: myKeyName
///             keySource: Microsoft.Keyvault
///             keyVaultUri: https://myKeyVault.vault.azure.net/
///             keyVersion: '00000000000000000000000000000000'
///         prepareEncryption:
///           value: true
///       resourceGroupName: rg
///       sku:
///         name: premium
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Revert Customer-Managed Key (CMK) encryption to Microsoft Managed Keys encryption on a workspace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.Databricks.Workspace("workspace", new()
///     {
///         ComputeMode = AzureNative.Databricks.ComputeMode.Hybrid,
///         Location = "westus",
///         ManagedResourceGroupId = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///         Parameters = new AzureNative.Databricks.Inputs.WorkspaceCustomParametersArgs
///         {
///             Encryption = new AzureNative.Databricks.Inputs.WorkspaceEncryptionParameterArgs
///             {
///                 Value = new AzureNative.Databricks.Inputs.EncryptionArgs
///                 {
///                     KeySource = AzureNative.Databricks.KeySource.Default,
///                 },
///             },
///         },
///         ResourceGroupName = "rg",
///         Sku = new AzureNative.Databricks.Inputs.SkuArgs
///         {
///             Name = "premium",
///         },
///         WorkspaceName = "myWorkspace",
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
/// 	databricks "github.com/pulumi/pulumi-azure-native-sdk/databricks/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databricks.NewWorkspace(ctx, "workspace", &databricks.WorkspaceArgs{
/// 			ComputeMode:            pulumi.String(databricks.ComputeModeHybrid),
/// 			Location:               pulumi.String("westus"),
/// 			ManagedResourceGroupId: pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG"),
/// 			Parameters: &databricks.WorkspaceCustomParametersArgs{
/// 				Encryption: &databricks.WorkspaceEncryptionParameterArgs{
/// 					Value: &databricks.EncryptionArgs{
/// 						KeySource: pulumi.String(databricks.KeySourceDefault),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Sku: &databricks.SkuArgs{
/// 				Name: pulumi.String("premium"),
/// 			},
/// 			WorkspaceName: pulumi.String("myWorkspace"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_databricks_workspace" "workspace" {
///   compute_mode              = "Hybrid"
///   location                  = "westus"
///   managed_resource_group_id = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG"
///   parameters = {
///     encryption = {
///       value = {
///         key_source = "Default"
///       }
///     }
///   }
///   resource_group_name = "rg"
///   sku = {
///     name = "premium"
///   }
///   workspace_name = "myWorkspace"
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
/// import com.pulumi.azurenative.databricks.Workspace;
/// import com.pulumi.azurenative.databricks.WorkspaceArgs;
/// import com.pulumi.azurenative.databricks.inputs.WorkspaceCustomParametersArgs;
/// import com.pulumi.azurenative.databricks.inputs.WorkspaceEncryptionParameterArgs;
/// import com.pulumi.azurenative.databricks.inputs.EncryptionArgs;
/// import com.pulumi.azurenative.databricks.inputs.SkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .computeMode("Hybrid")
///             .location("westus")
///             .managedResourceGroupId("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG")
///             .parameters(WorkspaceCustomParametersArgs.builder()
///                 .encryption(WorkspaceEncryptionParameterArgs.builder()
///                     .value(EncryptionArgs.builder()
///                         .keySource("Default")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("rg")
///             .sku(SkuArgs.builder()
///                 .name("premium")
///                 .build())
///             .workspaceName("myWorkspace")
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
/// const workspace = new azure_native.databricks.Workspace("workspace", {
///     computeMode: azure_native.databricks.ComputeMode.Hybrid,
///     location: "westus",
///     managedResourceGroupId: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///     parameters: {
///         encryption: {
///             value: {
///                 keySource: azure_native.databricks.KeySource.Default,
///             },
///         },
///     },
///     resourceGroupName: "rg",
///     sku: {
///         name: "premium",
///     },
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.databricks.Workspace("workspace",
///     compute_mode=azure_native.databricks.ComputeMode.HYBRID,
///     location="westus",
///     managed_resource_group_id="/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///     parameters={
///         "encryption": {
///             "value": {
///                 "key_source": azure_native.databricks.KeySource.DEFAULT,
///             },
///         },
///     },
///     resource_group_name="rg",
///     sku={
///         "name": "premium",
///     },
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:databricks:Workspace
///     properties:
///       computeMode: Hybrid
///       location: westus
///       managedResourceGroupId: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG
///       parameters:
///         encryption:
///           value:
///             keySource: Default
///       resourceGroupName: rg
///       sku:
///         name: premium
///       workspaceName: myWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update a workspace with Customer-Managed Key (CMK) encryption for Managed Disks
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.Databricks.Workspace("workspace", new()
///     {
///         ComputeMode = AzureNative.Databricks.ComputeMode.Hybrid,
///         Encryption = new AzureNative.Databricks.Inputs.WorkspacePropertiesEncryptionArgs
///         {
///             Entities = new AzureNative.Databricks.Inputs.EncryptionEntitiesDefinitionArgs
///             {
///                 ManagedDisk = new AzureNative.Databricks.Inputs.ManagedDiskEncryptionArgs
///                 {
///                     KeySource = AzureNative.Databricks.EncryptionKeySource.Microsoft_Keyvault,
///                     KeyVaultProperties = new AzureNative.Databricks.Inputs.ManagedDiskEncryptionKeyVaultPropertiesArgs
///                     {
///                         KeyName = "test-cmk-key",
///                         KeyVaultUri = "https://test-vault-name.vault.azure.net/",
///                         KeyVersion = "00000000000000000000000000000000",
///                     },
///                     RotationToLatestKeyVersionEnabled = true,
///                 },
///             },
///         },
///         Location = "westus",
///         ManagedResourceGroupId = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///         ResourceGroupName = "rg",
///         Sku = new AzureNative.Databricks.Inputs.SkuArgs
///         {
///             Name = "premium",
///         },
///         Tags =
///         {
///             { "mytag1", "myvalue1" },
///         },
///         WorkspaceName = "myWorkspace",
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
/// 	databricks "github.com/pulumi/pulumi-azure-native-sdk/databricks/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databricks.NewWorkspace(ctx, "workspace", &databricks.WorkspaceArgs{
/// 			ComputeMode: pulumi.String(databricks.ComputeModeHybrid),
/// 			Encryption: &databricks.WorkspacePropertiesEncryptionArgs{
/// 				Entities: &databricks.EncryptionEntitiesDefinitionArgs{
/// 					ManagedDisk: &databricks.ManagedDiskEncryptionArgs{
/// 						KeySource: pulumi.String(databricks.EncryptionKeySource_Microsoft_Keyvault),
/// 						KeyVaultProperties: &databricks.ManagedDiskEncryptionKeyVaultPropertiesArgs{
/// 							KeyName:     pulumi.String("test-cmk-key"),
/// 							KeyVaultUri: pulumi.String("https://test-vault-name.vault.azure.net/"),
/// 							KeyVersion:  pulumi.String("00000000000000000000000000000000"),
/// 						},
/// 						RotationToLatestKeyVersionEnabled: pulumi.Bool(true),
/// 					},
/// 				},
/// 			},
/// 			Location:               pulumi.String("westus"),
/// 			ManagedResourceGroupId: pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG"),
/// 			ResourceGroupName:      pulumi.String("rg"),
/// 			Sku: &databricks.SkuArgs{
/// 				Name: pulumi.String("premium"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"mytag1": pulumi.String("myvalue1"),
/// 			},
/// 			WorkspaceName: pulumi.String("myWorkspace"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_databricks_workspace" "workspace" {
///   compute_mode = "Hybrid"
///   encryption = {
///     entities = {
///       managed_disk = {
///         key_source = "Microsoft.Keyvault"
///         key_vault_properties = {
///           key_name      = "test-cmk-key"
///           key_vault_uri = "https://test-vault-name.vault.azure.net/"
///           key_version   = "00000000000000000000000000000000"
///         }
///         rotation_to_latest_key_version_enabled = true
///       }
///     }
///   }
///   location                  = "westus"
///   managed_resource_group_id = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG"
///   resource_group_name       = "rg"
///   sku = {
///     name = "premium"
///   }
///   tags = {
///     "mytag1" = "myvalue1"
///   }
///   workspace_name = "myWorkspace"
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
/// import com.pulumi.azurenative.databricks.Workspace;
/// import com.pulumi.azurenative.databricks.WorkspaceArgs;
/// import com.pulumi.azurenative.databricks.inputs.WorkspacePropertiesEncryptionArgs;
/// import com.pulumi.azurenative.databricks.inputs.EncryptionEntitiesDefinitionArgs;
/// import com.pulumi.azurenative.databricks.inputs.ManagedDiskEncryptionArgs;
/// import com.pulumi.azurenative.databricks.inputs.ManagedDiskEncryptionKeyVaultPropertiesArgs;
/// import com.pulumi.azurenative.databricks.inputs.SkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .computeMode("Hybrid")
///             .encryption(WorkspacePropertiesEncryptionArgs.builder()
///                 .entities(EncryptionEntitiesDefinitionArgs.builder()
///                     .managedDisk(ManagedDiskEncryptionArgs.builder()
///                         .keySource("Microsoft.Keyvault")
///                         .keyVaultProperties(ManagedDiskEncryptionKeyVaultPropertiesArgs.builder()
///                             .keyName("test-cmk-key")
///                             .keyVaultUri("https://test-vault-name.vault.azure.net/")
///                             .keyVersion("00000000000000000000000000000000")
///                             .build())
///                         .rotationToLatestKeyVersionEnabled(true)
///                         .build())
///                     .build())
///                 .build())
///             .location("westus")
///             .managedResourceGroupId("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG")
///             .resourceGroupName("rg")
///             .sku(SkuArgs.builder()
///                 .name("premium")
///                 .build())
///             .tags(Map.of("mytag1", "myvalue1"))
///             .workspaceName("myWorkspace")
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
/// const workspace = new azure_native.databricks.Workspace("workspace", {
///     computeMode: azure_native.databricks.ComputeMode.Hybrid,
///     encryption: {
///         entities: {
///             managedDisk: {
///                 keySource: azure_native.databricks.EncryptionKeySource.Microsoft_Keyvault,
///                 keyVaultProperties: {
///                     keyName: "test-cmk-key",
///                     keyVaultUri: "https://test-vault-name.vault.azure.net/",
///                     keyVersion: "00000000000000000000000000000000",
///                 },
///                 rotationToLatestKeyVersionEnabled: true,
///             },
///         },
///     },
///     location: "westus",
///     managedResourceGroupId: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///     resourceGroupName: "rg",
///     sku: {
///         name: "premium",
///     },
///     tags: {
///         mytag1: "myvalue1",
///     },
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.databricks.Workspace("workspace",
///     compute_mode=azure_native.databricks.ComputeMode.HYBRID,
///     encryption={
///         "entities": {
///             "managed_disk": {
///                 "key_source": azure_native.databricks.EncryptionKeySource.MICROSOFT_KEYVAULT,
///                 "key_vault_properties": {
///                     "key_name": "test-cmk-key",
///                     "key_vault_uri": "https://test-vault-name.vault.azure.net/",
///                     "key_version": "00000000000000000000000000000000",
///                 },
///                 "rotation_to_latest_key_version_enabled": True,
///             },
///         },
///     },
///     location="westus",
///     managed_resource_group_id="/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG",
///     resource_group_name="rg",
///     sku={
///         "name": "premium",
///     },
///     tags={
///         "mytag1": "myvalue1",
///     },
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:databricks:Workspace
///     properties:
///       computeMode: Hybrid
///       encryption:
///         entities:
///           managedDisk:
///             keySource: Microsoft.Keyvault
///             keyVaultProperties:
///               keyName: test-cmk-key
///               keyVaultUri: https://test-vault-name.vault.azure.net/
///               keyVersion: '00000000000000000000000000000000'
///             rotationToLatestKeyVersionEnabled: true
///       location: westus
///       managedResourceGroupId: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/myManagedRG
///       resourceGroupName: rg
///       sku:
///         name: premium
///       tags:
///         mytag1: myvalue1
///       workspaceName: myWorkspace
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
/// $ pulumi import azure-native:databricks:Workspace myWorkspace /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Databricks/workspaces/{workspaceName}
/// ```
class Workspace extends pulumi.CustomResource {
  /// Access Connector Resource that is going to be associated with Databricks Workspace. Not allowed in Serverless ComputeMode workspace.
  late final pulumi.Output<WorkspacePropertiesAccessConnectorResponse?> accessConnector;
  /// The workspace provider authorizations.
  late final pulumi.Output<List<Map<String, dynamic>>?> authorizations;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The workspace compute mode. Required on create, cannot be changed. Possible values include: 'Serverless', 'Hybrid'
  late final pulumi.Output<String> computeMode;
  /// Indicates the Object ID, PUID and Application ID of entity that created the workspace.
  late final pulumi.Output<CreatedByResponse?> createdBy;
  /// Specifies the date and time when the workspace is created.
  late final pulumi.Output<String> createdDateTime;
  /// Properties for Default Catalog configuration during workspace creation. Not allowed in Serverless ComputeMode workspace.
  late final pulumi.Output<DefaultCatalogPropertiesResponse?> defaultCatalog;
  /// Gets or Sets Default Storage Firewall configuration information. Not allowed in Serverless ComputeMode workspace.
  late final pulumi.Output<String?> defaultStorageFirewall;
  /// The resource Id of the managed disk encryption set. Not allowed in Serverless ComputeMode workspace.
  late final pulumi.Output<String> diskEncryptionSetId;
  /// Encryption properties for databricks workspace. Supported in both Serverless and Hybrid ComputeMode workspace.
  late final pulumi.Output<WorkspacePropertiesEncryptionResponse?> encryption;
  /// Contains settings related to the Enhanced Security and Compliance Add-On. Supported in both Serverless and Hybrid ComputeMode workspace.
  late final pulumi.Output<EnhancedSecurityComplianceDefinitionResponse?> enhancedSecurityCompliance;
  /// Indicates whether unity catalog enabled for the workspace or not. Set as true in Serverless ComputeMode workspace.
  late final pulumi.Output<bool> isUcEnabled;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The details of Managed Identity of Disk Encryption Set used for Managed Disk Encryption. Only returned in Hybrid ComputeMode workspace.
  late final pulumi.Output<ManagedIdentityConfigurationResponse?> managedDiskIdentity;
  /// The managed resource group Id. Required in Hybrid ComputeMode workspace. Not allowed in Serverless ComputeMode workspace.
  late final pulumi.Output<String?> managedResourceGroupId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The workspace's custom parameters.
  late final pulumi.Output<WorkspaceCustomParametersResponse?> parameters;
  /// Private endpoint connections created on the workspace. Supported in both Serverless and Hybrid ComputeMode workspace.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// The workspace provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The network access type for accessing workspace. Set value to disabled to access workspace only via private link. Used to configure front-end only private link for Serverless ComputeMode workspace.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Gets or sets a value indicating whether data plane (clusters) to control plane communication happen over private endpoint. Supported values are 'AllRules' and 'NoAzureDatabricksRules'. 'NoAzureServiceRules' value is for internal use only. Not allowed in Serverless ComputeMode workspace.
  late final pulumi.Output<String?> requiredNsgRules;
  /// The SKU of the resource.
  late final pulumi.Output<SkuResponse?> sku;
  /// The details of Managed Identity of Storage Account. Only returned in Hybrid ComputeMode workspace.
  late final pulumi.Output<ManagedIdentityConfigurationResponse?> storageAccountIdentity;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The blob URI where the UI definition file is located.
  late final pulumi.Output<String?> uiDefinitionUri;
  /// Indicates the Object ID, PUID and Application ID of entity that last updated the workspace.
  late final pulumi.Output<CreatedByResponse?> updatedBy;
  /// The unique identifier of the databricks workspace in databricks control plane.
  late final pulumi.Output<String> workspaceId;
  /// The workspace URL which is of the format 'adb-{workspaceId}.{random}.azuredatabricks.net'
  late final pulumi.Output<String> workspaceUrl;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_databricks_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databricks:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessConnector = registerOutput<WorkspacePropertiesAccessConnectorResponse?>('accessConnector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspacePropertiesAccessConnectorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorizations = registerOutput<List<Map<String, dynamic>>?>('authorizations');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    computeMode = registerOutput<String>('computeMode');
    createdBy = registerOutput<CreatedByResponse?>('createdBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CreatedByResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdDateTime = registerOutput<String>('createdDateTime');
    defaultCatalog = registerOutput<DefaultCatalogPropertiesResponse?>('defaultCatalog', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DefaultCatalogPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultStorageFirewall = registerOutput<String?>('defaultStorageFirewall');
    diskEncryptionSetId = registerOutput<String>('diskEncryptionSetId');
    encryption = registerOutput<WorkspacePropertiesEncryptionResponse?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspacePropertiesEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enhancedSecurityCompliance = registerOutput<EnhancedSecurityComplianceDefinitionResponse?>('enhancedSecurityCompliance', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnhancedSecurityComplianceDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isUcEnabled = registerOutput<bool>('isUcEnabled');
    location = registerOutput<String>('location');
    managedDiskIdentity = registerOutput<ManagedIdentityConfigurationResponse?>('managedDiskIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedIdentityConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedResourceGroupId = registerOutput<String?>('managedResourceGroupId');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<WorkspaceCustomParametersResponse?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceCustomParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    requiredNsgRules = registerOutput<String?>('requiredNsgRules');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccountIdentity = registerOutput<ManagedIdentityConfigurationResponse?>('storageAccountIdentity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedIdentityConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    uiDefinitionUri = registerOutput<String?>('uiDefinitionUri');
    updatedBy = registerOutput<CreatedByResponse?>('updatedBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CreatedByResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workspaceId = registerOutput<String>('workspaceId');
    workspaceUrl = registerOutput<String>('workspaceUrl');
  }
}
