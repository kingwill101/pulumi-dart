import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_resolver_virtual_network_link_args.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';

/// Describes a virtual network link.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2020-04-01-preview, 2022-07-01, 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Upsert virtual network link to a DNS forwarding ruleset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateResolverVirtualNetworkLink = new AzureNative.DnsResolver.PrivateResolverVirtualNetworkLink("privateResolverVirtualNetworkLink", new()
///     {
///         DnsForwardingRulesetName = "sampleDnsForwardingRuleset",
///         Metadata =
///         {
///             { "additionalProp1", "value1" },
///         },
///         ResourceGroupName = "sampleResourceGroup",
///         VirtualNetwork = new AzureNative.DnsResolver.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork",
///         },
///         VirtualNetworkLinkName = "sampleVirtualNetworkLink",
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
/// 		_, err := dnsresolver.NewPrivateResolverVirtualNetworkLink(ctx, "privateResolverVirtualNetworkLink", &dnsresolver.PrivateResolverVirtualNetworkLinkArgs{
/// 			DnsForwardingRulesetName: pulumi.String("sampleDnsForwardingRuleset"),
/// 			Metadata: pulumi.StringMap{
/// 				"additionalProp1": pulumi.String("value1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("sampleResourceGroup"),
/// 			VirtualNetwork: &dnsresolver.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork"),
/// 			},
/// 			VirtualNetworkLinkName: pulumi.String("sampleVirtualNetworkLink"),
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
/// resource "azure-native_dnsresolver_privateresolvervirtualnetworklink" "privateResolverVirtualNetworkLink" {
///   dns_forwarding_ruleset_name = "sampleDnsForwardingRuleset"
///   metadata = {
///     "additionalProp1" = "value1"
///   }
///   resource_group_name = "sampleResourceGroup"
///   virtual_network = {
///     id = "/subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork"
///   }
///   virtual_network_link_name = "sampleVirtualNetworkLink"
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
/// import com.pulumi.azurenative.dnsresolver.PrivateResolverVirtualNetworkLink;
/// import com.pulumi.azurenative.dnsresolver.PrivateResolverVirtualNetworkLinkArgs;
/// import com.pulumi.azurenative.dnsresolver.inputs.SubResourceArgs;
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
///         var privateResolverVirtualNetworkLink = new PrivateResolverVirtualNetworkLink("privateResolverVirtualNetworkLink", PrivateResolverVirtualNetworkLinkArgs.builder()
///             .dnsForwardingRulesetName("sampleDnsForwardingRuleset")
///             .metadata(Map.of("additionalProp1", "value1"))
///             .resourceGroupName("sampleResourceGroup")
///             .virtualNetwork(SubResourceArgs.builder()
///                 .id("/subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork")
///                 .build())
///             .virtualNetworkLinkName("sampleVirtualNetworkLink")
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
/// const privateResolverVirtualNetworkLink = new azure_native.dnsresolver.PrivateResolverVirtualNetworkLink("privateResolverVirtualNetworkLink", {
///     dnsForwardingRulesetName: "sampleDnsForwardingRuleset",
///     metadata: {
///         additionalProp1: "value1",
///     },
///     resourceGroupName: "sampleResourceGroup",
///     virtualNetwork: {
///         id: "/subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork",
///     },
///     virtualNetworkLinkName: "sampleVirtualNetworkLink",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_resolver_virtual_network_link = azure_native.dnsresolver.PrivateResolverVirtualNetworkLink("privateResolverVirtualNetworkLink",
///     dns_forwarding_ruleset_name="sampleDnsForwardingRuleset",
///     metadata={
///         "additionalProp1": "value1",
///     },
///     resource_group_name="sampleResourceGroup",
///     virtual_network={
///         "id": "/subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork",
///     },
///     virtual_network_link_name="sampleVirtualNetworkLink")
///
/// ```
///
/// ```yaml
/// resources:
///   privateResolverVirtualNetworkLink:
///     type: azure-native:dnsresolver:PrivateResolverVirtualNetworkLink
///     properties:
///       dnsForwardingRulesetName: sampleDnsForwardingRuleset
///       metadata:
///         additionalProp1: value1
///       resourceGroupName: sampleResourceGroup
///       virtualNetwork:
///         id: /subscriptions/0403cfa9-9659-4f33-9f30-1f191c51d111/resourceGroups/sampleVnetResourceGroupName/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork
///       virtualNetworkLinkName: sampleVirtualNetworkLink
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
/// $ pulumi import azure-native:dnsresolver:PrivateResolverVirtualNetworkLink sampleVirtualNetworkLink /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dnsForwardingRulesets/{dnsForwardingRulesetName}/virtualNetworkLinks/{virtualNetworkLinkName}
/// ```
class PrivateResolverVirtualNetworkLink extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// ETag of the virtual network link.
  late final pulumi.Output<String> etag;
  /// Metadata attached to the virtual network link.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The current provisioning state of the virtual network link. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The reference to the virtual network. This cannot be changed after creation.
  late final pulumi.Output<SubResourceResponse> virtualNetwork;

  /// Creates a new [PrivateResolverVirtualNetworkLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateResolverVirtualNetworkLink]. {@macro pulumi_dnsresolver_private_resolver_virtual_network_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateResolverVirtualNetworkLink(
    String name, {
    PrivateResolverVirtualNetworkLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dnsresolver:PrivateResolverVirtualNetworkLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    virtualNetwork = registerOutput<SubResourceResponse>('virtualNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [PrivateResolverVirtualNetworkLink] resource.
  PrivateResolverVirtualNetworkLink.reference(String urn)
    : super(
        'azure-native:dnsresolver:PrivateResolverVirtualNetworkLink',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    metadata = registerOutput<Map<String, String>?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    virtualNetwork = registerOutput<SubResourceResponse>('virtualNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
