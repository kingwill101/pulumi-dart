import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_extension_args.dart';
import 'machine_extension_properties_response_instance_view.dart';
import 'system_data_response.dart';

/// Describes a Machine Extension.
///
/// Uses Azure REST API version 2023-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-07-15-preview.
///
/// Other available API versions: 2022-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a Machine Extension (PUT)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var machineExtension = new AzureNative.ConnectedVMwarevSphere.MachineExtension("machineExtension", new()
///     {
///         ExtensionName = "CustomScriptExtension",
///         Location = "eastus2euap",
///         Publisher = "Microsoft.Compute",
///         ResourceGroupName = "myResourceGroup",
///         Settings = new Dictionary<string, object?>
///         {
///             ["commandToExecute"] = "powershell.exe -c \"Get-Process | Where-Object { $_.CPU -gt 10000 }\"",
///         },
///         Type = "CustomScriptExtension",
///         TypeHandlerVersion = "1.10",
///         VirtualMachineName = "myMachine",
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
/// 	connectedvmwarevsphere "github.com/pulumi/pulumi-azure-native-sdk/connectedvmwarevsphere/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connectedvmwarevsphere.NewMachineExtension(ctx, "machineExtension", &connectedvmwarevsphere.MachineExtensionArgs{
/// 			ExtensionName:     pulumi.String("CustomScriptExtension"),
/// 			Location:          pulumi.String("eastus2euap"),
/// 			Publisher:         pulumi.String("Microsoft.Compute"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Settings: pulumi.Any(map[string]interface{}{
/// 				"commandToExecute": "powershell.exe -c \"Get-Process | Where-Object { $_.CPU -gt 10000 }\"",
/// 			}),
/// 			Type:               pulumi.String("CustomScriptExtension"),
/// 			TypeHandlerVersion: pulumi.String("1.10"),
/// 			VirtualMachineName: pulumi.String("myMachine"),
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
/// resource "azure-native_connectedvmwarevsphere_machineextension" "machineExtension" {
///   extension_name      = "CustomScriptExtension"
///   location            = "eastus2euap"
///   publisher           = "Microsoft.Compute"
///   resource_group_name = "myResourceGroup"
///   settings = {
///     "commandToExecute" = "powershell.exe -c \"Get-Process | Where-Object { $_.CPU -gt 10000 }\""
///   }
///   type                 = "CustomScriptExtension"
///   type_handler_version = "1.10"
///   virtual_machine_name = "myMachine"
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
/// import com.pulumi.azurenative.connectedvmwarevsphere.MachineExtension;
/// import com.pulumi.azurenative.connectedvmwarevsphere.MachineExtensionArgs;
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
///         var machineExtension = new MachineExtension("machineExtension", MachineExtensionArgs.builder()
///             .extensionName("CustomScriptExtension")
///             .location("eastus2euap")
///             .publisher("Microsoft.Compute")
///             .resourceGroupName("myResourceGroup")
///             .settings(Map.of("commandToExecute", "powershell.exe -c \"Get-Process | Where-Object { $_.CPU -gt 10000 }\""))
///             .type("CustomScriptExtension")
///             .typeHandlerVersion("1.10")
///             .virtualMachineName("myMachine")
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
/// const machineExtension = new azure_native.connectedvmwarevsphere.MachineExtension("machineExtension", {
///     extensionName: "CustomScriptExtension",
///     location: "eastus2euap",
///     publisher: "Microsoft.Compute",
///     resourceGroupName: "myResourceGroup",
///     settings: {
///         commandToExecute: "powershell.exe -c \"Get-Process | Where-Object { $_.CPU -gt 10000 }\"",
///     },
///     type: "CustomScriptExtension",
///     typeHandlerVersion: "1.10",
///     virtualMachineName: "myMachine",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// machine_extension = azure_native.connectedvmwarevsphere.MachineExtension("machineExtension",
///     extension_name="CustomScriptExtension",
///     location="eastus2euap",
///     publisher="Microsoft.Compute",
///     resource_group_name="myResourceGroup",
///     settings={
///         "commandToExecute": "powershell.exe -c \"Get-Process | Where-Object { $_.CPU -gt 10000 }\"",
///     },
///     type="CustomScriptExtension",
///     type_handler_version="1.10",
///     virtual_machine_name="myMachine")
///
/// ```
///
/// ```yaml
/// resources:
///   machineExtension:
///     type: azure-native:connectedvmwarevsphere:MachineExtension
///     properties:
///       extensionName: CustomScriptExtension
///       location: eastus2euap
///       publisher: Microsoft.Compute
///       resourceGroupName: myResourceGroup
///       settings:
///         commandToExecute: powershell.exe -c "Get-Process | Where-Object { $_.CPU -gt 10000 }"
///       type: CustomScriptExtension
///       typeHandlerVersion: '1.10'
///       virtualMachineName: myMachine
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
/// $ pulumi import azure-native:connectedvmwarevsphere:MachineExtension CustomScriptExtension /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConnectedVMwarevSphere/virtualMachines/{virtualMachineName}/extensions/{extensionName}
/// ```
class MachineExtension extends pulumi.CustomResource {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  late final pulumi.Output<bool?> autoUpgradeMinorVersion;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Indicates whether the extension should be automatically upgraded by the platform if there is a newer version available.
  late final pulumi.Output<bool?> enableAutomaticUpgrade;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  late final pulumi.Output<String?> forceUpdateTag;
  /// The machine extension instance view.
  late final pulumi.Output<MachineExtensionPropertiesResponseInstanceView?> instanceView;
  /// Gets or sets the location.
  late final pulumi.Output<String?> location;
  /// Gets or sets the name.
  late final pulumi.Output<String> name;
  /// The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all.
  late final pulumi.Output<dynamic> protectedSettings;
  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// The name of the extension handler publisher.
  late final pulumi.Output<String?> publisher;
  /// Json formatted public settings for the extension.
  late final pulumi.Output<dynamic> settings;
  /// The system data.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Gets or sets the Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;
  /// Specifies the version of the script handler.
  late final pulumi.Output<String?> typeHandlerVersion;

