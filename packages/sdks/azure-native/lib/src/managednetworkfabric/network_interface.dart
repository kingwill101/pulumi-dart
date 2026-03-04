import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_args.dart';
import 'system_data_response.dart';

/// Defines the NetworkInterface resource.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-02-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NetworkInterfaces_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkInterface = new AzureNative.ManagedNetworkFabric.NetworkInterface("networkInterface", new()
///     {
///         Annotation = "annotation",
///         NetworkDeviceName = "example-device",
///         NetworkInterfaceName = "example-interface",
///         ResourceGroupName = "example-rg",
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
/// 	managednetworkfabric "github.com/pulumi/pulumi-azure-native-sdk/managednetworkfabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managednetworkfabric.NewNetworkInterface(ctx, "networkInterface", &managednetworkfabric.NetworkInterfaceArgs{
/// 			Annotation:           pulumi.String("annotation"),
/// 			NetworkDeviceName:    pulumi.String("example-device"),
/// 			NetworkInterfaceName: pulumi.String("example-interface"),
/// 			ResourceGroupName:    pulumi.String("example-rg"),
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
/// import com.pulumi.azurenative.managednetworkfabric.NetworkInterface;
/// import com.pulumi.azurenative.managednetworkfabric.NetworkInterfaceArgs;
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
///         var networkInterface = new NetworkInterface("networkInterface", NetworkInterfaceArgs.builder()
///             .annotation("annotation")
///             .networkDeviceName("example-device")
///             .networkInterfaceName("example-interface")
///             .resourceGroupName("example-rg")
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
/// const networkInterface = new azure_native.managednetworkfabric.NetworkInterface("networkInterface", {
///     annotation: "annotation",
///     networkDeviceName: "example-device",
///     networkInterfaceName: "example-interface",
///     resourceGroupName: "example-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_interface = azure_native.managednetworkfabric.NetworkInterface("networkInterface",
///     annotation="annotation",
///     network_device_name="example-device",
///     network_interface_name="example-interface",
///     resource_group_name="example-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   networkInterface:
///     type: azure-native:managednetworkfabric:NetworkInterface
///     properties:
///       annotation: annotation
///       networkDeviceName: example-device
///       networkInterfaceName: example-interface
///       resourceGroupName: example-rg
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
/// $ pulumi import azure-native:managednetworkfabric:NetworkInterface example-interface /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/networkDevices/{networkDeviceName}/networkInterfaces/{networkInterfaceName}
/// ```
class NetworkInterface extends pulumi.CustomResource {
  /// Administrative state of the resource.
  late final pulumi.Output<String> administrativeState;

  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The ARM resource id of the interface or compute server its connected to.
  late final pulumi.Output<String> connectedTo;

  /// The Interface Type. Example: Management/Data
  late final pulumi.Output<String> interfaceType;

  /// IPv4Address of the interface.
  late final pulumi.Output<String> ipv4Address;

  /// IPv6Address of the interface.
  late final pulumi.Output<String> ipv6Address;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Physical Identifier of the network interface.
  late final pulumi.Output<String> physicalIdentifier;

  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkInterface]. {@macro pulumi_managednetworkfabric_network_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkInterface(
    String name, {
    NetworkInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:managednetworkfabric:NetworkInterface',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administrativeState = registerOutput<String>('administrativeState');
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectedTo = registerOutput<String>('connectedTo');
    interfaceType = registerOutput<String>('interfaceType');
    ipv4Address = registerOutput<String>('ipv4Address');
    ipv6Address = registerOutput<String>('ipv6Address');
    this.name = registerOutput<String>('name');
    physicalIdentifier = registerOutput<String>('physicalIdentifier');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
