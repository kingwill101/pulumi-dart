import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_forwarding_ruleset_args.dart';
import 'system_data_response.dart';

/// Describes a DNS forwarding ruleset.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2020-04-01-preview, 2022-07-01, 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Upsert DNS forwarding ruleset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dnsForwardingRuleset = new AzureNative.DnsResolver.DnsForwardingRuleset("dnsForwardingRuleset", new()
///     {
///         DnsForwardingRulesetName = "samplednsForwardingRuleset",
///         DnsResolverOutboundEndpoints = new[]
///         {
///             new AzureNative.DnsResolver.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolvers/sampleDnsResolver/outboundEndpoints/sampleOutboundEndpoint0",
///             },
///             new AzureNative.DnsResolver.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolvers/sampleDnsResolver/outboundEndpoints/sampleOutboundEndpoint1",
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
/// 		_, err := dnsresolver.NewDnsForwardingRuleset(ctx, "dnsForwardingRuleset", &dnsresolver.DnsForwardingRulesetArgs{
/// 			DnsForwardingRulesetName: pulumi.String("samplednsForwardingRuleset"),
/// 			DnsResolverOutboundEndpoints: dnsresolver.SubResourceArray{
/// 				&dnsresolver.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolvers/sampleDnsResolver/outboundEndpoints/sampleOutboundEndpoint0"),
/// 				},
/// 				&dnsresolver.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolvers/sampleDnsResolver/outboundEndpoints/sampleOutboundEndpoint1"),
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
/// import com.pulumi.azurenative.dnsresolver.DnsForwardingRuleset;
/// import com.pulumi.azurenative.dnsresolver.DnsForwardingRulesetArgs;
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
///         var dnsForwardingRuleset = new DnsForwardingRuleset("dnsForwardingRuleset", DnsForwardingRulesetArgs.builder()
///             .dnsForwardingRulesetName("samplednsForwardingRuleset")
///             .dnsResolverOutboundEndpoints(
///                 SubResourceArgs.builder()
///                     .id("/subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolvers/sampleDnsResolver/outboundEndpoints/sampleOutboundEndpoint0")
///                     .build(),
///                 SubResourceArgs.builder()
///                     .id("/subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolvers/sampleDnsResolver/outboundEndpoints/sampleOutboundEndpoint1")
///                     .build())
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
/// const dnsForwardingRuleset = new azure_native.dnsresolver.DnsForwardingRuleset("dnsForwardingRuleset", {
///     dnsForwardingRulesetName: "samplednsForwardingRuleset",
///     dnsResolverOutboundEndpoints: [
///         {
///             id: "/subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolvers/sampleDnsResolver/outboundEndpoints/sampleOutboundEndpoint0",
///         },
///         {
///             id: "/subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolvers/sampleDnsResolver/outboundEndpoints/sampleOutboundEndpoint1",
///         },
///     ],
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
/// dns_forwarding_ruleset = azure_native.dnsresolver.DnsForwardingRuleset("dnsForwardingRuleset",
///     dns_forwarding_ruleset_name="samplednsForwardingRuleset",
///     dns_resolver_outbound_endpoints=[
///         {
///             "id": "/subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolvers/sampleDnsResolver/outboundEndpoints/sampleOutboundEndpoint0",
///         },
///         {
///             "id": "/subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolvers/sampleDnsResolver/outboundEndpoints/sampleOutboundEndpoint1",
///         },
///     ],
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
///   dnsForwardingRuleset:
///     type: azure-native:dnsresolver:DnsForwardingRuleset
///     properties:
///       dnsForwardingRulesetName: samplednsForwardingRuleset
///       dnsResolverOutboundEndpoints:
///         - id: /subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolvers/sampleDnsResolver/outboundEndpoints/sampleOutboundEndpoint0
///         - id: /subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolvers/sampleDnsResolver/outboundEndpoints/sampleOutboundEndpoint1
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
/// $ pulumi import azure-native:dnsresolver:DnsForwardingRuleset sampleDnsForwardingRuleset /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dnsForwardingRulesets/{dnsForwardingRulesetName}
/// ```
class DnsForwardingRuleset extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The reference to the DNS resolver outbound endpoints that are used to route DNS queries matching the forwarding rules in the ruleset to the target DNS servers.
  late final pulumi.Output<List<Map<String, dynamic>>> dnsResolverOutboundEndpoints;
  /// ETag of the DNS forwarding ruleset.
  late final pulumi.Output<String> etag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The current provisioning state of the DNS forwarding ruleset. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<String> provisioningState;
  /// The resourceGuid for the DNS forwarding ruleset.
  late final pulumi.Output<String> resourceGuid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DnsForwardingRuleset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsForwardingRuleset]. {@macro pulumi_dnsresolver_dns_forwarding_ruleset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsForwardingRuleset(
    String name, {
    DnsForwardingRulesetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dnsresolver:DnsForwardingRuleset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dnsResolverOutboundEndpoints = registerOutput<List<Map<String, dynamic>>>('dnsResolverOutboundEndpoints');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