  /// Creates a new [MachineExtension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MachineExtension]. {@macro pulumi_connectedvmwarevsphere_machine_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MachineExtension(
    String name, {
    MachineExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:connectedvmwarevsphere:MachineExtension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoUpgradeMinorVersion = registerOutput<bool?>('autoUpgradeMinorVersion');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    enableAutomaticUpgrade = registerOutput<bool?>('enableAutomaticUpgrade');
    forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    instanceView = registerOutput<MachineExtensionPropertiesResponseInstanceView?>('instanceView', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MachineExtensionPropertiesResponseInstanceView.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    protectedSettings = registerOutput<dynamic>('protectedSettings');
    provisioningState = registerOutput<String>('provisioningState');
    publisher = registerOutput<String?>('publisher');
    settings = registerOutput<dynamic>('settings');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    typeHandlerVersion = registerOutput<String?>('typeHandlerVersion');
  }

  /// Creates a typed reference to an existing [MachineExtension] resource.
  MachineExtension.reference(String urn)
    : super(
        'azure-native:connectedvmwarevsphere:MachineExtension',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autoUpgradeMinorVersion = registerOutput<bool?>('autoUpgradeMinorVersion');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    enableAutomaticUpgrade = registerOutput<bool?>('enableAutomaticUpgrade');
    forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    instanceView = registerOutput<MachineExtensionPropertiesResponseInstanceView?>('instanceView', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MachineExtensionPropertiesResponseInstanceView.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    protectedSettings = registerOutput<dynamic>('protectedSettings');
    provisioningState = registerOutput<String>('provisioningState');
    publisher = registerOutput<String?>('publisher');
    settings = registerOutput<dynamic>('settings');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    typeHandlerVersion = registerOutput<String?>('typeHandlerVersion');
  }
}
