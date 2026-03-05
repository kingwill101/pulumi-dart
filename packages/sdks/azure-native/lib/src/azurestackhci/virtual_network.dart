import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'virtual_network_args.dart';
import 'virtual_network_properties_response_dhcp_options.dart';
import 'virtual_network_status_response.dart';

/// The virtual network resource definition.
///
/// Uses Azure REST API version 2023-07-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-15-preview.
///
/// Other available API versions: 2022-12-15-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutVirtualNetwork
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetwork = new AzureNative.AzureStackHCI.VirtualNetwork("virtualNetwork", new()
///     {
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         Location = "West US2",
///         NetworkType = AzureNative.AzureStackHCI.NetworkTypeEnum.Transparent,
///         ResourceGroupName = "test-rg",
///         VirtualNetworkName = "test-vnet",
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
/// 		_, err := azurestackhci.NewVirtualNetwork(ctx, "virtualNetwork", &azurestackhci.VirtualNetworkArgs{
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			Location:           pulumi.String("West US2"),
/// 			NetworkType:        pulumi.String(azurestackhci.NetworkTypeEnumTransparent),
/// 			ResourceGroupName:  pulumi.String("test-rg"),
/// 			VirtualNetworkName: pulumi.String("test-vnet"),
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
/// import com.pulumi.azurenative.azurestackhci.VirtualNetwork;
/// import com.pulumi.azurenative.azurestackhci.VirtualNetworkArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
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
///         var virtualNetwork = new VirtualNetwork("virtualNetwork", VirtualNetworkArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .location("West US2")
///             .networkType("Transparent")
///             .resourceGroupName("test-rg")
///             .virtualNetworkName("test-vnet")
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
/// const virtualNetwork = new azure_native.azurestackhci.VirtualNetwork("virtualNetwork", {
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     location: "West US2",
///     networkType: azure_native.azurestackhci.NetworkTypeEnum.Transparent,
///     resourceGroupName: "test-rg",
///     virtualNetworkName: "test-vnet",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network = azure_native.azurestackhci.VirtualNetwork("virtualNetwork",
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     location="West US2",
///     network_type=azure_native.azurestackhci.NetworkTypeEnum.TRANSPARENT,
///     resource_group_name="test-rg",
///     virtual_network_name="test-vnet")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetwork:
///     type: azure-native:azurestackhci:VirtualNetwork
///     properties:
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       location: West US2
///       networkType: Transparent
///       resourceGroupName: test-rg
///       virtualNetworkName: test-vnet
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
/// $ pulumi import azure-native:azurestackhci:VirtualNetwork test-vnet /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/virtualNetworks/{virtualNetworkName}
/// ```
class VirtualNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// DhcpOptions contains an array of DNS servers available to VMs deployed in the virtual network. Standard DHCP option for a subnet overrides VNET DHCP options.
  late final pulumi.Output<VirtualNetworkPropertiesResponseDhcpOptions?>
  dhcpOptions;

  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Type of the network
  late final pulumi.Output<String?> networkType;

  /// Provisioning state of the virtual network.
  late final pulumi.Output<String> provisioningState;

  /// The observed state of virtual networks
  late final pulumi.Output<VirtualNetworkStatusResponse> status;

  /// Subnet - list of subnets under the virtual network
  late final pulumi.Output<List<Map<String, dynamic>>?> subnets;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// name of the network switch to be used for VMs
  late final pulumi.Output<String?> vmSwitchName;

  /// Creates a new [VirtualNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetwork]. {@macro pulumi_azurestackhci_virtual_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetwork(
    String name, {
    VirtualNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:azurestackhci:VirtualNetwork',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dhcpOptions = registerOutput<VirtualNetworkPropertiesResponseDhcpOptions?>(
      'dhcpOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualNetworkPropertiesResponseDhcpOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkType = registerOutput<String?>('networkType');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<VirtualNetworkStatusResponse>(
      'status',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VirtualNetworkStatusResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    subnets = registerOutput<List<Map<String, dynamic>>?>('subnets');
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
    vmSwitchName = registerOutput<String?>('vmSwitchName');
  }
}
