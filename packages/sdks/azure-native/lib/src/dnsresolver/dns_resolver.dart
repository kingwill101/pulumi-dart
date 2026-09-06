import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_resolver_args.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';

/// Describes a DNS resolver.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2020-04-01-preview, 2022-07-01, 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Upsert DNS resolver
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dnsResolver = new AzureNative.DnsResolver.DnsResolver("dnsResolver", new()
///     {
///         DnsResolverName = "sampleDnsResolver",
///         Location = "westus2",
///         ResourceGroupName = "sampleResourceGroup",
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         VirtualNetwork = new AzureNative.DnsResolver.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/cbb1387e-4b03-44f2-ad41-58d4677b9873/resourceGroups/virtualNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork",
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
/// 		_, err := dnsresolver.NewDnsResolver(ctx, "dnsResolver", &dnsresolver.DnsResolverArgs{
/// 			DnsResolverName:   pulumi.String("sampleDnsResolver"),
/// 			Location:          pulumi.String("westus2"),
/// 			ResourceGroupName: pulumi.String("sampleResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			VirtualNetwork: &dnsresolver.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/cbb1387e-4b03-44f2-ad41-58d4677b9873/resourceGroups/virtualNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork"),
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
/// resource "azure-native_dnsresolver_dnsresolver" "dnsResolver" {
///   dns_resolver_name   = "sampleDnsResolver"
///   location            = "westus2"
///   resource_group_name = "sampleResourceGroup"
///   tags = {
///     "key1" = "value1"
///   }
///   virtual_network = {
///     id = "/subscriptions/cbb1387e-4b03-44f2-ad41-58d4677b9873/resourceGroups/virtualNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork"
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
/// import com.pulumi.azurenative.dnsresolver.DnsResolver;
/// import com.pulumi.azurenative.dnsresolver.DnsResolverArgs;
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
///         var dnsResolver = new DnsResolver("dnsResolver", DnsResolverArgs.builder()
///             .dnsResolverName("sampleDnsResolver")
///             .location("westus2")
///             .resourceGroupName("sampleResourceGroup")
///             .tags(Map.of("key1", "value1"))
///             .virtualNetwork(SubResourceArgs.builder()
///                 .id("/subscriptions/cbb1387e-4b03-44f2-ad41-58d4677b9873/resourceGroups/virtualNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork")
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
/// const dnsResolver = new azure_native.dnsresolver.DnsResolver("dnsResolver", {
///     dnsResolverName: "sampleDnsResolver",
///     location: "westus2",
///     resourceGroupName: "sampleResourceGroup",
///     tags: {
///         key1: "value1",
///     },
///     virtualNetwork: {
///         id: "/subscriptions/cbb1387e-4b03-44f2-ad41-58d4677b9873/resourceGroups/virtualNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dns_resolver = azure_native.dnsresolver.DnsResolver("dnsResolver",
///     dns_resolver_name="sampleDnsResolver",
///     location="westus2",
///     resource_group_name="sampleResourceGroup",
///     tags={
///         "key1": "value1",
///     },
///     virtual_network={
///         "id": "/subscriptions/cbb1387e-4b03-44f2-ad41-58d4677b9873/resourceGroups/virtualNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dnsResolver:
///     type: azure-native:dnsresolver:DnsResolver
///     properties:
///       dnsResolverName: sampleDnsResolver
///       location: westus2
///       resourceGroupName: sampleResourceGroup
///       tags:
///         key1: value1
///       virtualNetwork:
///         id: /subscriptions/cbb1387e-4b03-44f2-ad41-58d4677b9873/resourceGroups/virtualNetworkResourceGroup/providers/Microsoft.Network/virtualNetworks/sampleVirtualNetwork
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
/// $ pulumi import azure-native:dnsresolver:DnsResolver sampleDnsResolver /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dnsResolvers/{dnsResolverName}
/// ```
class DnsResolver extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The current status of the DNS resolver. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<String> dnsResolverState;
  /// ETag of the DNS resolver.
  late final pulumi.Output<String> etag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The current provisioning state of the DNS resolver. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<String> provisioningState;
  /// The resourceGuid property of the DNS resolver resource.
  late final pulumi.Output<String> resourceGuid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The reference to the virtual network. This cannot be changed after creation.
  late final pulumi.Output<SubResourceResponse> virtualNetwork;

  /// Creates a new [DnsResolver].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsResolver]. {@macro pulumi_dnsresolver_dns_resolver_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsResolver(
    String name, {
    DnsResolverArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dnsresolver:DnsResolver',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dnsResolverState = registerOutput<String>('dnsResolverState');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    virtualNetwork = registerOutput<SubResourceResponse>('virtualNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DnsResolver] resource.
  DnsResolver.reference(String urn)
    : super(
        'azure-native:dnsresolver:DnsResolver',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dnsResolverState = registerOutput<String>('dnsResolverState');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    virtualNetwork = registerOutput<SubResourceResponse>('virtualNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
