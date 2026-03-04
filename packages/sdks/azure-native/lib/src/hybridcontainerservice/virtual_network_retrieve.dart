import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'virtual_network_retrieve_args.dart';
import 'virtual_networks_properties_response.dart';
import 'virtual_networks_response_extended_location.dart';

/// The virtualNetworks resource definition.
///
/// Uses Azure REST API version 2022-09-01-preview.
///
/// Other available API versions: 2023-11-15-preview, 2024-01-01, 2025-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcontainerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var virtualNetworkRetrieve = new AzureNative.HybridContainerService.VirtualNetworkRetrieve("virtualNetworkRetrieve", new()
///     {
///         ExtendedLocation = new AzureNative.HybridContainerService.Inputs.VirtualNetworksExtendedLocationArgs
///         {
///             Name = "/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation",
///             Type = "CustomLocation",
///         },
///         Location = "westus",
///         Properties = new AzureNative.HybridContainerService.Inputs.VirtualNetworksPropertiesArgs
///         {
///             InfraVnetProfile = new AzureNative.HybridContainerService.Inputs.VirtualNetworksPropertiesInfraVnetProfileArgs
///             {
///                 Hci = new AzureNative.HybridContainerService.Inputs.VirtualNetworksPropertiesHciArgs
///                 {
///                     MocGroup = "target-group",
///                     MocLocation = "MocLocation",
///                     MocVnetName = "test-vnet",
///                 },
///             },
///             VipPool = new[]
///             {
///                 new AzureNative.HybridContainerService.Inputs.VirtualNetworksPropertiesVipPoolArgs
///                 {
///                     EndIP = "192.168.0.50",
///                     StartIP = "192.168.0.10",
///                 },
///             },
///             VmipPool = new[]
///             {
///                 new AzureNative.HybridContainerService.Inputs.VirtualNetworksPropertiesVmipPoolArgs
///                 {
///                     EndIP = "192.168.0.130",
///                     StartIP = "192.168.0.110",
///                 },
///             },
///         },
///         ResourceGroupName = "test-arcappliance-resgrp",
///         VirtualNetworksName = "test-vnet-static",
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
/// 	hybridcontainerservice "github.com/pulumi/pulumi-azure-native-sdk/hybridcontainerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcontainerservice.NewVirtualNetworkRetrieve(ctx, "virtualNetworkRetrieve", &hybridcontainerservice.VirtualNetworkRetrieveArgs{
/// 			ExtendedLocation: &hybridcontainerservice.VirtualNetworksExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			Properties: &hybridcontainerservice.VirtualNetworksPropertiesArgs{
/// 				InfraVnetProfile: &hybridcontainerservice.VirtualNetworksPropertiesInfraVnetProfileArgs{
/// 					Hci: &hybridcontainerservice.VirtualNetworksPropertiesHciArgs{
/// 						MocGroup:    pulumi.String("target-group"),
/// 						MocLocation: pulumi.String("MocLocation"),
/// 						MocVnetName: pulumi.String("test-vnet"),
/// 					},
/// 				},
/// 				VipPool: hybridcontainerservice.VirtualNetworksPropertiesVipPoolArray{
/// 					&hybridcontainerservice.VirtualNetworksPropertiesVipPoolArgs{
/// 						EndIP:   pulumi.String("192.168.0.50"),
/// 						StartIP: pulumi.String("192.168.0.10"),
/// 					},
/// 				},
/// 				VmipPool: hybridcontainerservice.VirtualNetworksPropertiesVmipPoolArray{
/// 					&hybridcontainerservice.VirtualNetworksPropertiesVmipPoolArgs{
/// 						EndIP:   pulumi.String("192.168.0.130"),
/// 						StartIP: pulumi.String("192.168.0.110"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName:   pulumi.String("test-arcappliance-resgrp"),
/// 			VirtualNetworksName: pulumi.String("test-vnet-static"),
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
/// import com.pulumi.azurenative.hybridcontainerservice.VirtualNetworkRetrieve;
/// import com.pulumi.azurenative.hybridcontainerservice.VirtualNetworkRetrieveArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.VirtualNetworksExtendedLocationArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.VirtualNetworksPropertiesArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.VirtualNetworksPropertiesInfraVnetProfileArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.VirtualNetworksPropertiesHciArgs;
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
///         var virtualNetworkRetrieve = new VirtualNetworkRetrieve("virtualNetworkRetrieve", VirtualNetworkRetrieveArgs.builder()
///             .extendedLocation(VirtualNetworksExtendedLocationArgs.builder()
///                 .name("/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation")
///                 .type("CustomLocation")
///                 .build())
///             .location("westus")
///             .properties(VirtualNetworksPropertiesArgs.builder()
///                 .infraVnetProfile(VirtualNetworksPropertiesInfraVnetProfileArgs.builder()
///                     .hci(VirtualNetworksPropertiesHciArgs.builder()
///                         .mocGroup("target-group")
///                         .mocLocation("MocLocation")
///                         .mocVnetName("test-vnet")
///                         .build())
///                     .build())
///                 .vipPool(VirtualNetworksPropertiesVipPoolArgs.builder()
///                     .endIP("192.168.0.50")
///                     .startIP("192.168.0.10")
///                     .build())
///                 .vmipPool(VirtualNetworksPropertiesVmipPoolArgs.builder()
///                     .endIP("192.168.0.130")
///                     .startIP("192.168.0.110")
///                     .build())
///                 .build())
///             .resourceGroupName("test-arcappliance-resgrp")
///             .virtualNetworksName("test-vnet-static")
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
/// const virtualNetworkRetrieve = new azure_native.hybridcontainerservice.VirtualNetworkRetrieve("virtualNetworkRetrieve", {
///     extendedLocation: {
///         name: "/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation",
///         type: "CustomLocation",
///     },
///     location: "westus",
///     properties: {
///         infraVnetProfile: {
///             hci: {
///                 mocGroup: "target-group",
///                 mocLocation: "MocLocation",
///                 mocVnetName: "test-vnet",
///             },
///         },
///         vipPool: [{
///             endIP: "192.168.0.50",
///             startIP: "192.168.0.10",
///         }],
///         vmipPool: [{
///             endIP: "192.168.0.130",
///             startIP: "192.168.0.110",
///         }],
///     },
///     resourceGroupName: "test-arcappliance-resgrp",
///     virtualNetworksName: "test-vnet-static",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_retrieve = azure_native.hybridcontainerservice.VirtualNetworkRetrieve("virtualNetworkRetrieve",
///     extended_location={
///         "name": "/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation",
///         "type": "CustomLocation",
///     },
///     location="westus",
///     properties={
///         "infra_vnet_profile": {
///             "hci": {
///                 "moc_group": "target-group",
///                 "moc_location": "MocLocation",
///                 "moc_vnet_name": "test-vnet",
///             },
///         },
///         "vip_pool": [{
///             "end_ip": "192.168.0.50",
///             "start_ip": "192.168.0.10",
///         }],
///         "vmip_pool": [{
///             "end_ip": "192.168.0.130",
///             "start_ip": "192.168.0.110",
///         }],
///     },
///     resource_group_name="test-arcappliance-resgrp",
///     virtual_networks_name="test-vnet-static")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkRetrieve:
///     type: azure-native:hybridcontainerservice:VirtualNetworkRetrieve
///     properties:
///       extendedLocation:
///         name: /subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation
///         type: CustomLocation
///       location: westus
///       properties:
///         infraVnetProfile:
///           hci:
///             mocGroup: target-group
///             mocLocation: MocLocation
///             mocVnetName: test-vnet
///         vipPool:
///           - endIP: 192.168.0.50
///             startIP: 192.168.0.10
///         vmipPool:
///           - endIP: 192.168.0.130
///             startIP: 192.168.0.110
///       resourceGroupName: test-arcappliance-resgrp
///       virtualNetworksName: test-vnet-static
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
/// $ pulumi import azure-native:hybridcontainerservice:VirtualNetworkRetrieve test-vnet-static /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridContainerService/virtualNetworks/{virtualNetworksName}
/// ```
class VirtualNetworkRetrieve extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<VirtualNetworksResponseExtendedLocation?>
  extendedLocation;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// HybridAKSNetworkSpec defines the desired state of HybridAKSNetwork
  late final pulumi.Output<VirtualNetworksPropertiesResponse> properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [VirtualNetworkRetrieve].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkRetrieve]. {@macro pulumi_hybridcontainerservice_virtual_network_retrieve_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkRetrieve(
    String name, {
    VirtualNetworkRetrieveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridcontainerservice:VirtualNetworkRetrieve',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<VirtualNetworksResponseExtendedLocation?>(
      'extendedLocation',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<VirtualNetworksPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
