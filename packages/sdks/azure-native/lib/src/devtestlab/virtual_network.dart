import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'virtual_network_args.dart';

/// A virtual network.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VirtualNetworks_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetwork = new AzureNative.DevTestLab.VirtualNetwork("virtualNetwork", new()
///     {
///         AllowedSubnets = new[]
///         {
///             new AzureNative.DevTestLab.Inputs.SubnetArgs
///             {
///                 AllowPublicIp = AzureNative.DevTestLab.UsagePermissionType.Allow,
///                 LabSubnetName = "{virtualNetworkName}Subnet",
///                 ResourceId = "/subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{virtualNetworkName}Subnet",
///             },
///         },
///         LabName = "{labName}",
///         Location = "{location}",
///         Name = "{virtualNetworkName}",
///         ResourceGroupName = "resourceGroupName",
///         Tags =
///         {
///             { "tagName1", "tagValue1" },
///         },
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
/// 	devtestlab "github.com/pulumi/pulumi-azure-native-sdk/devtestlab/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devtestlab.NewVirtualNetwork(ctx, "virtualNetwork", &devtestlab.VirtualNetworkArgs{
/// 			AllowedSubnets: devtestlab.SubnetArray{
/// 				&devtestlab.SubnetArgs{
/// 					AllowPublicIp: pulumi.String(devtestlab.UsagePermissionTypeAllow),
/// 					LabSubnetName: pulumi.String("{virtualNetworkName}Subnet"),
/// 					ResourceId:    pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{virtualNetworkName}Subnet"),
/// 				},
/// 			},
/// 			LabName:           pulumi.String("{labName}"),
/// 			Location:          pulumi.String("{location}"),
/// 			Name:              pulumi.String("{virtualNetworkName}"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Tags: pulumi.StringMap{
/// 				"tagName1": pulumi.String("tagValue1"),
/// 			},
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
/// resource "azure-native_devtestlab_virtualnetwork" "virtualNetwork" {
///   allowed_subnets {
///     allow_public_ip = "Allow"
///     lab_subnet_name = "{virtualNetworkName}Subnet"
///     resource_id     = "/subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{virtualNetworkName}Subnet"
///   }
///   lab_name            = "{labName}"
///   location            = "{location}"
///   name                = "{virtualNetworkName}"
///   resource_group_name = "resourceGroupName"
///   tags = {
///     "tagName1" = "tagValue1"
///   }
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
/// import com.pulumi.azurenative.devtestlab.VirtualNetwork;
/// import com.pulumi.azurenative.devtestlab.VirtualNetworkArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.SubnetArgs;
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
///         var virtualNetwork = new VirtualNetwork("virtualNetwork", VirtualNetworkArgs.builder()
///             .allowedSubnets(SubnetArgs.builder()
///                 .allowPublicIp("Allow")
///                 .labSubnetName("{virtualNetworkName}Subnet")
///                 .resourceId("/subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{virtualNetworkName}Subnet")
///                 .build())
///             .labName("{labName}")
///             .location("{location}")
///             .name("{virtualNetworkName}")
///             .resourceGroupName("resourceGroupName")
///             .tags(Map.of("tagName1", "tagValue1"))
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
/// const virtualNetwork = new azure_native.devtestlab.VirtualNetwork("virtualNetwork", {
///     allowedSubnets: [{
///         allowPublicIp: azure_native.devtestlab.UsagePermissionType.Allow,
///         labSubnetName: "{virtualNetworkName}Subnet",
///         resourceId: "/subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{virtualNetworkName}Subnet",
///     }],
///     labName: "{labName}",
///     location: "{location}",
///     name: "{virtualNetworkName}",
///     resourceGroupName: "resourceGroupName",
///     tags: {
///         tagName1: "tagValue1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network = azure_native.devtestlab.VirtualNetwork("virtualNetwork",
///     allowed_subnets=[{
///         "allow_public_ip": azure_native.devtestlab.UsagePermissionType.ALLOW,
///         "lab_subnet_name": "{virtualNetworkName}Subnet",
///         "resource_id": "/subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{virtualNetworkName}Subnet",
///     }],
///     lab_name="{labName}",
///     location="{location}",
///     name="{virtualNetworkName}",
///     resource_group_name="resourceGroupName",
///     tags={
///         "tagName1": "tagValue1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetwork:
///     type: azure-native:devtestlab:VirtualNetwork
///     properties:
///       allowedSubnets:
///         - allowPublicIp: Allow
///           labSubnetName: '{virtualNetworkName}Subnet'
///           resourceId: /subscriptions/{subscriptionId}/resourceGroups/resourceGroupName/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{virtualNetworkName}Subnet
///       labName: '{labName}'
///       location: '{location}'
///       name: '{virtualNetworkName}'
///       resourceGroupName: resourceGroupName
///       tags:
///         tagName1: tagValue1
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
/// $ pulumi import azure-native:devtestlab:VirtualNetwork {virtualNetworkName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/virtualnetworks/{name}
/// ```
class VirtualNetwork extends pulumi.CustomResource {
  /// The allowed subnets of the virtual network.
  late final pulumi.Output<List<Map<String, dynamic>>?> allowedSubnets;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The creation date of the virtual network.
  late final pulumi.Output<String> createdDate;
  /// The description of the virtual network.
  late final pulumi.Output<String?> description;
  /// The Microsoft.Network resource identifier of the virtual network.
  late final pulumi.Output<String?> externalProviderResourceId;
  /// The external subnet properties.
  late final pulumi.Output<List<Map<String, dynamic>>> externalSubnets;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning status of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The subnet overrides of the virtual network.
  late final pulumi.Output<List<Map<String, dynamic>>?> subnetOverrides;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The unique immutable identifier of a resource (Guid).
  late final pulumi.Output<String> uniqueIdentifier;

  /// Creates a new [VirtualNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetwork]. {@macro pulumi_devtestlab_virtual_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetwork(
    String name, {
    VirtualNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devtestlab:VirtualNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedSubnets = registerOutput<List<Map<String, dynamic>>?>('allowedSubnets');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String?>('description');
    externalProviderResourceId = registerOutput<String?>('externalProviderResourceId');
    externalSubnets = registerOutput<List<Map<String, dynamic>>>('externalSubnets');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    subnetOverrides = registerOutput<List<Map<String, dynamic>>?>('subnetOverrides');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
  }
}
