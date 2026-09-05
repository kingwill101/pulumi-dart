import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_exclude_map.dart';
import 'policy_include_map.dart';
import 'policy_security_service_policy_data.dart';
import 'policy_state.dart';

/// Provides a resource to create an AWS Firewall Manager policy. You need to be using AWS organizations and have enabled the Firewall Manager administrator account.
///
/// &gt; **NOTE:** Due to limitations with testing, we provide it as best effort. If you find it useful, and have the ability to help test or notice issues, consider reaching out to us on GitHub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleRuleGroup = new aws.wafregional.RuleGroup("example", {
///     metricName: "WAFRuleGroupExample",
///     name: "WAF-Rule-Group-Example",
/// });
/// const example = new aws.fms.Policy("example", {
///     securityServicePolicyData: {
///         type: "WAF",
///         managedServiceData: pulumi.jsonStringify({
///             type: "WAF",
///             ruleGroups: [{
///                 id: exampleRuleGroup.id,
///                 overrideAction: {
///                     type: "COUNT",
///                 },
///             }],
///             defaultAction: {
///                 type: "BLOCK",
///             },
///             overrideCustomerWebACLAssociation: false,
///         }),
///     },
///     name: "FMS-Policy-Example",
///     excludeResourceTags: false,
///     remediationEnabled: false,
///     resourceType: "AWS::ElasticLoadBalancingV2::LoadBalancer",
///     tags: {
///         Name: "example-fms-policy",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example_rule_group = aws.wafregional.RuleGroup("example",
///     metric_name="WAFRuleGroupExample",
///     name="WAF-Rule-Group-Example")
/// example = aws.fms.Policy("example",
///     security_service_policy_data={
///         "type": "WAF",
///         "managed_service_data": pulumi.Output.json_dumps({
///             "type": "WAF",
///             "ruleGroups": [{
///                 "id": example_rule_group.id,
///                 "overrideAction": {
///                     "type": "COUNT",
///                 },
///             }],
///             "defaultAction": {
///                 "type": "BLOCK",
///             },
///             "overrideCustomerWebACLAssociation": False,
///         }),
///     },
///     name="FMS-Policy-Example",
///     exclude_resource_tags=False,
///     remediation_enabled=False,
///     resource_type="AWS::ElasticLoadBalancingV2::LoadBalancer",
///     tags={
///         "Name": "example-fms-policy",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleRuleGroup = new Aws.WafRegional.RuleGroup("example", new()
///     {
///         MetricName = "WAFRuleGroupExample",
///         Name = "WAF-Rule-Group-Example",
///     });
///
///     var example = new Aws.Fms.Policy("example", new()
///     {
///         SecurityServicePolicyData = new Aws.Fms.Inputs.PolicySecurityServicePolicyDataArgs
///         {
///             Type = "WAF",
///             ManagedServiceData = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///             {
///                 ["type"] = "WAF",
///                 ["ruleGroups"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["id"] = exampleRuleGroup.Id,
///                         ["overrideAction"] = new Dictionary<string, object?>
///                         {
///                             ["type"] = "COUNT",
///                         },
///                     },
///                 },
///                 ["defaultAction"] = new Dictionary<string, object?>
///                 {
///                     ["type"] = "BLOCK",
///                 },
///                 ["overrideCustomerWebACLAssociation"] = false,
///             })),
///         },
///         Name = "FMS-Policy-Example",
///         ExcludeResourceTags = false,
///         RemediationEnabled = false,
///         ResourceType = "AWS::ElasticLoadBalancingV2::LoadBalancer",
///         Tags =
///         {
///             { "Name", "example-fms-policy" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleRuleGroup, err := wafregional.NewRuleGroup(ctx, "example", &wafregional.RuleGroupArgs{
/// 			MetricName: pulumi.String("WAFRuleGroupExample"),
/// 			Name:       pulumi.String("WAF-Rule-Group-Example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fms.NewPolicy(ctx, "example", &fms.PolicyArgs{
/// 			SecurityServicePolicyData: &fms.PolicySecurityServicePolicyDataArgs{
/// 				Type: pulumi.String("WAF"),
/// 				ManagedServiceData: exampleRuleGroup.ID().ApplyT(func(id pulumi.ID) (pulumi.String, error) {
/// 					var _zero pulumi.String
/// 					tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 						"type": "WAF",
/// 						"ruleGroups": []map[string]interface{}{
/// 							map[string]interface{}{
/// 								"id": id,
/// 								"overrideAction": map[string]string{
/// 									"type": "COUNT",
/// 								},
/// 							},
/// 						},
/// 						"defaultAction": map[string]string{
/// 							"type": "BLOCK",
/// 						},
/// 						"overrideCustomerWebACLAssociation": false,
/// 					})
/// 					if err != nil {
/// 						return _zero, err
/// 					}
/// 					json0 := string(tmpJSON0)
/// 					return pulumi.String(json0), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			Name:                pulumi.String("FMS-Policy-Example"),
/// 			ExcludeResourceTags: pulumi.Bool(false),
/// 			RemediationEnabled:  pulumi.Bool(false),
/// 			ResourceType:        pulumi.String("AWS::ElasticLoadBalancingV2::LoadBalancer"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-fms-policy"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_fms_policy" "example" {
///   security_service_policy_data = {
///     type = "WAF"
///     managed_service_data = jsonencode({
///       "type" = "WAF"
///       "ruleGroups" = [{
///         "id" = aws_wafregional_rulegroup.example.id
///         "overrideAction" = {
///           "type" = "COUNT"
///         }
///       }]
///       "defaultAction" = {
///         "type" = "BLOCK"
///       }
///       "overrideCustomerWebACLAssociation" = false
///     })
///   }
///   name                  = "FMS-Policy-Example"
///   exclude_resource_tags = false
///   remediation_enabled   = false
///   resource_type         = "AWS::ElasticLoadBalancingV2::LoadBalancer"
///   tags = {
///     "Name" = "example-fms-policy"
///   }
/// }
/// resource "aws_wafregional_rulegroup" "example" {
///   metric_name = "WAFRuleGroupExample"
///   name        = "WAF-Rule-Group-Example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafregional.RuleGroup;
/// import com.pulumi.aws.wafregional.RuleGroupArgs;
/// import com.pulumi.aws.fms.Policy;
/// import com.pulumi.aws.fms.PolicyArgs;
/// import com.pulumi.aws.fms.inputs.PolicySecurityServicePolicyDataArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var exampleRuleGroup = new RuleGroup("exampleRuleGroup", RuleGroupArgs.builder()
///             .metricName("WAFRuleGroupExample")
///             .name("WAF-Rule-Group-Example")
///             .build());
///
///         var example = new Policy("example", PolicyArgs.builder()
///             .securityServicePolicyData(PolicySecurityServicePolicyDataArgs.builder()
///                 .type("WAF")
///                 .managedServiceData(exampleRuleGroup.id().applyValue(_id -> serializeJson(
///                     jsonObject(
///                         jsonProperty("type", "WAF"),
///                         jsonProperty("ruleGroups", jsonArray(jsonObject(
///                             jsonProperty("id", _id),
///                             jsonProperty("overrideAction", jsonObject(
///                                 jsonProperty("type", "COUNT")
///                             ))
///                         ))),
///                         jsonProperty("defaultAction", jsonObject(
///                             jsonProperty("type", "BLOCK")
///                         )),
///                         jsonProperty("overrideCustomerWebACLAssociation", false)
///                     ))))
///                 .build())
///             .name("FMS-Policy-Example")
///             .excludeResourceTags(false)
///             .remediationEnabled(false)
///             .resourceType("AWS::ElasticLoadBalancingV2::LoadBalancer")
///             .tags(Map.of("Name", "example-fms-policy"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fms:Policy
///     properties:
///       securityServicePolicyData:
///         type: WAF
///         managedServiceData:
///           fn::toJSON:
///             type: WAF
///             ruleGroups:
///               - id: ${exampleRuleGroup.id}
///                 overrideAction:
///                   type: COUNT
///             defaultAction:
///               type: BLOCK
///             overrideCustomerWebACLAssociation: false
///       name: FMS-Policy-Example
///       excludeResourceTags: false
///       remediationEnabled: false
///       resourceType: AWS::ElasticLoadBalancingV2::LoadBalancer
///       tags:
///         Name: example-fms-policy
///   exampleRuleGroup:
///     type: aws:wafregional:RuleGroup
///     name: example
///     properties:
///       metricName: WAFRuleGroupExample
///       name: WAF-Rule-Group-Example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Firewall Manager policies using the policy ID. For example:
///
/// ```sh
/// $ pulumi import aws:fms/policy:Policy example 5be49585-a7e3-4c49-dde1-a179fe4a619a
/// ```
class Policy extends pulumi.CustomResource {
  /// ARN of the policy.
  late final pulumi.Output<String> arn;
  /// If true, the request will also perform a clean-up process. Defaults to `true`. More information can be found here [AWS Firewall Manager delete policy](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_DeletePolicy.html)
  late final pulumi.Output<bool?> deleteAllPolicyResources;
  /// If true, Firewall Manager will automatically remove protections from resources that leave the policy scope. Defaults to `false`. More information can be found here [AWS Firewall Manager policy contents](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html)
  late final pulumi.Output<bool?> deleteUnusedFmManagedResources;
  /// Description of the AWS Network Firewall firewall policy.
  late final pulumi.Output<String?> description;
  /// Map of lists of accounts and OUs to exclude from the policy. See the `excludeMap` block.
  late final pulumi.Output<PolicyExcludeMap?> excludeMap;
  /// Whether resources with the tags specified in `resourceTags` are excluded from protection. If `true`, tagged resources are not protected by this policy. If `false` and `resourceTags` are populated, resources that contain those tags are protected by this policy.
  late final pulumi.Output<bool> excludeResourceTags;
  /// Map of lists of accounts and OUs to include in the policy. See the `includeMap` block.
  late final pulumi.Output<PolicyIncludeMap?> includeMap;
  /// Friendly name of the AWS Firewall Manager Policy.
  late final pulumi.Output<String> name;
  /// Unique identifier for each update to the policy.
  late final pulumi.Output<String> policyUpdateToken;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Whether the policy is automatically applied to resources that already exist in the account.
  late final pulumi.Output<bool?> remediationEnabled;
  /// Set of resource set IDs associated with the policy.
  late final pulumi.Output<List<String>> resourceSetIds;
  /// Controls how multiple resource tags are combined: with AND, so that a resource must have all tags to be included or excluded, or OR, so that a resource must have at least one tag. The valid values are `AND` and `OR`.
  late final pulumi.Output<String> resourceTagLogicalOperator;
  /// Map of resource tags that, if present, filter protections on resources based on `excludeResourceTags`.
  late final pulumi.Output<Map<String, String>?> resourceTags;
  /// Resource type to protect. Conflicts with `resourceTypeList`. See the [FMS API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html#fms-Type-Policy-ResourceType) for more information about supported values.
  late final pulumi.Output<String> resourceType;
  /// List of resource types to protect. Conflicts with `resourceType`. See the [FMS API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html#fms-Type-Policy-ResourceType) for more information about supported values. Lists with only one element are not supported, instead use `resourceType`.
  late final pulumi.Output<List<String>> resourceTypeLists;
  /// Objects to include in Security Service Policy Data. See the `securityServicePolicyData` block.
  late final pulumi.Output<PolicySecurityServicePolicyData> securityServicePolicyData;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_fms_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fms/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    deleteAllPolicyResources = registerOutput<bool?>('deleteAllPolicyResources');
    deleteUnusedFmManagedResources = registerOutput<bool?>('deleteUnusedFmManagedResources');
    description = registerOutput<String?>('description');
    excludeMap = registerOutput<PolicyExcludeMap?>('excludeMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyExcludeMap.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    excludeResourceTags = registerOutput<bool>('excludeResourceTags');
    includeMap = registerOutput<PolicyIncludeMap?>('includeMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyIncludeMap.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    policyUpdateToken = registerOutput<String>('policyUpdateToken');
    region = registerOutput<String>('region');
    remediationEnabled = registerOutput<bool?>('remediationEnabled');
    resourceSetIds = registerOutput<List<String>>('resourceSetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    resourceTagLogicalOperator = registerOutput<String>('resourceTagLogicalOperator');
    resourceTags = registerOutput<Map<String, String>?>('resourceTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    resourceType = registerOutput<String>('resourceType');
    resourceTypeLists = registerOutput<List<String>>('resourceTypeLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    securityServicePolicyData = registerOutput<PolicySecurityServicePolicyData>('securityServicePolicyData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicySecurityServicePolicyData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Policy] resource's state with the given [name] and [id].
  static Policy get(
    String name,
    pulumi.Input<String> id, {
    PolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Policy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Policy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fms/policy:Policy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    deleteAllPolicyResources = registerOutput<bool?>('deleteAllPolicyResources');
    deleteUnusedFmManagedResources = registerOutput<bool?>('deleteUnusedFmManagedResources');
    description = registerOutput<String?>('description');
    excludeMap = registerOutput<PolicyExcludeMap?>('excludeMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyExcludeMap.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    excludeResourceTags = registerOutput<bool>('excludeResourceTags');
    includeMap = registerOutput<PolicyIncludeMap?>('includeMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyIncludeMap.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    policyUpdateToken = registerOutput<String>('policyUpdateToken');
    region = registerOutput<String>('region');
    remediationEnabled = registerOutput<bool?>('remediationEnabled');
    resourceSetIds = registerOutput<List<String>>('resourceSetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    resourceTagLogicalOperator = registerOutput<String>('resourceTagLogicalOperator');
    resourceTags = registerOutput<Map<String, String>?>('resourceTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    resourceType = registerOutput<String>('resourceType');
    resourceTypeLists = registerOutput<List<String>>('resourceTypeLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    securityServicePolicyData = registerOutput<PolicySecurityServicePolicyData>('securityServicePolicyData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicySecurityServicePolicyData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Policy] resource.
  Policy.reference(String urn)
    : super(
        'aws:fms/policy:Policy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    deleteAllPolicyResources = registerOutput<bool?>('deleteAllPolicyResources');
    deleteUnusedFmManagedResources = registerOutput<bool?>('deleteUnusedFmManagedResources');
    description = registerOutput<String?>('description');
    excludeMap = registerOutput<PolicyExcludeMap?>('excludeMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyExcludeMap.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    excludeResourceTags = registerOutput<bool>('excludeResourceTags');
    includeMap = registerOutput<PolicyIncludeMap?>('includeMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyIncludeMap.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    policyUpdateToken = registerOutput<String>('policyUpdateToken');
    region = registerOutput<String>('region');
    remediationEnabled = registerOutput<bool?>('remediationEnabled');
    resourceSetIds = registerOutput<List<String>>('resourceSetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    resourceTagLogicalOperator = registerOutput<String>('resourceTagLogicalOperator');
    resourceTags = registerOutput<Map<String, String>?>('resourceTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    resourceType = registerOutput<String>('resourceType');
    resourceTypeLists = registerOutput<List<String>>('resourceTypeLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    securityServicePolicyData = registerOutput<PolicySecurityServicePolicyData>('securityServicePolicyData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicySecurityServicePolicyData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
