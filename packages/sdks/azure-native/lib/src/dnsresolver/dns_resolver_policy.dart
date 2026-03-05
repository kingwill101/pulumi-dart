import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_resolver_policy_args.dart';
import 'system_data_response.dart';

/// Describes a DNS resolver policy.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Upsert DNS resolver policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dnsResolverPolicy = new AzureNative.DnsResolver.DnsResolverPolicy("dnsResolverPolicy", new()
///     {
///         DnsResolverPolicyName = "sampleDnsResolverPolicy",
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
/// 		_, err := dnsresolver.NewDnsResolverPolicy(ctx, "dnsResolverPolicy", &dnsresolver.DnsResolverPolicyArgs{
/// 			DnsResolverPolicyName: pulumi.String("sampleDnsResolverPolicy"),
/// 			Location:              pulumi.String("westus2"),
/// 			ResourceGroupName:     pulumi.String("sampleResourceGroup"),
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
/// import com.pulumi.azurenative.dnsresolver.DnsResolverPolicy;
/// import com.pulumi.azurenative.dnsresolver.DnsResolverPolicyArgs;
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
///         var dnsResolverPolicy = new DnsResolverPolicy("dnsResolverPolicy", DnsResolverPolicyArgs.builder()
///             .dnsResolverPolicyName("sampleDnsResolverPolicy")
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
/// const dnsResolverPolicy = new azure_native.dnsresolver.DnsResolverPolicy("dnsResolverPolicy", {
///     dnsResolverPolicyName: "sampleDnsResolverPolicy",
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
/// dns_resolver_policy = azure_native.dnsresolver.DnsResolverPolicy("dnsResolverPolicy",
///     dns_resolver_policy_name="sampleDnsResolverPolicy",
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
///   dnsResolverPolicy:
///     type: azure-native:dnsresolver:DnsResolverPolicy
///     properties:
///       dnsResolverPolicyName: sampleDnsResolverPolicy
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
/// $ pulumi import azure-native:dnsresolver:DnsResolverPolicy sampleDnsResolverPolicy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dnsResolverPolicies/{dnsResolverPolicyName}
/// ```
class DnsResolverPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// ETag of the DNS resolver policy.
  late final pulumi.Output<String> etag;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The current provisioning state of the DNS resolver policy. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<String> provisioningState;

  /// The resourceGuid property of the DNS resolver policy resource.
  late final pulumi.Output<String> resourceGuid;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DnsResolverPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsResolverPolicy]. {@macro pulumi_dnsresolver_dns_resolver_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsResolverPolicy(
    String name, {
    DnsResolverPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:dnsresolver:DnsResolverPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
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
  }
}
