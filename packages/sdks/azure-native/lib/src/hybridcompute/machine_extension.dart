import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_extension_args.dart';
import 'machine_extension_properties_response.dart';
import 'system_data_response.dart';

/// Describes a Machine Extension.
///
/// Uses Azure REST API version 2024-07-10. In version 2.x of the Azure Native provider, it used API version 2022-12-27.
///
/// Other available API versions: 2020-08-15-preview, 2021-01-28-preview, 2021-03-25-preview, 2021-04-22-preview, 2021-05-17-preview, 2021-05-20, 2021-06-10-preview, 2021-12-10-preview, 2022-03-10, 2022-05-10-preview, 2022-08-11-preview, 2022-11-10, 2022-12-27, 2022-12-27-preview, 2023-03-15-preview, 2023-06-20-preview, 2023-10-03-preview, 2024-03-31-preview, 2024-05-20-preview, 2024-07-31-preview, 2024-09-10-preview, 2024-11-10-preview, 2025-01-13, 2025-02-19-preview, 2025-06-01, 2025-08-21-preview, 2025-09-16-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcompute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a Machine Extension
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var machineExtension = new AzureNative.HybridCompute.MachineExtension("machineExtension", new()
///     {
///         ExtensionName = "CustomScriptExtension",
///         Location = "eastus2euap",
///         MachineName = "myMachine",
///         Properties = new AzureNative.HybridCompute.Inputs.MachineExtensionPropertiesArgs
///         {
///             Publisher = "Microsoft.Compute",
///             Settings = new Dictionary<string, object?>
///             {
///                 ["commandToExecute"] = "powershell.exe -c \"Get-Process | Where-Object { $_.CPU -gt 10000 }\"",
///             },
///             Type = "CustomScriptExtension",
///             TypeHandlerVersion = "1.10",
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	hybridcompute "github.com/pulumi/pulumi-azure-native-sdk/hybridcompute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcompute.NewMachineExtension(ctx, "machineExtension", &hybridcompute.MachineExtensionArgs{
/// 			ExtensionName: pulumi.String("CustomScriptExtension"),
/// 			Location:      pulumi.String("eastus2euap"),
/// 			MachineName:   pulumi.String("myMachine"),
/// 			Properties: &hybridcompute.MachineExtensionPropertiesArgs{
/// 				Publisher: pulumi.String("Microsoft.Compute"),
/// 				Settings: pulumi.Any(map[string]interface{}{
/// 					"commandToExecute": "powershell.exe -c \"Get-Process | Where-Object { $_.CPU -gt 10000 }\"",
/// 				}),
/// 				Type:               pulumi.String("CustomScriptExtension"),
/// 				TypeHandlerVersion: pulumi.String("1.10"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.hybridcompute.MachineExtension;
/// import com.pulumi.azurenative.hybridcompute.MachineExtensionArgs;
/// import com.pulumi.azurenative.hybridcompute.inputs.MachineExtensionPropertiesArgs;
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
///             .machineName("myMachine")
///             .properties(MachineExtensionPropertiesArgs.builder()
///                 .publisher("Microsoft.Compute")
///                 .settings(Map.of("commandToExecute", "powershell.exe -c \"Get-Process | Where-Object { $_.CPU -gt 10000 }\""))
///                 .type("CustomScriptExtension")
///                 .typeHandlerVersion("1.10")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const machineExtension = new azure_native.hybridcompute.MachineExtension("machineExtension", {
///     extensionName: "CustomScriptExtension",
///     location: "eastus2euap",
///     machineName: "myMachine",
///     properties: {
///         publisher: "Microsoft.Compute",
///         settings: {
///             commandToExecute: "powershell.exe -c \"Get-Process | Where-Object { $_.CPU -gt 10000 }\"",
///         },
///         type: "CustomScriptExtension",
///         typeHandlerVersion: "1.10",
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// machine_extension = azure_native.hybridcompute.MachineExtension("machineExtension",
///     extension_name="CustomScriptExtension",
///     location="eastus2euap",
///     machine_name="myMachine",
///     properties={
///         "publisher": "Microsoft.Compute",
///         "settings": {
///             "commandToExecute": "powershell.exe -c \"Get-Process | Where-Object { $_.CPU -gt 10000 }\"",
///         },
///         "type": "CustomScriptExtension",
///         "type_handler_version": "1.10",
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   machineExtension:
///     type: azure-native:hybridcompute:MachineExtension
///     properties:
///       extensionName: CustomScriptExtension
///       location: eastus2euap
///       machineName: myMachine
///       properties:
///         publisher: Microsoft.Compute
///         settings:
///           commandToExecute: powershell.exe -c "Get-Process | Where-Object { $_.CPU -gt 10000 }"
///         type: CustomScriptExtension
///         typeHandlerVersion: '1.10'
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:hybridcompute:MachineExtension CustomScriptExtension /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridCompute/machines/{machineName}/extensions/{extensionName}
/// ```
class MachineExtension extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Describes Machine Extension Properties.
  late final pulumi.Output<MachineExtensionPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MachineExtension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MachineExtension]. {@macro pulumi_hybridcompute_machine_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MachineExtension(
    String name, {
    MachineExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridcompute:MachineExtension',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<MachineExtensionPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MachineExtensionPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
