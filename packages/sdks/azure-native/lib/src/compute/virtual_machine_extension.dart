import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_secret_reference_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_extension_args.dart';
import 'virtual_machine_extension_instance_view_response.dart';

/// Describes a Virtual Machine Extension.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VirtualMachineExtension_CreateOrUpdate_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineExtension = new AzureNative.Compute.VirtualMachineExtension("virtualMachineExtension", new()
///     {
///         AutoUpgradeMinorVersion = true,
///         EnableAutomaticUpgrade = true,
///         ForceUpdateTag = "a",
///         InstanceView = new AzureNative.Compute.Inputs.VirtualMachineExtensionInstanceViewArgs
///         {
///             Name = "aaaaaaaaaaaaaaaaa",
///             Statuses = new[]
///             {
///                 new AzureNative.Compute.Inputs.InstanceViewStatusArgs
///                 {
///                     Code = "aaaaaaaaaaaaaaaaaaaaaaa",
///                     DisplayStatus = "aaaaaa",
///                     Level = AzureNative.Compute.StatusLevelTypes.Info,
///                     Message = "a",
///                     Time = "2021-11-30T12:58:26.522Z",
///                 },
///             },
///             Substatuses = new[]
///             {
///                 new AzureNative.Compute.Inputs.InstanceViewStatusArgs
///                 {
///                     Code = "aaaaaaaaaaaaaaaaaaaaaaa",
///                     DisplayStatus = "aaaaaa",
///                     Level = AzureNative.Compute.StatusLevelTypes.Info,
///                     Message = "a",
///                     Time = "2021-11-30T12:58:26.522Z",
///                 },
///             },
///             Type = "aaaaaaaaa",
///             TypeHandlerVersion = "aaaaaaaaaaaaaaaaaaaaaaaaaa",
///         },
///         Location = "westus",
///         ProtectedSettings = null,
///         Publisher = "extPublisher",
///         ResourceGroupName = "rgcompute",
///         Settings = null,
///         SuppressFailures = true,
///         Tags =
///         {
///             { "key9183", "aa" },
///         },
///         Type = "extType",
///         TypeHandlerVersion = "1.2",
///         VmExtensionName = "aaaaaaaaaaaaa",
///         VmName = "aaaaaaaaaaaaaaaaaaaaaaaa",
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
/// 		_, err := compute.NewVirtualMachineExtension(ctx, "virtualMachineExtension", &compute.VirtualMachineExtensionArgs{
/// 			AutoUpgradeMinorVersion: pulumi.Bool(true),
/// 			EnableAutomaticUpgrade:  pulumi.Bool(true),
/// 			ForceUpdateTag:          pulumi.String("a"),
/// 			InstanceView: &compute.VirtualMachineExtensionInstanceViewArgs{
/// 				Name: pulumi.String("aaaaaaaaaaaaaaaaa"),
/// 				Statuses: compute.InstanceViewStatusArray{
/// 					&compute.InstanceViewStatusArgs{
/// 						Code:          pulumi.String("aaaaaaaaaaaaaaaaaaaaaaa"),
/// 						DisplayStatus: pulumi.String("aaaaaa"),
/// 						Level:         compute.StatusLevelTypesInfo,
/// 						Message:       pulumi.String("a"),
/// 						Time:          pulumi.String("2021-11-30T12:58:26.522Z"),
/// 					},
/// 				},
/// 				Substatuses: compute.InstanceViewStatusArray{
/// 					&compute.InstanceViewStatusArgs{
/// 						Code:          pulumi.String("aaaaaaaaaaaaaaaaaaaaaaa"),
/// 						DisplayStatus: pulumi.String("aaaaaa"),
/// 						Level:         compute.StatusLevelTypesInfo,
/// 						Message:       pulumi.String("a"),
/// 						Time:          pulumi.String("2021-11-30T12:58:26.522Z"),
/// 					},
/// 				},
/// 				Type:               pulumi.String("aaaaaaaaa"),
/// 				TypeHandlerVersion: pulumi.String("aaaaaaaaaaaaaaaaaaaaaaaaaa"),
/// 			},
/// 			Location:          pulumi.String("westus"),
/// 			ProtectedSettings: pulumi.Any(map[string]interface{}{}),
/// 			Publisher:         pulumi.String("extPublisher"),
/// 			ResourceGroupName: pulumi.String("rgcompute"),
/// 			Settings:          pulumi.Any(map[string]interface{}{}),
/// 			SuppressFailures:  pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"key9183": pulumi.String("aa"),
/// 			},
/// 			Type:               pulumi.String("extType"),
/// 			TypeHandlerVersion: pulumi.String("1.2"),
/// 			VmExtensionName:    pulumi.String("aaaaaaaaaaaaa"),
/// 			VmName:             pulumi.String("aaaaaaaaaaaaaaaaaaaaaaaa"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineExtension;
/// import com.pulumi.azurenative.compute.VirtualMachineExtensionArgs;
/// import com.pulumi.azurenative.compute.inputs.VirtualMachineExtensionInstanceViewArgs;
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
///         var virtualMachineExtension = new VirtualMachineExtension("virtualMachineExtension", VirtualMachineExtensionArgs.builder()
///             .autoUpgradeMinorVersion(true)
///             .enableAutomaticUpgrade(true)
///             .forceUpdateTag("a")
///             .instanceView(VirtualMachineExtensionInstanceViewArgs.builder()
///                 .name("aaaaaaaaaaaaaaaaa")
///                 .statuses(InstanceViewStatusArgs.builder()
///                     .code("aaaaaaaaaaaaaaaaaaaaaaa")
///                     .displayStatus("aaaaaa")
///                     .level("Info")
///                     .message("a")
///                     .time("2021-11-30T12:58:26.522Z")
///                     .build())
///                 .substatuses(InstanceViewStatusArgs.builder()
///                     .code("aaaaaaaaaaaaaaaaaaaaaaa")
///                     .displayStatus("aaaaaa")
///                     .level("Info")
///                     .message("a")
///                     .time("2021-11-30T12:58:26.522Z")
///                     .build())
///                 .type("aaaaaaaaa")
///                 .typeHandlerVersion("aaaaaaaaaaaaaaaaaaaaaaaaaa")
///                 .build())
///             .location("westus")
///             .protectedSettings(Map.ofEntries(
///             ))
///             .publisher("extPublisher")
///             .resourceGroupName("rgcompute")
///             .settings(Map.ofEntries(
///             ))
///             .suppressFailures(true)
///             .tags(Map.of("key9183", "aa"))
///             .type("extType")
///             .typeHandlerVersion("1.2")
///             .vmExtensionName("aaaaaaaaaaaaa")
///             .vmName("aaaaaaaaaaaaaaaaaaaaaaaa")
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
/// const virtualMachineExtension = new azure_native.compute.VirtualMachineExtension("virtualMachineExtension", {
///     autoUpgradeMinorVersion: true,
///     enableAutomaticUpgrade: true,
///     forceUpdateTag: "a",
///     instanceView: {
///         name: "aaaaaaaaaaaaaaaaa",
///         statuses: [{
///             code: "aaaaaaaaaaaaaaaaaaaaaaa",
///             displayStatus: "aaaaaa",
///             level: azure_native.compute.StatusLevelTypes.Info,
///             message: "a",
///             time: "2021-11-30T12:58:26.522Z",
///         }],
///         substatuses: [{
///             code: "aaaaaaaaaaaaaaaaaaaaaaa",
///             displayStatus: "aaaaaa",
///             level: azure_native.compute.StatusLevelTypes.Info,
///             message: "a",
///             time: "2021-11-30T12:58:26.522Z",
///         }],
///         type: "aaaaaaaaa",
///         typeHandlerVersion: "aaaaaaaaaaaaaaaaaaaaaaaaaa",
///     },
///     location: "westus",
///     protectedSettings: {},
///     publisher: "extPublisher",
///     resourceGroupName: "rgcompute",
///     settings: {},
///     suppressFailures: true,
///     tags: {
///         key9183: "aa",
///     },
///     type: "extType",
///     typeHandlerVersion: "1.2",
///     vmExtensionName: "aaaaaaaaaaaaa",
///     vmName: "aaaaaaaaaaaaaaaaaaaaaaaa",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_extension = azure_native.compute.VirtualMachineExtension("virtualMachineExtension",
///     auto_upgrade_minor_version=True,
///     enable_automatic_upgrade=True,
///     force_update_tag="a",
///     instance_view={
///         "name": "aaaaaaaaaaaaaaaaa",
///         "statuses": [{
///             "code": "aaaaaaaaaaaaaaaaaaaaaaa",
///             "display_status": "aaaaaa",
///             "level": azure_native.compute.StatusLevelTypes.INFO,
///             "message": "a",
///             "time": "2021-11-30T12:58:26.522Z",
///         }],
///         "substatuses": [{
///             "code": "aaaaaaaaaaaaaaaaaaaaaaa",
///             "display_status": "aaaaaa",
///             "level": azure_native.compute.StatusLevelTypes.INFO,
///             "message": "a",
///             "time": "2021-11-30T12:58:26.522Z",
///         }],
///         "type": "aaaaaaaaa",
///         "type_handler_version": "aaaaaaaaaaaaaaaaaaaaaaaaaa",
///     },
///     location="westus",
///     protected_settings={},
///     publisher="extPublisher",
///     resource_group_name="rgcompute",
///     settings={},
///     suppress_failures=True,
///     tags={
///         "key9183": "aa",
///     },
///     type="extType",
///     type_handler_version="1.2",
///     vm_extension_name="aaaaaaaaaaaaa",
///     vm_name="aaaaaaaaaaaaaaaaaaaaaaaa")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineExtension:
///     type: azure-native:compute:VirtualMachineExtension
///     properties:
///       autoUpgradeMinorVersion: true
///       enableAutomaticUpgrade: true
///       forceUpdateTag: a
///       instanceView:
///         name: aaaaaaaaaaaaaaaaa
///         statuses:
///           - code: aaaaaaaaaaaaaaaaaaaaaaa
///             displayStatus: aaaaaa
///             level: Info
///             message: a
///             time: 2021-11-30T12:58:26.522Z
///         substatuses:
///           - code: aaaaaaaaaaaaaaaaaaaaaaa
///             displayStatus: aaaaaa
///             level: Info
///             message: a
///             time: 2021-11-30T12:58:26.522Z
///         type: aaaaaaaaa
///         typeHandlerVersion: aaaaaaaaaaaaaaaaaaaaaaaaaa
///       location: westus
///       protectedSettings: {}
///       publisher: extPublisher
///       resourceGroupName: rgcompute
///       settings: {}
///       suppressFailures: true
///       tags:
///         key9183: aa
///       type: extType
///       typeHandlerVersion: '1.2'
///       vmExtensionName: aaaaaaaaaaaaa
///       vmName: aaaaaaaaaaaaaaaaaaaaaaaa
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### VirtualMachineExtension_CreateOrUpdate_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualMachineExtension = new AzureNative.Compute.VirtualMachineExtension("virtualMachineExtension", new()
///     {
///         Location = "westus",
///         ResourceGroupName = "rgcompute",
///         VmExtensionName = "myVMExtension",
///         VmName = "myVM",
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
/// 		_, err := compute.NewVirtualMachineExtension(ctx, "virtualMachineExtension", &compute.VirtualMachineExtensionArgs{
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("rgcompute"),
/// 			VmExtensionName:   pulumi.String("myVMExtension"),
/// 			VmName:            pulumi.String("myVM"),
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
/// import com.pulumi.azurenative.compute.VirtualMachineExtension;
/// import com.pulumi.azurenative.compute.VirtualMachineExtensionArgs;
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
///         var virtualMachineExtension = new VirtualMachineExtension("virtualMachineExtension", VirtualMachineExtensionArgs.builder()
///             .location("westus")
///             .resourceGroupName("rgcompute")
///             .vmExtensionName("myVMExtension")
///             .vmName("myVM")
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
/// const virtualMachineExtension = new azure_native.compute.VirtualMachineExtension("virtualMachineExtension", {
///     location: "westus",
///     resourceGroupName: "rgcompute",
///     vmExtensionName: "myVMExtension",
///     vmName: "myVM",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_machine_extension = azure_native.compute.VirtualMachineExtension("virtualMachineExtension",
///     location="westus",
///     resource_group_name="rgcompute",
///     vm_extension_name="myVMExtension",
///     vm_name="myVM")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualMachineExtension:
///     type: azure-native:compute:VirtualMachineExtension
///     properties:
///       location: westus
///       resourceGroupName: rgcompute
///       vmExtensionName: myVMExtension
///       vmName: myVM
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
/// $ pulumi import azure-native:compute:VirtualMachineExtension myVMExtension /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/extensions/{vmExtensionName}
/// ```
class VirtualMachineExtension extends pulumi.CustomResource {
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
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
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
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Specifies the version of the script handler.
  late final pulumi.Output<String?> typeHandlerVersion;

  /// Creates a new [VirtualMachineExtension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineExtension]. {@macro pulumi_compute_virtual_machine_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineExtension(
    String name, {
    VirtualMachineExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:VirtualMachineExtension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoUpgradeMinorVersion = registerOutput<bool?>('autoUpgradeMinorVersion');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    enableAutomaticUpgrade = registerOutput<bool?>('enableAutomaticUpgrade');
    forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    instanceView = registerOutput<VirtualMachineExtensionInstanceViewResponse?>('instanceView', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineExtensionInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    protectedSettings = registerOutput<dynamic>('protectedSettings');
    protectedSettingsFromKeyVault = registerOutput<KeyVaultSecretReferenceResponse?>('protectedSettingsFromKeyVault', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyVaultSecretReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisionAfterExtensions = registerOutput<List<String>?>('provisionAfterExtensions');
    provisioningState = registerOutput<String>('provisioningState');
    publisher = registerOutput<String?>('publisher');
    settings = registerOutput<dynamic>('settings');
    suppressFailures = registerOutput<bool?>('suppressFailures');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    typeHandlerVersion = registerOutput<String?>('typeHandlerVersion');
  }
}
