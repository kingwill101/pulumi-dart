import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'interface_dnssettings_response.dart';
import 'network_interface_args.dart';
import 'network_interface_status_response.dart';
import 'network_security_group_arm_reference_response.dart';
import 'system_data_response.dart';

/// The network interface resource definition.
///
/// Uses Azure REST API version 2025-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-15-preview.
///
/// Other available API versions: 2022-12-15-preview, 2023-07-01-preview, 2023-09-01-preview, 2024-01-01, 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateNetworkInterfaceFromLocal
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkInterface = new AzureNative.AzureStackHCI.NetworkInterface("networkInterface", new()
///     {
///         CreateFromLocal = true,
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         IpConfigurations = new[]
///         {
///             new AzureNative.AzureStackHCI.Inputs.IPConfigurationArgs
///             {
///                 Name = "ipconfig-sample",
///                 Properties = new AzureNative.AzureStackHCI.Inputs.IPConfigurationPropertiesArgs
///                 {
///                     Subnet = new AzureNative.AzureStackHCI.Inputs.LogicalNetworkArmReferenceArgs
///                     {
///                         Id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/logicalNetworks/test-lnet",
///                     },
///                 },
///             },
///         },
///         Location = "eastus",
///         NetworkInterfaceName = "test-nic",
///         ResourceGroupName = "test-rg",
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
/// 		_, err := azurestackhci.NewNetworkInterface(ctx, "networkInterface", &azurestackhci.NetworkInterfaceArgs{
/// 			CreateFromLocal: pulumi.Bool(true),
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			IpConfigurations: azurestackhci.IPConfigurationArray{
/// 				&azurestackhci.IPConfigurationArgs{
/// 					Name: pulumi.String("ipconfig-sample"),
/// 					Properties: &azurestackhci.IPConfigurationPropertiesArgs{
/// 						Subnet: &azurestackhci.LogicalNetworkArmReferenceArgs{
/// 							Id: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/logicalNetworks/test-lnet"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location:             pulumi.String("eastus"),
/// 			NetworkInterfaceName: pulumi.String("test-nic"),
/// 			ResourceGroupName:    pulumi.String("test-rg"),
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
/// import com.pulumi.azurenative.azurestackhci.NetworkInterface;
/// import com.pulumi.azurenative.azurestackhci.NetworkInterfaceArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.IPConfigurationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.IPConfigurationPropertiesArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.LogicalNetworkArmReferenceArgs;
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
///             .createFromLocal(true)
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .ipConfigurations(IPConfigurationArgs.builder()
///                 .name("ipconfig-sample")
///                 .properties(IPConfigurationPropertiesArgs.builder()
///                     .subnet(LogicalNetworkArmReferenceArgs.builder()
///                         .id("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/logicalNetworks/test-lnet")
///                         .build())
///                     .build())
///                 .build())
///             .location("eastus")
///             .networkInterfaceName("test-nic")
///             .resourceGroupName("test-rg")
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
/// const networkInterface = new azure_native.azurestackhci.NetworkInterface("networkInterface", {
///     createFromLocal: true,
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     ipConfigurations: [{
///         name: "ipconfig-sample",
///         properties: {
///             subnet: {
///                 id: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/logicalNetworks/test-lnet",
///             },
///         },
///     }],
///     location: "eastus",
///     networkInterfaceName: "test-nic",
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_interface = azure_native.azurestackhci.NetworkInterface("networkInterface",
///     create_from_local=True,
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     ip_configurations=[{
///         "name": "ipconfig-sample",
///         "properties": {
///             "subnet": {
///                 "id": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/logicalNetworks/test-lnet",
///             },
///         },
///     }],
///     location="eastus",
///     network_interface_name="test-nic",
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   networkInterface:
///     type: azure-native:azurestackhci:NetworkInterface
///     properties:
///       createFromLocal: true
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       ipConfigurations:
///         - name: ipconfig-sample
///           properties:
///             subnet:
///               id: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/logicalNetworks/test-lnet
///       location: eastus
///       networkInterfaceName: test-nic
///       resourceGroupName: test-rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PutNetworkInterface
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkInterface = new AzureNative.AzureStackHCI.NetworkInterface("networkInterface", new()
///     {
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         IpConfigurations = new[]
///         {
///             new AzureNative.AzureStackHCI.Inputs.IPConfigurationArgs
///             {
///                 Name = "ipconfig-sample",
///                 Properties = new AzureNative.AzureStackHCI.Inputs.IPConfigurationPropertiesArgs
///                 {
///                     Subnet = new AzureNative.AzureStackHCI.Inputs.LogicalNetworkArmReferenceArgs
///                     {
///                         Id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/logicalNetworks/test-lnet",
///                     },
///                 },
///             },
///         },
///         Location = "eastus",
///         NetworkInterfaceName = "test-nic",
///         ResourceGroupName = "test-rg",
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
/// 		_, err := azurestackhci.NewNetworkInterface(ctx, "networkInterface", &azurestackhci.NetworkInterfaceArgs{
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			IpConfigurations: azurestackhci.IPConfigurationArray{
/// 				&azurestackhci.IPConfigurationArgs{
/// 					Name: pulumi.String("ipconfig-sample"),
/// 					Properties: &azurestackhci.IPConfigurationPropertiesArgs{
/// 						Subnet: &azurestackhci.LogicalNetworkArmReferenceArgs{
/// 							Id: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/logicalNetworks/test-lnet"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location:             pulumi.String("eastus"),
/// 			NetworkInterfaceName: pulumi.String("test-nic"),
/// 			ResourceGroupName:    pulumi.String("test-rg"),
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
/// import com.pulumi.azurenative.azurestackhci.NetworkInterface;
/// import com.pulumi.azurenative.azurestackhci.NetworkInterfaceArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.IPConfigurationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.IPConfigurationPropertiesArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.LogicalNetworkArmReferenceArgs;
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
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .ipConfigurations(IPConfigurationArgs.builder()
///                 .name("ipconfig-sample")
///                 .properties(IPConfigurationPropertiesArgs.builder()
///                     .subnet(LogicalNetworkArmReferenceArgs.builder()
///                         .id("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/logicalNetworks/test-lnet")
///                         .build())
///                     .build())
///                 .build())
///             .location("eastus")
///             .networkInterfaceName("test-nic")
///             .resourceGroupName("test-rg")
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
/// const networkInterface = new azure_native.azurestackhci.NetworkInterface("networkInterface", {
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     ipConfigurations: [{
///         name: "ipconfig-sample",
///         properties: {
///             subnet: {
///                 id: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/logicalNetworks/test-lnet",
///             },
///         },
///     }],
///     location: "eastus",
///     networkInterfaceName: "test-nic",
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// network_interface = azure_native.azurestackhci.NetworkInterface("networkInterface",
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     ip_configurations=[{
///         "name": "ipconfig-sample",
///         "properties": {
///             "subnet": {
///                 "id": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/logicalNetworks/test-lnet",
///             },
///         },
///     }],
///     location="eastus",
///     network_interface_name="test-nic",
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   networkInterface:
///     type: azure-native:azurestackhci:NetworkInterface
///     properties:
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       ipConfigurations:
///         - name: ipconfig-sample
///           properties:
///             subnet:
///               id: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.AzureStackHCI/logicalNetworks/test-lnet
///       location: eastus
///       networkInterfaceName: test-nic
///       resourceGroupName: test-rg
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
/// $ pulumi import azure-native:azurestackhci:NetworkInterface test-nic /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/networkInterfaces/{networkInterfaceName}
/// ```
class NetworkInterface extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Boolean indicating whether this is a existing local network interface or if one should be created.
  late final pulumi.Output<bool?> createFromLocal;
  /// DNS Settings for the interface
  late final pulumi.Output<InterfaceDNSSettingsResponse?> dnsSettings;
  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// IPConfigurations - A list of IPConfigurations of the network interface.
  late final pulumi.Output<List<Map<String, dynamic>>?> ipConfigurations;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// MacAddress - The MAC address of the network interface.
  late final pulumi.Output<String?> macAddress;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// NetworkSecurityGroup - Network Security Group attached to the network interface.
  late final pulumi.Output<NetworkSecurityGroupArmReferenceResponse?> networkSecurityGroup;
  /// Provisioning state of the network interface.
  late final pulumi.Output<String> provisioningState;
  /// The observed state of network interfaces
  late final pulumi.Output<NetworkInterfaceStatusResponse> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NetworkInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkInterface]. {@macro pulumi_azurestackhci_network_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkInterface(
    String name, {
    NetworkInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:NetworkInterface',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createFromLocal = registerOutput<bool?>('createFromLocal');
    dnsSettings = registerOutput<InterfaceDNSSettingsResponse?>('dnsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InterfaceDNSSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipConfigurations = registerOutput<List<Map<String, dynamic>>?>('ipConfigurations');
    location = registerOutput<String>('location');
    macAddress = registerOutput<String?>('macAddress');
    this.name = registerOutput<String>('name');
    networkSecurityGroup = registerOutput<NetworkSecurityGroupArmReferenceResponse?>('networkSecurityGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkSecurityGroupArmReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<NetworkInterfaceStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkInterfaceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
