import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_security_rule_action_response.dart';
import 'dns_security_rule_args.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';

/// Describes a DNS security rule.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2025-05-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dnsresolver [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Upsert DNS security rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dnsSecurityRule = new AzureNative.DnsResolver.DnsSecurityRule("dnsSecurityRule", new()
///     {
///         Action = new AzureNative.DnsResolver.Inputs.DnsSecurityRuleActionArgs
///         {
///             ActionType = AzureNative.DnsResolver.ActionType.Block,
///             BlockResponseCode = AzureNative.DnsResolver.BlockResponseCode.SERVFAIL,
///         },
///         DnsResolverDomainLists = new[]
///         {
///             new AzureNative.DnsResolver.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolverDomainLists/sampleDnsResolverDomainList",
///             },
///         },
///         DnsResolverPolicyName = "sampleDnsResolverPolicy",
///         DnsSecurityRuleName = "sampleDnsSecurityRule",
///         DnsSecurityRuleState = AzureNative.DnsResolver.DnsSecurityRuleState.Enabled,
///         Location = "westus2",
///         Priority = 100,
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
/// 		_, err := dnsresolver.NewDnsSecurityRule(ctx, "dnsSecurityRule", &dnsresolver.DnsSecurityRuleArgs{
/// 			Action: &dnsresolver.DnsSecurityRuleActionArgs{
/// 				ActionType:        pulumi.String(dnsresolver.ActionTypeBlock),
/// 				BlockResponseCode: pulumi.String(dnsresolver.BlockResponseCodeSERVFAIL),
/// 			},
/// 			DnsResolverDomainLists: dnsresolver.SubResourceArray{
/// 				&dnsresolver.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolverDomainLists/sampleDnsResolverDomainList"),
/// 				},
/// 			},
/// 			DnsResolverPolicyName: pulumi.String("sampleDnsResolverPolicy"),
/// 			DnsSecurityRuleName:   pulumi.String("sampleDnsSecurityRule"),
/// 			DnsSecurityRuleState:  pulumi.String(dnsresolver.DnsSecurityRuleStateEnabled),
/// 			Location:              pulumi.String("westus2"),
/// 			Priority:              pulumi.Int(100),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_dnsresolver_dnssecurityrule" "dnsSecurityRule" {
///   action = {
///     action_type         = "Block"
///     block_response_code = "SERVFAIL"
///   }
///   dns_resolver_domain_lists {
///     id = "/subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolverDomainLists/sampleDnsResolverDomainList"
///   }
///   dns_resolver_policy_name = "sampleDnsResolverPolicy"
///   dns_security_rule_name   = "sampleDnsSecurityRule"
///   dns_security_rule_state  = "Enabled"
///   location                 = "westus2"
///   priority                 = 100
///   resource_group_name      = "sampleResourceGroup"
///   tags = {
///     "key1" = "value1"
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
/// import com.pulumi.azurenative.dnsresolver.DnsSecurityRule;
/// import com.pulumi.azurenative.dnsresolver.DnsSecurityRuleArgs;
/// import com.pulumi.azurenative.dnsresolver.inputs.DnsSecurityRuleActionArgs;
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
///         var dnsSecurityRule = new DnsSecurityRule("dnsSecurityRule", DnsSecurityRuleArgs.builder()
///             .action(DnsSecurityRuleActionArgs.builder()
///                 .actionType("Block")
///                 .blockResponseCode("SERVFAIL")
///                 .build())
///             .dnsResolverDomainLists(SubResourceArgs.builder()
///                 .id("/subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolverDomainLists/sampleDnsResolverDomainList")
///                 .build())
///             .dnsResolverPolicyName("sampleDnsResolverPolicy")
///             .dnsSecurityRuleName("sampleDnsSecurityRule")
///             .dnsSecurityRuleState("Enabled")
///             .location("westus2")
///             .priority(100)
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
/// const dnsSecurityRule = new azure_native.dnsresolver.DnsSecurityRule("dnsSecurityRule", {
///     action: {
///         actionType: azure_native.dnsresolver.ActionType.Block,
///         blockResponseCode: azure_native.dnsresolver.BlockResponseCode.SERVFAIL,
///     },
///     dnsResolverDomainLists: [{
///         id: "/subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolverDomainLists/sampleDnsResolverDomainList",
///     }],
///     dnsResolverPolicyName: "sampleDnsResolverPolicy",
///     dnsSecurityRuleName: "sampleDnsSecurityRule",
///     dnsSecurityRuleState: azure_native.dnsresolver.DnsSecurityRuleState.Enabled,
///     location: "westus2",
///     priority: 100,
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
/// dns_security_rule = azure_native.dnsresolver.DnsSecurityRule("dnsSecurityRule",
///     action={
///         "action_type": azure_native.dnsresolver.ActionType.BLOCK,
///         "block_response_code": azure_native.dnsresolver.BlockResponseCode.SERVFAIL,
///     },
///     dns_resolver_domain_lists=[{
///         "id": "/subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolverDomainLists/sampleDnsResolverDomainList",
///     }],
///     dns_resolver_policy_name="sampleDnsResolverPolicy",
///     dns_security_rule_name="sampleDnsSecurityRule",
///     dns_security_rule_state=azure_native.dnsresolver.DnsSecurityRuleState.ENABLED,
///     location="westus2",
///     priority=100,
///     resource_group_name="sampleResourceGroup",
///     tags={
///         "key1": "value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dnsSecurityRule:
///     type: azure-native:dnsresolver:DnsSecurityRule
///     properties:
///       action:
///         actionType: Block
///         blockResponseCode: SERVFAIL
///       dnsResolverDomainLists:
///         - id: /subscriptions/abdd4249-9f34-4cc6-8e42-c2e32110603e/resourceGroups/sampleResourceGroup/providers/Microsoft.Network/dnsResolverDomainLists/sampleDnsResolverDomainList
///       dnsResolverPolicyName: sampleDnsResolverPolicy
///       dnsSecurityRuleName: sampleDnsSecurityRule
///       dnsSecurityRuleState: Enabled
///       location: westus2
///       priority: 100
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
/// $ pulumi import azure-native:dnsresolver:DnsSecurityRule sampleDnsSecurityRule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dnsResolverPolicies/{dnsResolverPolicyName}/dnsSecurityRules/{dnsSecurityRuleName}
/// ```
class DnsSecurityRule extends pulumi.CustomResource {
  /// The action to take on DNS requests that match the DNS security rule.
  late final pulumi.Output<DnsSecurityRuleActionResponse> action;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// DNS resolver policy domains lists that the DNS security rule applies to.
  late final pulumi.Output<List<SubResourceResponse>> dnsResolverDomainLists;
  /// The state of DNS security rule.
  late final pulumi.Output<String?> dnsSecurityRuleState;
  /// ETag of the DNS security rule.
  late final pulumi.Output<String> etag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The priority of the DNS security rule.
  late final pulumi.Output<int> priority;
  /// The current provisioning state of the DNS security rule. This is a read-only property and any attempt to set this value will be ignored.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DnsSecurityRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsSecurityRule]. {@macro pulumi_dnsresolver_dns_security_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsSecurityRule(
    String name, {
    DnsSecurityRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dnsresolver:DnsSecurityRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<DnsSecurityRuleActionResponse>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DnsSecurityRuleActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dnsResolverDomainLists = registerOutput<List<SubResourceResponse>>('dnsResolverDomainLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    dnsSecurityRuleState = registerOutput<String?>('dnsSecurityRuleState');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DnsSecurityRule] resource.
  DnsSecurityRule.reference(String urn)
    : super(
        'azure-native:dnsresolver:DnsSecurityRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<DnsSecurityRuleActionResponse>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DnsSecurityRuleActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dnsResolverDomainLists = registerOutput<List<SubResourceResponse>>('dnsResolverDomainLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    dnsSecurityRuleState = registerOutput<String?>('dnsSecurityRuleState');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
