import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_secret_reference_response.dart';
import 'virtual_machine_scale_set_extension_args.dart';

/// Describes a Virtual Machine Scale Set Extension.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VirtualMachineScaleSetExtension_CreateOrUpdate_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSetExtension = new AzureNative.Compute.VirtualMachineScaleSetExtension("virtualMachineScaleSetExtension", new()
///     {
///         AutoUpgradeMinorVersion = true,
///         EnableAutomaticUpgrade = true,
///         ForceUpdateTag = "aaaaaaaaa",
///         Name = "{extension-name}",
///         ProtectedSettings = null,
///         ProvisionAfterExtensions = new[]
///         {
///             "aa",
///         },
///         Publisher = "{extension-Publisher}",
///         ResourceGroupName = "rgcompute",
///         Settings = null,
///         SuppressFailures = true,
///         Type = "{extension-Type}",
///         TypeHandlerVersion = "{handler-version}",
///         VmScaleSetName = "aaaaaaa",
///         VmssExtensionName = "aaaaaaaaaaaaaaaaaaaaa",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachineScaleSetExtension(ctx, "virtualMachineScaleSetExtension", &compute.VirtualMachineScaleSetExtensionArgs{
/// 			AutoUpgradeMinorVersion: pulumi.Bool(true),
/// 			EnableAutomaticUpgrade:  pulumi.Bool(true),
/// 			ForceUpdateTag:          pulumi.String("aaaaaaaaa"),
/// 			Name:                    pulumi.String("{extension-name}"),
/// 			ProtectedSettings:       pulumi.Any(map[string]interface{}{}),
/// 			ProvisionAfterExtensions: pulumi.StringArray{
/// 				pulumi.String("aa"),
/// 			},
/// 			Publisher:          pulumi.String("{extension-Publisher}"),
/// 			ResourceGroupName:  pulumi.String("rgcompute"),
/// 			Settings:           pulumi.Any(map[string]interface{}{}),
/// 			SuppressFailures:   pulumi.Bool(true),
/// 			Type:               pulumi.String("{extension-Type}"),
/// 			TypeHandlerVersion: pulumi.String("{handler-version}"),
/// 			VmScaleSetName:     pulumi.String("aaaaaaa"),
/// 			VmssExtensionName:  pulumi.String("aaaaaaaaaaaaaaaaaaaaa"),
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
/// resource "azure-native_compute_virtualmachinescalesetextension" "virtualMachineScaleSetExtension" {
///   auto_upgrade_minor_version = true
///   enable_automatic_upgrade   = true
///   force_update_tag           = "aaaaaaaaa"
///   name                       = "{extension-name}"
///   protected_settings         = {}
///   provision_after_extensions = ["aa"]
///   publisher                  = "{extension-Publisher}"
///   resource_group_name        = "rgcompute"
///   settings                   = {}
///   suppress_failures          = true
///   type                       = "{extension-Type}"
///   type_handler_version       = "{handler-version}"
///   vm_scale_set_name          = "aaaaaaa"
///   vmss_extension_name        = "aaaaaaaaaaaaaaaaaaaaa"
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetExtension;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetExtensionArgs;
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
///         var virtualMachineScaleSetExtension = new VirtualMachineScaleSetExtension("virtualMachineScaleSetExtension", VirtualMachineScaleSetExtensionArgs.builder()
///             .autoUpgradeMinorVersion(true)
///             .enableAutomaticUpgrade(true)
///             .forceUpdateTag("aaaaaaaaa")
///             .name("{extension-name}")
///             .protectedSettings(Map.ofEntries(
///             ))
///             .provisionAfterExtensions("aa")
///             .publisher("{extension-Publisher}")
///             .resourceGroupName("rgcompute")
///             .settings(Map.ofEntries(
///             ))
///             .suppressFailures(true)
///             .type("{extension-Type}")
///             .typeHandlerVersion("{handler-version}")
///             .vmScaleSetName("aaaaaaa")
///             .vmssExtensionName("aaaaaaaaaaaaaaaaaaaaa")
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
/// const virtualMachineScaleSetExtension = new azure_native.compute.VirtualMachineScaleSetExtension("virtualMachineScaleSetExtension", {
///     autoUpgradeMinorVersion: true,
///     enableAutomaticUpgrade: true,
///     forceUpdateTag: "aaaaaaaaa",
///     name: "{extension-name}",
///     protectedSettings: {},
///     provisionAfterExtensions: ["aa"],
///     publisher: "{extension-Publisher}",
///     resourceGroupName: "rgcompute",
///     settings: {},
///     suppressFailures: true,
///     type: "{extension-Type}",
///     typeHandlerVersion: "{handler-version}",
///     vmScaleSetName: "aaaaaaa",
///     vmssExtensionName: "aaaaaaaaaaaaaaaaaaaaa",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set_extension = azure_native.compute.VirtualMachineScaleSetExtension("virtualMachineScaleSetExtension",
///     auto_upgrade_minor_version=True,
///     enable_automatic_upgrade=True,
///     force_update_tag="aaaaaaaaa",
///     name="{extension-name}",
///     protected_settings={},
///     provision_after_extensions=["aa"],
///     publisher="{extension-Publisher}",
///     resource_group_name="rgcompute",
///     settings={},
///     suppress_failures=True,
///     type="{extension-Type}",
///     type_handler_version="{handler-version}",
///     vm_scale_set_name="aaaaaaa",
///     vmss_extension_name="aaaaaaaaaaaaaaaaaaaaa")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSetExtension:
///     type: azure-native:compute:VirtualMachineScaleSetExtension
///     properties:
///       autoUpgradeMinorVersion: true
///       enableAutomaticUpgrade: true
///       forceUpdateTag: aaaaaaaaa
///       name: '{extension-name}'
///       protectedSettings: {}
///       provisionAfterExtensions:
///         - aa
///       publisher: '{extension-Publisher}'
///       resourceGroupName: rgcompute
///       settings: {}
///       suppressFailures: true
///       type: '{extension-Type}'
///       typeHandlerVersion: '{handler-version}'
///       vmScaleSetName: aaaaaaa
///       vmssExtensionName: aaaaaaaaaaaaaaaaaaaaa
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### VirtualMachineScaleSetExtension_CreateOrUpdate_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSetExtension = new AzureNative.Compute.VirtualMachineScaleSetExtension("virtualMachineScaleSetExtension", new()
///     {
///         ResourceGroupName = "rgcompute",
///         VmScaleSetName = "aaaaaaaaaaa",
///         VmssExtensionName = "aaaaaaaaaaa",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewVirtualMachineScaleSetExtension(ctx, "virtualMachineScaleSetExtension", &compute.VirtualMachineScaleSetExtensionArgs{
/// 			ResourceGroupName: pulumi.String("rgcompute"),
/// 			VmScaleSetName:    pulumi.String("aaaaaaaaaaa"),
/// 			VmssExtensionName: pulumi.String("aaaaaaaaaaa"),
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
/// resource "azure-native_compute_virtualmachinescalesetextension" "virtualMachineScaleSetExtension" {
///   resource_group_name = "rgcompute"
///   vm_scale_set_name   = "aaaaaaaaaaa"
///   vmss_extension_name = "aaaaaaaaaaa"
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetExtension;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetExtensionArgs;
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
///         var virtualMachineScaleSetExtension = new VirtualMachineScaleSetExtension("virtualMachineScaleSetExtension", VirtualMachineScaleSetExtensionArgs.builder()
///             .resourceGroupName("rgcompute")
///             .vmScaleSetName("aaaaaaaaaaa")
///             .vmssExtensionName("aaaaaaaaaaa")
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
/// const virtualMachineScaleSetExtension = new azure_native.compute.VirtualMachineScaleSetExtension("virtualMachineScaleSetExtension", {
///     resourceGroupName: "rgcompute",
///     vmScaleSetName: "aaaaaaaaaaa",
///     vmssExtensionName: "aaaaaaaaaaa",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set_extension = azure_native.compute.VirtualMachineScaleSetExtension("virtualMachineScaleSetExtension",
///     resource_group_name="rgcompute",
///     vm_scale_set_name="aaaaaaaaaaa",
///     vmss_extension_name="aaaaaaaaaaa")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSetExtension:
///     type: azure-native:compute:VirtualMachineScaleSetExtension
///     properties:
///       resourceGroupName: rgcompute
///       vmScaleSetName: aaaaaaaaaaa
///       vmssExtensionName: aaaaaaaaaaa
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
/// $ pulumi import azure-native:compute:VirtualMachineScaleSetExtension {extension-name} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/extensions/{vmssExtensionName}
/// ```
class VirtualMachineScaleSetExtensionCompute extends pulumi.CustomResource {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  late final pulumi.Output<bool?> autoUpgradeMinorVersion;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  late final pulumi.Output<bool?> enableAutomaticUpgrade;
  /// If a value is provided and is different from the previous value, the extension handler will be forced to update even if the extension configuration has not changed.
  late final pulumi.Output<String?> forceUpdateTag;
  /// Resource name
  late final pulumi.Output<String?> name;
  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  late final pulumi.Output<dynamic> protectedSettings;
  /// The extensions protected settings that are passed by reference, and consumed from key vault
  late final pulumi.Output<KeyVaultSecretReferenceResponse?> protectedSettingsFromKeyVault;
  /// Collection of extension names after which this extension needs to be provisioned.
  late final pulumi.Output<List<String>?> provisionAfterExtensions;
  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// The name of the extension handler publisher.
  late final pulumi.Output<String?> publisher;
  /// Json formatted public settings for the extension.
  late final pulumi.Output<dynamic> settings;
  /// Indicates whether failures stemming from the extension will be suppressed (Operational failures such as not connecting to the VM will not be suppressed regardless of this value). The default is false.
  late final pulumi.Output<bool?> suppressFailures;
  /// Resource type
  late final pulumi.Output<String> type;
  /// Specifies the version of the script handler.
  late final pulumi.Output<String?> typeHandlerVersion;

