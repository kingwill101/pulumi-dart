import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_rule_args.dart';
import 'system_data_response.dart';

/// Describes a forwarding rule within a DNS forwarding ruleset.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2020-04-01-preview, 2022-07-01, 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Upsert forwarding rule in a DNS forwarding ruleset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var forwardingRule = new AzureNative.DnsResolver.ForwardingRule("forwardingRule", new()
///     {
///         DnsForwardingRulesetName = "sampleDnsForwardingRuleset",
///         DomainName = "contoso.com.",
///         ForwardingRuleName = "sampleForwardingRule",
///         ForwardingRuleState = AzureNative.DnsResolver.ForwardingRuleState.Enabled,
///         Metadata =
///         {
///             { "additionalProp1", "value1" },
///         },
///         ResourceGroupName = "sampleResourceGroup",
///         TargetDnsServers = new[]
///         {
///             new AzureNative.DnsResolver.Inputs.TargetDnsServerArgs
///             {
///                 IpAddress = "10.0.0.1",
///                 Port = 53,
///             },
///             new AzureNative.DnsResolver.Inputs.TargetDnsServerArgs
///             {
///                 IpAddress = "10.0.0.2",
///                 Port = 53,
///             },
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
/// 		_, err := dnsresolver.NewForwardingRule(ctx, "forwardingRule", &dnsresolver.ForwardingRuleArgs{
/// 			DnsForwardingRulesetName: pulumi.String("sampleDnsForwardingRuleset"),
/// 			DomainName:               pulumi.String("contoso.com."),
/// 			ForwardingRuleName:       pulumi.String("sampleForwardingRule"),
/// 			ForwardingRuleState:      pulumi.String(dnsresolver.ForwardingRuleStateEnabled),
/// 			Metadata: pulumi.StringMap{
/// 				"additionalProp1": pulumi.String("value1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("sampleResourceGroup"),
/// 			TargetDnsServers: dnsresolver.TargetDnsServerArray{
/// 				&dnsresolver.TargetDnsServerArgs{
/// 					IpAddress: pulumi.String("10.0.0.1"),
/// 					Port:      pulumi.Int(53),
/// 				},
/// 				&dnsresolver.TargetDnsServerArgs{
/// 					IpAddress: pulumi.String("10.0.0.2"),
/// 					Port:      pulumi.Int(53),
/// 				},
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
/// resource "azure-native_dnsresolver_forwardingrule" "forwardingRule" {
///   dns_forwarding_ruleset_name = "sampleDnsForwardingRuleset"
///   domain_name                 = "contoso.com."
///   forwarding_rule_name        = "sampleForwardingRule"
///   forwarding_rule_state       = "Enabled"
///   metadata = {
///     "additionalProp1" = "value1"
///   }
///   resource_group_name = "sampleResourceGroup"
///   target_dns_servers {
///     ip_address = "10.0.0.1"
///     port       = 53
///   }
///   target_dns_servers {
///     ip_address = "10.0.0.2"
///     port       = 53
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
/// import com.pulumi.azurenative.dnsresolver.ForwardingRule;
/// import com.pulumi.azurenative.dnsresolver.ForwardingRuleArgs;
/// import com.pulumi.azurenative.dnsresolver.inputs.TargetDnsServerArgs;
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
///         var forwardingRule = new ForwardingRule("forwardingRule", ForwardingRuleArgs.builder()
///             .dnsForwardingRulesetName("sampleDnsForwardingRuleset")
///             .domainName("contoso.com.")
///             .forwardingRuleName("sampleForwardingRule")
///             .forwardingRuleState("Enabled")
///             .metadata(Map.of("additionalProp1", "value1"))
///             .resourceGroupName("sampleResourceGroup")
///             .targetDnsServers(
///                 TargetDnsServerArgs.builder()
///                     .ipAddress("10.0.0.1")
///                     .port(53)
///                     .build(),
///                 TargetDnsServerArgs.builder()
///                     .ipAddress("10.0.0.2")
///                     .port(53)
///                     .build())
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
/// const forwardingRule = new azure_native.dnsresolver.ForwardingRule("forwardingRule", {
///     dnsForwardingRulesetName: "sampleDnsForwardingRuleset",
///     domainName: "contoso.com.",
///     forwardingRuleName: "sampleForwardingRule",
///     forwardingRuleState: azure_native.dnsresolver.ForwardingRuleState.Enabled,
///     metadata: {
///         additionalProp1: "value1",
///     },
///     resourceGroupName: "sampleResourceGroup",
///     targetDnsServers: [
///         {
///             ipAddress: "10.0.0.1",
///             port: 53,
///         },
///         {
///             ipAddress: "10.0.0.2",
///             port: 53,
///         },
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// forwarding_rule = azure_native.dnsresolver.ForwardingRule("forwardingRule",
///     dns_forwarding_ruleset_name="sampleDnsForwardingRuleset",
///     domain_name="contoso.com.",
///     forwarding_rule_name="sampleForwardingRule",
///     forwarding_rule_state=azure_native.dnsresolver.ForwardingRuleState.ENABLED,
///     metadata={
///         "additionalProp1": "value1",
///     },
///     resource_group_name="sampleResourceGroup",
///     target_dns_servers=[
///         {
///             "ip_address": "10.0.0.1",
///             "port": 53,
///         },
///         {
///             "ip_address": "10.0.0.2",
///             "port": 53,
///         },
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   forwardingRule:
///     type: azure-native:dnsresolver:ForwardingRule
///     properties:
///       dnsForwardingRulesetName: sampleDnsForwardingRuleset
///       domainName: contoso.com.
///       forwardingRuleName: sampleForwardingRule
///       forwardingRuleState: Enabled
///       metadata:
///         additionalProp1: value1
///       resourceGroupName: sampleResourceGroup
///       targetDnsServers:
///         - ipAddress: 10.0.0.1
///           port: 53
///         - ipAddress: 10.0.0.2
///           port: 53
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
/// $ pulumi import azure-native:dnsresolver:ForwardingRule sampleForwardingRule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dnsForwardingRulesets/{dnsForwardingRulesetName}/forwardingRules/{forwardingRuleName}
/// ```
class ForwardingRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The domain name for the forwarding rule.
  late final pulumi.Output<String> domainName;
  /// ETag of the forwarding rule.
  late final pulumi.Output<String> etag;
  /// The state of forwarding rule.
  late final pulumi.Output<String?> forwardingRuleState;
  /// Metadata attached to the forwarding rule.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The current provisioning state of the forwarding rule. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// DNS servers to forward the DNS query to.
  late final pulumi.Output<List<Map<String, dynamic>>> targetDnsServers;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ForwardingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ForwardingRule]. {@macro pulumi_dnsresolver_forwarding_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ForwardingRule(
    String name, {
    ForwardingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dnsresolver:ForwardingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    domainName = registerOutput<String>('domainName');
    etag = registerOutput<String>('etag');
    forwardingRuleState = registerOutput<String?>('forwardingRuleState');
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetDnsServers = registerOutput<List<Map<String, dynamic>>>('targetDnsServers');
    type = registerOutput<String>('type');
  }
}
