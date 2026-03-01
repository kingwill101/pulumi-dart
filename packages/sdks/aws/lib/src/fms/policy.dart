import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_exclude_map.dart';
import 'policy_include_map.dart';
import 'policy_security_service_policy_data.dart';
import 'policy_state.dart';

/// Provides a resource to create an AWS Firewall Manager policy. You need to be using AWS organizations and have enabled the Firewall Manager administrator account.
///
/// > **NOTE:** Due to limitations with testing, we provide it as best effort. If you find it useful, and have the ability to help test or notice issues, consider reaching out to us on GitHub.
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
///     name: "FMS-Policy-Example",
///     excludeResourceTags: false,
///     remediationEnabled: false,
///     resourceType: "AWS::ElasticLoadBalancingV2::LoadBalancer",
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
///     name="FMS-Policy-Example",
///     exclude_resource_tags=False,
///     remediation_enabled=False,
///     resource_type="AWS::ElasticLoadBalancingV2::LoadBalancer",
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
///         Name = "FMS-Policy-Example",
///         ExcludeResourceTags = false,
///         RemediationEnabled = false,
///         ResourceType = "AWS::ElasticLoadBalancingV2::LoadBalancer",
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
/// 			Name:                pulumi.String("FMS-Policy-Example"),
/// 			ExcludeResourceTags: pulumi.Bool(false),
/// 			RemediationEnabled:  pulumi.Bool(false),
/// 			ResourceType:        pulumi.String("AWS::ElasticLoadBalancingV2::LoadBalancer"),
/// 			SecurityServicePolicyData: &fms.PolicySecurityServicePolicyDataArgs{
/// 				Type: pulumi.String("WAF"),
/// 				ManagedServiceData: exampleRuleGroup.ID().ApplyT(func(id string) (pulumi.String, error) {
/// 					var _zero pulumi.String
/// 					tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 						"type": "WAF",
/// 						"ruleGroups": []map[string]interface{}{
/// 							map[string]interface{}{
/// 								"id": id,
/// 								"overrideAction": map[string]interface{}{
/// 									"type": "COUNT",
/// 								},
/// 							},
/// 						},
/// 						"defaultAction": map[string]interface{}{
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
///         var exampleRuleGroup = new RuleGroup("exampleRuleGroup", RuleGroupArgs.builder()
///             .metricName("WAFRuleGroupExample")
///             .name("WAF-Rule-Group-Example")
///             .build());
///
///         var example = new Policy("example", PolicyArgs.builder()
///             .name("FMS-Policy-Example")
///             .excludeResourceTags(false)
///             .remediationEnabled(false)
///             .resourceType("AWS::ElasticLoadBalancingV2::LoadBalancer")
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
///       name: FMS-Policy-Example
///       excludeResourceTags: false
///       remediationEnabled: false
///       resourceType: AWS::ElasticLoadBalancingV2::LoadBalancer
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
  late final pulumi.Output<String> arn;
  /// If true, the request will also perform a clean-up process. Defaults to `true`. More information can be found here [AWS Firewall Manager delete policy](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_DeletePolicy.html)
  late final pulumi.Output<bool?> deleteAllPolicyResources;
  /// If true, Firewall Manager will automatically remove protections from resources that leave the policy scope. Defaults to `false`. More information can be found here [AWS Firewall Manager policy contents](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html)
  late final pulumi.Output<bool?> deleteUnusedFmManagedResources;
  /// The description of the AWS Network Firewall firewall policy.
  late final pulumi.Output<String?> description;
  /// A map of lists of accounts and OU's to exclude from the policy. See the `exclude_map` block.
  late final pulumi.Output<PolicyExcludeMap?> excludeMap;
  /// A boolean value, if true the tags that are specified in the `resource_tags` are not protected by this policy. If set to false and resource_tags are populated, resources that contain tags will be protected by this policy.
  late final pulumi.Output<bool> excludeResourceTags;
  /// A map of lists of accounts and OU's to include in the policy. See the `include_map` block.
  late final pulumi.Output<PolicyIncludeMap?> includeMap;
  /// The friendly name of the AWS Firewall Manager Policy.
  late final pulumi.Output<String> name;
  /// A unique identifier for each update to the policy.
  late final pulumi.Output<String> policyUpdateToken;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A boolean value, indicates if the policy should automatically applied to resources that already exist in the account.
  late final pulumi.Output<bool?> remediationEnabled;
  late final pulumi.Output<List<String>> resourceSetIds;
  /// Controls how multiple resource tags are combined: with AND, so that a resource must have all tags to be included or excluded, or OR, so that a resource must have at least one tag. The valid values are `AND` and `OR`.
  late final pulumi.Output<String> resourceTagLogicalOperator;
  /// A map of resource tags, that if present will filter protections on resources based on the exclude_resource_tags.
  late final pulumi.Output<Map<String, String>?> resourceTags;
  /// A resource type to protect. Conflicts with `resource_type_list`. See the [FMS API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html#fms-Type-Policy-ResourceType) for more information about supported values.
  late final pulumi.Output<String> resourceType;
  /// A list of resource types to protect. Conflicts with `resource_type`. See the [FMS API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html#fms-Type-Policy-ResourceType) for more information about supported values. Lists with only one element are not supported, instead use `resource_type`.
  late final pulumi.Output<List<String>> resourceTypeLists;
  /// The objects to include in Security Service Policy Data. See the `security_service_policy_data` block.
  late final pulumi.Output<PolicySecurityServicePolicyData> securityServicePolicyData;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deleteAllPolicyResources = registerOutput<bool?>('deleteAllPolicyResources');
    this.deleteUnusedFmManagedResources = registerOutput<bool?>('deleteUnusedFmManagedResources');
    this.description = registerOutput<String?>('description');
    this.excludeMap = registerOutput<PolicyExcludeMap?>('excludeMap');
    this.excludeResourceTags = registerOutput<bool>('excludeResourceTags');
    this.includeMap = registerOutput<PolicyIncludeMap?>('includeMap');
    this.name = registerOutput<String>('name');
    this.policyUpdateToken = registerOutput<String>('policyUpdateToken');
    this.region = registerOutput<String>('region');
    this.remediationEnabled = registerOutput<bool?>('remediationEnabled');
    this.resourceSetIds = registerOutput<List<String>>('resourceSetIds');
    this.resourceTagLogicalOperator = registerOutput<String>('resourceTagLogicalOperator');
    this.resourceTags = registerOutput<Map<String, String>?>('resourceTags');
    this.resourceType = registerOutput<String>('resourceType');
    this.resourceTypeLists = registerOutput<List<String>>('resourceTypeLists');
    this.securityServicePolicyData = registerOutput<PolicySecurityServicePolicyData>('securityServicePolicyData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Policy] resource's state with the given [name] and [id].
  static Policy get(
    String name,
    pulumi.Input<String> id, {
    PolicyState? state,
  }) {
    return Policy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    this.arn = registerOutput<String>('arn');
    this.deleteAllPolicyResources = registerOutput<bool?>('deleteAllPolicyResources');
    this.deleteUnusedFmManagedResources = registerOutput<bool?>('deleteUnusedFmManagedResources');
    this.description = registerOutput<String?>('description');
    this.excludeMap = registerOutput<PolicyExcludeMap?>('excludeMap');
    this.excludeResourceTags = registerOutput<bool>('excludeResourceTags');
    this.includeMap = registerOutput<PolicyIncludeMap?>('includeMap');
    this.name = registerOutput<String>('name');
    this.policyUpdateToken = registerOutput<String>('policyUpdateToken');
    this.region = registerOutput<String>('region');
    this.remediationEnabled = registerOutput<bool?>('remediationEnabled');
    this.resourceSetIds = registerOutput<List<String>>('resourceSetIds');
    this.resourceTagLogicalOperator = registerOutput<String>('resourceTagLogicalOperator');
    this.resourceTags = registerOutput<Map<String, String>?>('resourceTags');
    this.resourceType = registerOutput<String>('resourceType');
    this.resourceTypeLists = registerOutput<List<String>>('resourceTypeLists');
    this.securityServicePolicyData = registerOutput<PolicySecurityServicePolicyData>('securityServicePolicyData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
