import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'virtual_network_subnet_args.dart';
import 'virtual_network_subnet_properties_response.dart';

/// The virtual network resource definition.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutVirtualNetworkSubnet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetworkSubnet = new AzureNative.AzureStackHCI.VirtualNetworkSubnet("virtualNetworkSubnet", new()
///     {
///         Properties = new AzureNative.AzureStackHCI.Inputs.VirtualNetworkSubnetPropertiesArgs
///         {
///             AddressPrefix = "10.0.0.0/28",
///         },
///         ResourceGroupName = "test-rg",
///         SubnetName = "subnet1",
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
/// 		_, err := azurestackhci.NewVirtualNetworkSubnet(ctx, "virtualNetworkSubnet", &azurestackhci.VirtualNetworkSubnetArgs{
/// 			Properties: &azurestackhci.VirtualNetworkSubnetPropertiesArgs{
/// 				AddressPrefix: pulumi.String("10.0.0.0/28"),
/// 			},
/// 			ResourceGroupName:  pulumi.String("test-rg"),
/// 			SubnetName:         pulumi.String("subnet1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_azurestackhci_virtualnetworksubnet" "virtualNetworkSubnet" {
///   properties = {
///     address_prefix = "10.0.0.0/28"
///   }
///   resource_group_name  = "test-rg"
///   subnet_name          = "subnet1"
///   virtual_network_name = "test-vnet"
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
/// import com.pulumi.azurenative.azurestackhci.VirtualNetworkSubnet;
/// import com.pulumi.azurenative.azurestackhci.VirtualNetworkSubnetArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.VirtualNetworkSubnetPropertiesArgs;
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
///         var virtualNetworkSubnet = new VirtualNetworkSubnet("virtualNetworkSubnet", VirtualNetworkSubnetArgs.builder()
///             .properties(VirtualNetworkSubnetPropertiesArgs.builder()
///                 .addressPrefix("10.0.0.0/28")
///                 .build())
///             .resourceGroupName("test-rg")
///             .subnetName("subnet1")
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
/// const virtualNetworkSubnet = new azure_native.azurestackhci.VirtualNetworkSubnet("virtualNetworkSubnet", {
///     properties: {
///         addressPrefix: "10.0.0.0/28",
///     },
///     resourceGroupName: "test-rg",
///     subnetName: "subnet1",
///     virtualNetworkName: "test-vnet",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_subnet = azure_native.azurestackhci.VirtualNetworkSubnet("virtualNetworkSubnet",
///     properties={
///         "address_prefix": "10.0.0.0/28",
///     },
///     resource_group_name="test-rg",
///     subnet_name="subnet1",
///     virtual_network_name="test-vnet")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkSubnet:
///     type: azure-native:azurestackhci:VirtualNetworkSubnet
///     properties:
///       properties:
///         addressPrefix: 10.0.0.0/28
///       resourceGroupName: test-rg
///       subnetName: subnet1
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
/// $ pulumi import azure-native:azurestackhci:VirtualNetworkSubnet subnet /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}
/// ```
class VirtualNetworkSubnet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<VirtualNetworkSubnetPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [VirtualNetworkSubnet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkSubnet]. {@macro pulumi_azurestackhci_virtual_network_subnet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkSubnet(
    String name, {
    VirtualNetworkSubnetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:VirtualNetworkSubnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<VirtualNetworkSubnetPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkSubnetPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
