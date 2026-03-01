import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_extension_args.dart';
import 'machine_extension_properties_response_instance_view.dart';
import 'system_data_response.dart';

/// Describes a Machine Extension.
///
/// Uses Azure REST API version 2022-12-15-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-15-preview.
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
///     var machineExtension = new AzureNative.AzureStackHCI.MachineExtension("machineExtension", new()
///     {
///         ExtensionName = "CustomScriptExtension",
///         Location = "eastus2euap",
///         Name = "myMachine",
///         Publisher = "Microsoft.Compute",
///         ResourceGroupName = "myResourceGroup",
///         Settings = new Dictionary<string, object?>
///         {
///             ["commandToExecute"] = "powershell.exe -c \"Get-Process | Where-Object { $_.CPU -gt 10000 }\"",
///         },
///         Type = "CustomScriptExtension",
///         TypeHandlerVersion = "1.10",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewMachineExtension(ctx, "machineExtension", &azurestackhci.MachineExtensionArgs{
/// 			ExtensionName:     pulumi.String("CustomScriptExtension"),
/// 			Location:          pulumi.String("eastus2euap"),
/// 			Name:              pulumi.String("myMachine"),
/// 			Publisher:         pulumi.String("Microsoft.Compute"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Settings: pulumi.Any(map[string]interface{}{
/// 				"commandToExecute": "powershell.exe -c \"Get-Process | Where-Object { $_.CPU -gt 10000 }\"",
/// 			}),
/// 			Type:               pulumi.String("CustomScriptExtension"),
/// 			TypeHandlerVersion: pulumi.String("1.10"),
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
/// import com.pulumi.azurenative.azurestackhci.MachineExtension;
/// import com.pulumi.azurenative.azurestackhci.MachineExtensionArgs;
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
///         var machineExtension = new MachineExtension("machineExtension", MachineExtensionArgs.builder()
///             .extensionName("CustomScriptExtension")
///             .location("eastus2euap")
///             .name("myMachine")
///             .publisher("Microsoft.Compute")
///             .resourceGroupName("myResourceGroup")
///             .settings(Map.of("commandToExecute", "powershell.exe -c \"Get-Process | Where-Object { $_.CPU -gt 10000 }\""))
///             .type("CustomScriptExtension")
///             .typeHandlerVersion("1.10")
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
/// const machineExtension = new azure_native.azurestackhci.MachineExtension("machineExtension", {
///     extensionName: "CustomScriptExtension",
///     location: "eastus2euap",
///     name: "myMachine",
///     publisher: "Microsoft.Compute",
///     resourceGroupName: "myResourceGroup",
///     settings: {
///         commandToExecute: "powershell.exe -c \"Get-Process | Where-Object { $_.CPU -gt 10000 }\"",
///     },
///     type: "CustomScriptExtension",
///     typeHandlerVersion: "1.10",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// machine_extension = azure_native.azurestackhci.MachineExtension("machineExtension",
///     extension_name="CustomScriptExtension",
///     location="eastus2euap",
///     name="myMachine",
///     publisher="Microsoft.Compute",
///     resource_group_name="myResourceGroup",
///     settings={
///         "commandToExecute": "powershell.exe -c \"Get-Process | Where-Object { $_.CPU -gt 10000 }\"",
///     },
///     type="CustomScriptExtension",
///     type_handler_version="1.10")
///
/// ```
///
/// ```yaml
/// resources:
///   machineExtension:
///     type: azure-native:azurestackhci:MachineExtension
///     properties:
///       extensionName: CustomScriptExtension
///       location: eastus2euap
///       name: myMachine
///       publisher: Microsoft.Compute
///       resourceGroupName: myResourceGroup
///       settings:
///         commandToExecute: powershell.exe -c "Get-Process | Where-Object { $_.CPU -gt 10000 }"
///       type: CustomScriptExtension
///       typeHandlerVersion: '1.10'
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
/// $ pulumi import azure-native:azurestackhci:MachineExtension CustomScriptExtension /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/virtualMachines/{name}/extensions/{extensionName}
/// ```
class MachineExtension extends pulumi.CustomResource {
  /// Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true.
  late final pulumi.Output<bool?> autoUpgradeMinorVersion;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// How the extension handler should be forced to update even if the extension configuration has not changed.
  late final pulumi.Output<String?> forceUpdateTag;
  /// The machine extension instance view.
  late final pulumi.Output<MachineExtensionPropertiesResponseInstanceView?> instanceView;
  /// The location.
  late final pulumi.Output<String?> location;
  /// The name.
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
  /// The Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource.
  late final pulumi.Output<String> type;
  /// Specifies the version of the script handler.
  late final pulumi.Output<String?> typeHandlerVersion;

  /// Creates a new [MachineExtension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MachineExtension]. {@macro pulumi_azurestackhci_machine_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MachineExtension(
    String name, {
    MachineExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:MachineExtension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoUpgradeMinorVersion = registerOutput<bool?>('autoUpgradeMinorVersion');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    this.instanceView = registerOutput<MachineExtensionPropertiesResponseInstanceView?>('instanceView');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.protectedSettings = registerOutput<dynamic>('protectedSettings');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.publisher = registerOutput<String?>('publisher');
    this.settings = registerOutput<dynamic>('settings');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.typeHandlerVersion = registerOutput<String?>('typeHandlerVersion');
  }
}