  /// Creates a new [VirtualMachineScaleSetExtensionCompute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineScaleSetExtensionCompute]. {@macro pulumi_compute_virtual_machine_scale_set_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineScaleSetExtensionCompute(
    String name, {
    VirtualMachineScaleSetExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:VirtualMachineScaleSetExtension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoUpgradeMinorVersion = registerOutput<bool?>('autoUpgradeMinorVersion');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    enableAutomaticUpgrade = registerOutput<bool?>('enableAutomaticUpgrade');
    forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    this.name = registerOutput<String?>('name');
    protectedSettings = registerOutput<dynamic>('protectedSettings');
    protectedSettingsFromKeyVault = registerOutput<KeyVaultSecretReferenceResponse?>('protectedSettingsFromKeyVault', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyVaultSecretReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisionAfterExtensions = registerOutput<List<String>?>('provisionAfterExtensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    provisioningState = registerOutput<String>('provisioningState');
    publisher = registerOutput<String?>('publisher');
    settings = registerOutput<dynamic>('settings');
    suppressFailures = registerOutput<bool?>('suppressFailures');
    type = registerOutput<String>('type');
    typeHandlerVersion = registerOutput<String?>('typeHandlerVersion');
  }

  /// Creates a typed reference to an existing [VirtualMachineScaleSetExtensionCompute] resource.
  VirtualMachineScaleSetExtensionCompute.reference(String urn)
    : super(
        'azure-native:compute:VirtualMachineScaleSetExtension',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autoUpgradeMinorVersion = registerOutput<bool?>('autoUpgradeMinorVersion');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    enableAutomaticUpgrade = registerOutput<bool?>('enableAutomaticUpgrade');
    forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    this.name = registerOutput<String?>('name');
    protectedSettings = registerOutput<dynamic>('protectedSettings');
    protectedSettingsFromKeyVault = registerOutput<KeyVaultSecretReferenceResponse?>('protectedSettingsFromKeyVault', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyVaultSecretReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisionAfterExtensions = registerOutput<List<String>?>('provisionAfterExtensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    provisioningState = registerOutput<String>('provisioningState');
    publisher = registerOutput<String?>('publisher');
    settings = registerOutput<dynamic>('settings');
    suppressFailures = registerOutput<bool?>('suppressFailures');
    type = registerOutput<String>('type');
    typeHandlerVersion = registerOutput<String?>('typeHandlerVersion');
  }
}
