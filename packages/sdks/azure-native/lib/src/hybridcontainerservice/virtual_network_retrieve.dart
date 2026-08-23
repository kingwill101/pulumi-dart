import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'virtual_network_properties_response.dart';
import 'virtual_network_response_extended_location.dart';
import 'virtual_network_retrieve_args.dart';

/// The Virtual Network resource definition.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2023-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcontainerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///         ExtendedLocation = new AzureNative.HybridContainerService.Inputs.VirtualNetworkExtendedLocationArgs
///         {
///             Name = "/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation",
///             Type = AzureNative.HybridContainerService.ExtendedLocationTypes.CustomLocation,
///         },
///         Location = "westus",
///         Properties = new AzureNative.HybridContainerService.Inputs.VirtualNetworkPropertiesArgs
///         {
///             DnsServers = new[]
///             {
///                 "192.168.0.1",
///             },
///             Gateway = "192.168.0.1",
///             InfraVnetProfile = new AzureNative.HybridContainerService.Inputs.VirtualNetworkPropertiesInfraVnetProfileArgs
///             {
///                 Hci = new AzureNative.HybridContainerService.Inputs.VirtualNetworkPropertiesHciArgs
///                 {
///                     MocGroup = "target-group",
///                     MocLocation = "MocLocation",
///                     MocVnetName = "vnet1",
///                 },
///             },
///             IpAddressPrefix = "192.168.0.0/16",
///             VipPool = new[]
///             {
///                 new AzureNative.HybridContainerService.Inputs.VirtualNetworkPropertiesVipPoolArgs
///                 {
///                     EndIP = "192.168.0.50",
///                     StartIP = "192.168.0.10",
///                 },
///             },
///             VlanID = 10,
///             VmipPool = new[]
///             {
///                 new AzureNative.HybridContainerService.Inputs.VirtualNetworkPropertiesVmipPoolArgs
///                 {
///                     EndIP = "192.168.0.130",
///                     StartIP = "192.168.0.110",
///                 },
///             },
///         },
///         ResourceGroupName = "test-arcappliance-resgrp",
///         VirtualNetworkName = "test-vnet-static",
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
/// 			ExtendedLocation: &hybridcontainerservice.VirtualNetworkExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation"),
/// 				Type: pulumi.String(hybridcontainerservice.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			Properties: &hybridcontainerservice.VirtualNetworkPropertiesArgs{
/// 				DnsServers: pulumi.StringArray{
/// 					pulumi.String("192.168.0.1"),
/// 				},
/// 				Gateway: pulumi.String("192.168.0.1"),
/// 				InfraVnetProfile: &hybridcontainerservice.VirtualNetworkPropertiesInfraVnetProfileArgs{
/// 					Hci: &hybridcontainerservice.VirtualNetworkPropertiesHciArgs{
/// 						MocGroup:    pulumi.String("target-group"),
/// 						MocLocation: pulumi.String("MocLocation"),
/// 						MocVnetName: pulumi.String("vnet1"),
/// 					},
/// 				},
/// 				IpAddressPrefix: pulumi.String("192.168.0.0/16"),
/// 				VipPool: hybridcontainerservice.VirtualNetworkPropertiesVipPoolArray{
/// 					&hybridcontainerservice.VirtualNetworkPropertiesVipPoolArgs{
/// 						EndIP:   pulumi.String("192.168.0.50"),
/// 						StartIP: pulumi.String("192.168.0.10"),
/// 					},
/// 				},
/// 				VlanID: pulumi.Int(10),
/// 				VmipPool: hybridcontainerservice.VirtualNetworkPropertiesVmipPoolArray{
/// 					&hybridcontainerservice.VirtualNetworkPropertiesVmipPoolArgs{
/// 						EndIP:   pulumi.String("192.168.0.130"),
/// 						StartIP: pulumi.String("192.168.0.110"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName:  pulumi.String("test-arcappliance-resgrp"),
/// 			VirtualNetworkName: pulumi.String("test-vnet-static"),
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
/// resource "azure-native_hybridcontainerservice_virtualnetworkretrieve" "virtualNetworkRetrieve" {
///   extended_location = {
///     name = "/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation"
///     type = "CustomLocation"
///   }
///   location = "westus"
///   properties = {
///     dns_servers = ["192.168.0.1"]
///     gateway     = "192.168.0.1"
///     infra_vnet_profile = {
///       hci = {
///         moc_group     = "target-group"
///         moc_location  = "MocLocation"
///         moc_vnet_name = "vnet1"
///       }
///     }
///     ip_address_prefix = "192.168.0.0/16"
///     vip_pool = [{
///       "endIP"   = "192.168.0.50"
///       "startIP" = "192.168.0.10"
///     }]
///     vlan_id = 10
///     vmip_pool = [{
///       "endIP"   = "192.168.0.130"
///       "startIP" = "192.168.0.110"
///     }]
///   }
///   resource_group_name  = "test-arcappliance-resgrp"
///   virtual_network_name = "test-vnet-static"
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
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.VirtualNetworkExtendedLocationArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.VirtualNetworkPropertiesArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.VirtualNetworkPropertiesInfraVnetProfileArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.VirtualNetworkPropertiesHciArgs;
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
///         var virtualNetworkRetrieve = new VirtualNetworkRetrieve("virtualNetworkRetrieve", VirtualNetworkRetrieveArgs.builder()
///             .extendedLocation(VirtualNetworkExtendedLocationArgs.builder()
///                 .name("/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation")
///                 .type("CustomLocation")
///                 .build())
///             .location("westus")
///             .properties(VirtualNetworkPropertiesArgs.builder()
///                 .dnsServers("192.168.0.1")
///                 .gateway("192.168.0.1")
///                 .infraVnetProfile(VirtualNetworkPropertiesInfraVnetProfileArgs.builder()
///                     .hci(VirtualNetworkPropertiesHciArgs.builder()
///                         .mocGroup("target-group")
///                         .mocLocation("MocLocation")
///                         .mocVnetName("vnet1")
///                         .build())
///                     .build())
///                 .ipAddressPrefix("192.168.0.0/16")
///                 .vipPool(VirtualNetworkPropertiesVipPoolArgs.builder()
///                     .endIP("192.168.0.50")
///                     .startIP("192.168.0.10")
///                     .build())
///                 .vlanID(10)
///                 .vmipPool(VirtualNetworkPropertiesVmipPoolArgs.builder()
///                     .endIP("192.168.0.130")
///                     .startIP("192.168.0.110")
///                     .build())
///                 .build())
///             .resourceGroupName("test-arcappliance-resgrp")
///             .virtualNetworkName("test-vnet-static")
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
///         type: azure_native.hybridcontainerservice.ExtendedLocationTypes.CustomLocation,
///     },
///     location: "westus",
///     properties: {
///         dnsServers: ["192.168.0.1"],
///         gateway: "192.168.0.1",
///         infraVnetProfile: {
///             hci: {
///                 mocGroup: "target-group",
///                 mocLocation: "MocLocation",
///                 mocVnetName: "vnet1",
///             },
///         },
///         ipAddressPrefix: "192.168.0.0/16",
///         vipPool: [{
///             endIP: "192.168.0.50",
///             startIP: "192.168.0.10",
///         }],
///         vlanID: 10,
///         vmipPool: [{
///             endIP: "192.168.0.130",
///             startIP: "192.168.0.110",
///         }],
///     },
///     resourceGroupName: "test-arcappliance-resgrp",
///     virtualNetworkName: "test-vnet-static",
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
///         "type": azure_native.hybridcontainerservice.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     location="westus",
///     properties={
///         "dns_servers": ["192.168.0.1"],
///         "gateway": "192.168.0.1",
///         "infra_vnet_profile": {
///             "hci": {
///                 "moc_group": "target-group",
///                 "moc_location": "MocLocation",
///                 "moc_vnet_name": "vnet1",
///             },
///         },
///         "ip_address_prefix": "192.168.0.0/16",
///         "vip_pool": [{
///             "end_ip": "192.168.0.50",
///             "start_ip": "192.168.0.10",
///         }],
///         "vlan_id": 10,
///         "vmip_pool": [{
///             "end_ip": "192.168.0.130",
///             "start_ip": "192.168.0.110",
///         }],
///     },
///     resource_group_name="test-arcappliance-resgrp",
///     virtual_network_name="test-vnet-static")
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
///         dnsServers:
///           - 192.168.0.1
///         gateway: 192.168.0.1
///         infraVnetProfile:
///           hci:
///             mocGroup: target-group
///             mocLocation: MocLocation
///             mocVnetName: vnet1
///         ipAddressPrefix: 192.168.0.0/16
///         vipPool:
///           - endIP: 192.168.0.50
///             startIP: 192.168.0.10
///         vlanID: 10
///         vmipPool:
///           - endIP: 192.168.0.130
///             startIP: 192.168.0.110
///       resourceGroupName: test-arcappliance-resgrp
///       virtualNetworkName: test-vnet-static
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
/// $ pulumi import azure-native:hybridcontainerservice:VirtualNetworkRetrieve test-vnet-static /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridContainerService/virtualNetworks/{virtualNetworkName}
/// ```
class VirtualNetworkRetrieve extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Extended location pointing to the underlying infrastructure
  late final pulumi.Output<VirtualNetworkResponseExtendedLocation?> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of the virtual network resource
  late final pulumi.Output<VirtualNetworkPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
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
    extendedLocation = registerOutput<VirtualNetworkResponseExtendedLocation?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkResponseExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<VirtualNetworkPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
