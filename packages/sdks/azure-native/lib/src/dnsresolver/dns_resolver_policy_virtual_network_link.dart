import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_resolver_policy_virtual_network_link_args.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';

/// Describes a DNS resolver policy virtual network link.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Upsert DNS resolver policy virtual network link
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dnsResolverPolicyVirtualNetworkLink = new AzureNative.DnsResolver.DnsResolverPolicyVirtualNetworkLink("dnsResolverPolicyVirtualNetworkLink", new()
///     {
///         DnsResolverPolicyName = "sampleDnsResolverPolicy",
///         DnsResolverPolicyVirtualNetworkLinkName = "sampleVirtualNetworkLink",
///         Location = "westus2",
///         ResourceGroupName = "sampleResourceGroup",
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         VirtualNetwork = new AzureNative.DnsResolver.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork",
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
/// 		_, err := dnsresolver.NewDnsResolverPolicyVirtualNetworkLink(ctx, "dnsResolverPolicyVirtualNetworkLink", &dnsresolver.DnsResolverPolicyVirtualNetworkLinkArgs{
/// 			DnsResolverPolicyName:                   pulumi.String("sampleDnsResolverPolicy"),
/// 			DnsResolverPolicyVirtualNetworkLinkName: pulumi.String("sampleVirtualNetworkLink"),
/// 			Location:                                pulumi.String("westus2"),
/// 			ResourceGroupName:                       pulumi.String("sampleResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			VirtualNetwork: &dnsresolver.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork"),
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
/// import com.pulumi.azurenative.dnsresolver.DnsResolverPolicyVirtualNetworkLink;
/// import com.pulumi.azurenative.dnsresolver.DnsResolverPolicyVirtualNetworkLinkArgs;
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
///         var dnsResolverPolicyVirtualNetworkLink = new DnsResolverPolicyVirtualNetworkLink("dnsResolverPolicyVirtualNetworkLink", DnsResolverPolicyVirtualNetworkLinkArgs.builder()
///             .dnsResolverPolicyName("sampleDnsResolverPolicy")
///             .dnsResolverPolicyVirtualNetworkLinkName("sampleVirtualNetworkLink")
///             .location("westus2")
///             .resourceGroupName("sampleResourceGroup")
///             .tags(Map.of("key1", "value1"))
///             .virtualNetwork(SubResourceArgs.builder()
///                 .id("/subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork")
///                 .build())
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
/// const dnsResolverPolicyVirtualNetworkLink = new azure_native.dnsresolver.DnsResolverPolicyVirtualNetworkLink("dnsResolverPolicyVirtualNetworkLink", {
///     dnsResolverPolicyName: "sampleDnsResolverPolicy",
///     dnsResolverPolicyVirtualNetworkLinkName: "sampleVirtualNetworkLink",
///     location: "westus2",
///     resourceGroupName: "sampleResourceGroup",
///     tags: {
///         key1: "value1",
///     },
///     virtualNetwork: {
///         id: "/subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dns_resolver_policy_virtual_network_link = azure_native.dnsresolver.DnsResolverPolicyVirtualNetworkLink("dnsResolverPolicyVirtualNetworkLink",
///     dns_resolver_policy_name="sampleDnsResolverPolicy",
///     dns_resolver_policy_virtual_network_link_name="sampleVirtualNetworkLink",
///     location="westus2",
///     resource_group_name="sampleResourceGroup",
///     tags={
///         "key1": "value1",
///     },
///     virtual_network={
///         "id": "/subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dnsResolverPolicyVirtualNetworkLink:
///     type: azure-native:dnsresolver:DnsResolverPolicyVirtualNetworkLink
///     properties:
///       dnsResolverPolicyName: sampleDnsResolverPolicy
///       dnsResolverPolicyVirtualNetworkLinkName: sampleVirtualNetworkLink
///       location: westus2
///       resourceGroupName: sampleResourceGroup
///       tags:
///         key1: value1
///       virtualNetwork:
///         id: /subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork
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
/// $ pulumi import azure-native:dnsresolver:DnsResolverPolicyVirtualNetworkLink sampleVirtualNetworkLink /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dnsResolverPolicies/{dnsResolverPolicyName}/virtualNetworkLinks/{dnsResolverPolicyVirtualNetworkLinkName}
/// ```
class DnsResolverPolicyVirtualNetworkLink extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// ETag of the DNS resolver policy virtual network link.
  late final pulumi.Output<String> etag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The current provisioning state of the DNS resolver policy virtual network link. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The reference to the virtual network. This cannot be changed after creation.
  late final pulumi.Output<SubResourceResponse> virtualNetwork;

  /// Creates a new [DnsResolverPolicyVirtualNetworkLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsResolverPolicyVirtualNetworkLink]. {@macro pulumi_dnsresolver_dns_resolver_policy_virtual_network_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsResolverPolicyVirtualNetworkLink(
    String name, {
    DnsResolverPolicyVirtualNetworkLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dnsresolver:DnsResolverPolicyVirtualNetworkLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualNetwork = registerOutput<SubResourceResponse>('virtualNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
