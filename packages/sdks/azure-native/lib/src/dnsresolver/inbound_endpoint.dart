import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_endpoint_args.dart';
import 'system_data_response.dart';

/// Describes an inbound endpoint for a DNS resolver.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2020-04-01-preview, 2022-07-01, 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Upsert inbound endpoint for DNS resolver
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var inboundEndpoint = new AzureNative.DnsResolver.InboundEndpoint("inboundEndpoint", new()
///     {
///         DnsResolverName = "sampleDnsResolver",
///         InboundEndpointName = "sampleInboundEndpoint",
///         IpConfigurations = new[]
///         {
///             new AzureNative.DnsResolver.Inputs.IpConfigurationArgs
///             {
///                 PrivateIpAllocationMethod = AzureNative.DnsResolver.IpAllocationMethod.Dynamic,
///                 Subnet = new AzureNative.DnsResolver.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork/subnets/sampleSubnet",
///                 },
///             },
///         },
///         Location = "westus2",
///         ResourceGroupName = "sampleResourceGroup",
///         Tags =
///         {
///             { "key1", "value1" },
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
/// 	dnsresolver "github.com/pulumi/pulumi-azure-native-sdk/dnsresolver/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dnsresolver.NewInboundEndpoint(ctx, "inboundEndpoint", &dnsresolver.InboundEndpointArgs{
/// 			DnsResolverName:     pulumi.String("sampleDnsResolver"),
/// 			InboundEndpointName: pulumi.String("sampleInboundEndpoint"),
/// 			IpConfigurations: dnsresolver.IpConfigurationArray{
/// 				&dnsresolver.IpConfigurationArgs{
/// 					PrivateIpAllocationMethod: pulumi.String(dnsresolver.IpAllocationMethodDynamic),
/// 					Subnet: &dnsresolver.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork/subnets/sampleSubnet"),
/// 					},
/// 				},
/// 			},
/// 			Location:          pulumi.String("westus2"),
/// 			ResourceGroupName: pulumi.String("sampleResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.dnsresolver.InboundEndpoint;
/// import com.pulumi.azurenative.dnsresolver.InboundEndpointArgs;
/// import com.pulumi.azurenative.dnsresolver.inputs.IpConfigurationArgs;
/// import com.pulumi.azurenative.dnsresolver.inputs.SubResourceArgs;
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
///         var inboundEndpoint = new InboundEndpoint("inboundEndpoint", InboundEndpointArgs.builder()
///             .dnsResolverName("sampleDnsResolver")
///             .inboundEndpointName("sampleInboundEndpoint")
///             .ipConfigurations(IpConfigurationArgs.builder()
///                 .privateIpAllocationMethod("Dynamic")
///                 .subnet(SubResourceArgs.builder()
///                     .id("/subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork/subnets/sampleSubnet")
///                     .build())
///                 .build())
///             .location("westus2")
///             .resourceGroupName("sampleResourceGroup")
///             .tags(Map.of("key1", "value1"))
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
/// const inboundEndpoint = new azure_native.dnsresolver.InboundEndpoint("inboundEndpoint", {
///     dnsResolverName: "sampleDnsResolver",
///     inboundEndpointName: "sampleInboundEndpoint",
///     ipConfigurations: [{
///         privateIpAllocationMethod: azure_native.dnsresolver.IpAllocationMethod.Dynamic,
///         subnet: {
///             id: "/subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork/subnets/sampleSubnet",
///         },
///     }],
///     location: "westus2",
///     resourceGroupName: "sampleResourceGroup",
///     tags: {
///         key1: "value1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// inbound_endpoint = azure_native.dnsresolver.InboundEndpoint("inboundEndpoint",
///     dns_resolver_name="sampleDnsResolver",
///     inbound_endpoint_name="sampleInboundEndpoint",
///     ip_configurations=[{
///         "private_ip_allocation_method": azure_native.dnsresolver.IpAllocationMethod.DYNAMIC,
///         "subnet": {
///             "id": "/subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork/subnets/sampleSubnet",
///         },
///     }],
///     location="westus2",
///     resource_group_name="sampleResourceGroup",
///     tags={
///         "key1": "value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   inboundEndpoint:
///     type: azure-native:dnsresolver:InboundEndpoint
///     properties:
///       dnsResolverName: sampleDnsResolver
///       inboundEndpointName: sampleInboundEndpoint
///       ipConfigurations:
///         - privateIpAllocationMethod: Dynamic
///           subnet:
///             id: /subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork/subnets/sampleSubnet
///       location: westus2
///       resourceGroupName: sampleResourceGroup
///       tags:
///         key1: value1
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
/// $ pulumi import azure-native:dnsresolver:InboundEndpoint sampleInboundEndpoint /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dnsResolvers/{dnsResolverName}/inboundEndpoints/{inboundEndpointName}
/// ```
class InboundEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// ETag of the inbound endpoint.
  late final pulumi.Output<String> etag;
  /// IP configurations for the inbound endpoint.
  late final pulumi.Output<List<Map<String, dynamic>>> ipConfigurations;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The current provisioning state of the inbound endpoint. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<String> provisioningState;
  /// The resourceGuid property of the inbound endpoint resource.
  late final pulumi.Output<String> resourceGuid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [InboundEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InboundEndpoint]. {@macro pulumi_dnsresolver_inbound_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InboundEndpoint(
    String name, {
    InboundEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dnsresolver:InboundEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    ipConfigurations = registerOutput<List<Map<String, dynamic>>>('ipConfigurations');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
