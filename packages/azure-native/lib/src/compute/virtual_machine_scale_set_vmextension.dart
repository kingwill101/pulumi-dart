import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_secret_reference_response.dart';
import 'virtual_machine_extension_instance_view_response.dart';
import 'virtual_machine_scale_set_vmextension_args.dart';

/// Describes a VMSS VM Extension.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create VirtualMachineScaleSet VM extension.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineScaleSetVMExtension = new AzureNative.Compute.VirtualMachineScaleSetVMExtension("virtualMachineScaleSetVMExtension", new()
///     {
///         AutoUpgradeMinorVersion = true,
///         InstanceId = "0",
///         Publisher = "extPublisher",
///         ResourceGroupName = "myResourceGroup",
///         Settings = new Dictionary<string, object?>
///         {
///             ["UserName"] = "xyz@microsoft.com",
///         },
///         Type = "extType",
///         TypeHandlerVersion = "1.2",
///         VmExtensionName = "myVMExtension",
///         VmScaleSetName = "myvmScaleSet",
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
/// 		_, err := compute.NewVirtualMachineScaleSetVMExtension(ctx, "virtualMachineScaleSetVMExtension", &compute.VirtualMachineScaleSetVMExtensionArgs{
/// 			AutoUpgradeMinorVersion: pulumi.Bool(true),
/// 			InstanceId:              pulumi.String("0"),
/// 			Publisher:               pulumi.String("extPublisher"),
/// 			ResourceGroupName:       pulumi.String("myResourceGroup"),
/// 			Settings: pulumi.Any(map[string]interface{}{
/// 				"UserName": "xyz@microsoft.com",
/// 			}),
/// 			Type:               pulumi.String("extType"),
/// 			TypeHandlerVersion: pulumi.String("1.2"),
/// 			VmExtensionName:    pulumi.String("myVMExtension"),
/// 			VmScaleSetName:     pulumi.String("myvmScaleSet"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetVMExtension;
/// import com.pulumi.azurenative.compute.VirtualMachineScaleSetVMExtensionArgs;
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
///         var virtualMachineScaleSetVMExtension = new VirtualMachineScaleSetVMExtension("virtualMachineScaleSetVMExtension", VirtualMachineScaleSetVMExtensionArgs.builder()
///             .autoUpgradeMinorVersion(true)
///             .instanceId("0")
///             .publisher("extPublisher")
///             .resourceGroupName("myResourceGroup")
///             .settings(Map.of("UserName", "xyz@microsoft.com"))
///             .type("extType")
///             .typeHandlerVersion("1.2")
///             .vmExtensionName("myVMExtension")
///             .vmScaleSetName("myvmScaleSet")
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
/// const virtualMachineScaleSetVMExtension = new azure_native.compute.VirtualMachineScaleSetVMExtension("virtualMachineScaleSetVMExtension", {
///     autoUpgradeMinorVersion: true,
///     instanceId: "0",
///     publisher: "extPublisher",
///     resourceGroupName: "myResourceGroup",
///     settings: {
///         UserName: "xyz@microsoft.com",
///     },
///     type: "extType",
///     typeHandlerVersion: "1.2",
///     vmExtensionName: "myVMExtension",
///     vmScaleSetName: "myvmScaleSet",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_scale_set_vm_extension = azure_native.compute.VirtualMachineScaleSetVMExtension("virtualMachineScaleSetVMExtension",
///     auto_upgrade_minor_version=True,
///     instance_id="0",
///     publisher="extPublisher",
///     resource_group_name="myResourceGroup",
///     settings={
///         "UserName": "xyz@microsoft.com",
///     },
///     type="extType",
///     type_handler_version="1.2",
///     vm_extension_name="myVMExtension",
///     vm_scale_set_name="myvmScaleSet")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineScaleSetVMExtension:
///     type: azure-native:compute:VirtualMachineScaleSetVMExtension
///     properties:
///       autoUpgradeMinorVersion: true
///       instanceId: '0'
///       publisher: extPublisher
///       resourceGroupName: myResourceGroup
///       settings:
///         UserName: xyz@microsoft.com
///       type: extType
///       typeHandlerVersion: '1.2'
///       vmExtensionName: myVMExtension
///       vmScaleSetName: myvmScaleSet
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
/// $ pulumi import azure-native:compute:VirtualMachineScaleSetVMExtension myVMExtension /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachineScaleSets/{vmScaleSetName}/virtualMachines/{instanceId}/extensions/{vmExtensionName}
/// ```
class VirtualMachineScaleSetVMExtension extends pulumi.CustomResource {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  late final pulumi.Output<bool?> autoUpgradeMinorVersion;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version of the extension available.
  late final pulumi.Output<bool?> enableAutomaticUpgrade;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  late final pulumi.Output<String?> forceUpdateTag;
  /// The virtual machine extension instance view.
  late final pulumi.Output<VirtualMachineExtensionInstanceViewResponse?> instanceView;
  /// The location of the extension.
  late final pulumi.Output<String?> location;
  /// Resource name
  late final pulumi.Output<String> name;
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

  /// Creates a new [VirtualMachineScaleSetVMExtension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineScaleSetVMExtension]. {@macro pulumi_compute_virtual_machine_scale_set_vmextension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineScaleSetVMExtension(
    String name, {
    VirtualMachineScaleSetVMExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:VirtualMachineScaleSetVMExtension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoUpgradeMinorVersion = registerOutput<bool?>('autoUpgradeMinorVersion');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.enableAutomaticUpgrade = registerOutput<bool?>('enableAutomaticUpgrade');
    this.forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    this.instanceView = registerOutput<VirtualMachineExtensionInstanceViewResponse?>('instanceView');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.protectedSettings = registerOutput<dynamic>('protectedSettings');
    this.protectedSettingsFromKeyVault = registerOutput<KeyVaultSecretReferenceResponse?>('protectedSettingsFromKeyVault');
    this.provisionAfterExtensions = registerOutput<List<String>?>('provisionAfterExtensions');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.publisher = registerOutput<String?>('publisher');
    this.settings = registerOutput<dynamic>('settings');
    this.suppressFailures = registerOutput<bool?>('suppressFailures');
    this.type = registerOutput<String>('type');
    this.typeHandlerVersion = registerOutput<String?>('typeHandlerVersion');
  }
}
