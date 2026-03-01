import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_remediation_args.dart';

/// Provides a Cloud Config (Config) Aggregate Remediation resource.
///
/// Rule remediation in multi-account scenarios.
///
/// For information about Cloud Config (Config) Aggregate Remediation and how to use it, see [What is Aggregate Remediation](https://next.api.alibabacloud.com/document/Config/2020-09-07/CreateAggregateRemediation).
///
/// > **NOTE:** Available since v1.267.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const create_agg = new alicloud.cfg.Aggregator("create-agg", {
///     aggregatorName: "rd",
///     description: "rd",
///     aggregatorType: "RD",
/// });
/// const create_rule = new alicloud.cfg.AggregateConfigRule("create-rule", {
///     sourceOwner: "ALIYUN",
///     sourceIdentifier: "required-tags",
///     aggregateConfigRuleName: "agg-rule-name",
///     configRuleTriggerTypes: "ConfigurationItemChangeNotification",
///     riskLevel: 1,
///     resourceTypesScopes: ["ACS::OSS::Bucket"],
///     aggregatorId: create_agg.id,
///     inputParameters: {
///         tag1Key: "aaa",
///         tag1Value: "bbb",
///     },
/// });
/// const _default = new alicloud.cfg.AggregateRemediation("default", {
///     configRuleId: create_rule.configRuleId,
///     remediationTemplateId: "ACS-TAG-TagResources",
///     remediationSourceType: "ALIYUN",
///     invokeType: "MANUAL_EXECUTION",
///     remediationType: "OOS",
///     aggregatorId: create_agg.id,
///     remediationOriginParams: JSON.stringify({
///         properties: [
///             {
///                 name: "regionId",
///                 type: "String",
///                 value: "{regionId}",
///                 allowedValues: [],
///                 description: "region ID",
///             },
///             {
///                 name: "tags",
///                 type: "Json",
///                 value: "{\"aaa\":\"bbb\"}",
///                 allowedValues: [],
///                 description: "resource tags (for example,{\"k1\":\"v1\",\"k2\":\"v2\"}).",
///             },
///             {
///                 name: "resourceType",
///                 type: "String",
///                 value: "{resourceType}",
///                 allowedValues: [],
///                 description: "resource type",
///             },
///             {
///                 name: "resourceIds",
///                 type: "ARRAY",
///                 value: "[{\"resources\":[]}]",
///                 allowedValues: [],
///                 description: "Resource ID List",
///             },
///         ],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// create_agg = alicloud.cfg.Aggregator("create-agg",
///     aggregator_name="rd",
///     description="rd",
///     aggregator_type="RD")
/// create_rule = alicloud.cfg.AggregateConfigRule("create-rule",
///     source_owner="ALIYUN",
///     source_identifier="required-tags",
///     aggregate_config_rule_name="agg-rule-name",
///     config_rule_trigger_types="ConfigurationItemChangeNotification",
///     risk_level=1,
///     resource_types_scopes=["ACS::OSS::Bucket"],
///     aggregator_id=create_agg.id,
///     input_parameters={
///         "tag1Key": "aaa",
///         "tag1Value": "bbb",
///     })
/// default = alicloud.cfg.AggregateRemediation("default",
///     config_rule_id=create_rule.config_rule_id,
///     remediation_template_id="ACS-TAG-TagResources",
///     remediation_source_type="ALIYUN",
///     invoke_type="MANUAL_EXECUTION",
///     remediation_type="OOS",
///     aggregator_id=create_agg.id,
///     remediation_origin_params=json.dumps({
///         "properties": [
///             {
///                 "name": "regionId",
///                 "type": "String",
///                 "value": "{regionId}",
///                 "allowedValues": [],
///                 "description": "region ID",
///             },
///             {
///                 "name": "tags",
///                 "type": "Json",
///                 "value": "{\"aaa\":\"bbb\"}",
///                 "allowedValues": [],
///                 "description": "resource tags (for example,{\"k1\":\"v1\",\"k2\":\"v2\"}).",
///             },
///             {
///                 "name": "resourceType",
///                 "type": "String",
///                 "value": "{resourceType}",
///                 "allowedValues": [],
///                 "description": "resource type",
///             },
///             {
///                 "name": "resourceIds",
///                 "type": "ARRAY",
///                 "value": "[{\"resources\":[]}]",
///                 "allowedValues": [],
///                 "description": "Resource ID List",
///             },
///         ],
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var create_agg = new AliCloud.Cfg.Aggregator("create-agg", new()
///     {
///         AggregatorName = "rd",
///         Description = "rd",
///         AggregatorType = "RD",
///     });
///
///     var create_rule = new AliCloud.Cfg.AggregateConfigRule("create-rule", new()
///     {
///         SourceOwner = "ALIYUN",
///         SourceIdentifier = "required-tags",
///         AggregateConfigRuleName = "agg-rule-name",
///         ConfigRuleTriggerTypes = "ConfigurationItemChangeNotification",
///         RiskLevel = 1,
///         ResourceTypesScopes = new[]
///         {
///             "ACS::OSS::Bucket",
///         },
///         AggregatorId = create_agg.Id,
///         InputParameters =
///         {
///             { "tag1Key", "aaa" },
///             { "tag1Value", "bbb" },
///         },
///     });
///
///     var @default = new AliCloud.Cfg.AggregateRemediation("default", new()
///     {
///         ConfigRuleId = create_rule.ConfigRuleId,
///         RemediationTemplateId = "ACS-TAG-TagResources",
///         RemediationSourceType = "ALIYUN",
///         InvokeType = "MANUAL_EXECUTION",
///         RemediationType = "OOS",
///         AggregatorId = create_agg.Id,
///         RemediationOriginParams = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["properties"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["name"] = "regionId",
///                     ["type"] = "String",
///                     ["value"] = "{regionId}",
///                     ["allowedValues"] = new[]
///                     {
///                     },
///                     ["description"] = "region ID",
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["name"] = "tags",
///                     ["type"] = "Json",
///                     ["value"] = "{\"aaa\":\"bbb\"}",
///                     ["allowedValues"] = new[]
///                     {
///                     },
///                     ["description"] = "resource tags (for example,{\"k1\":\"v1\",\"k2\":\"v2\"}).",
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["name"] = "resourceType",
///                     ["type"] = "String",
///                     ["value"] = "{resourceType}",
///                     ["allowedValues"] = new[]
///                     {
///                     },
///                     ["description"] = "resource type",
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["name"] = "resourceIds",
///                     ["type"] = "ARRAY",
///                     ["value"] = "[{\"resources\":[]}]",
///                     ["allowedValues"] = new[]
///                     {
///                     },
///                     ["description"] = "Resource ID List",
///                 },
///             },
///         }),
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		create_agg, err := cfg.NewAggregator(ctx, "create-agg", &cfg.AggregatorArgs{
/// 			AggregatorName: pulumi.String("rd"),
/// 			Description:    pulumi.String("rd"),
/// 			AggregatorType: pulumi.String("RD"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		create_rule, err := cfg.NewAggregateConfigRule(ctx, "create-rule", &cfg.AggregateConfigRuleArgs{
/// 			SourceOwner:             pulumi.String("ALIYUN"),
/// 			SourceIdentifier:        pulumi.String("required-tags"),
/// 			AggregateConfigRuleName: pulumi.String("agg-rule-name"),
/// 			ConfigRuleTriggerTypes:  pulumi.String("ConfigurationItemChangeNotification"),
/// 			RiskLevel:               pulumi.Int(1),
/// 			ResourceTypesScopes: pulumi.StringArray{
/// 				pulumi.String("ACS::OSS::Bucket"),
/// 			},
/// 			AggregatorId: create_agg.ID(),
/// 			InputParameters: pulumi.StringMap{
/// 				"tag1Key":   pulumi.String("aaa"),
/// 				"tag1Value": pulumi.String("bbb"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"properties": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"name":          "regionId",
/// 					"type":          "String",
/// 					"value":         "{regionId}",
/// 					"allowedValues": []interface{}{},
/// 					"description":   "region ID",
/// 				},
/// 				map[string]interface{}{
/// 					"name":          "tags",
/// 					"type":          "Json",
/// 					"value":         "{\"aaa\":\"bbb\"}",
/// 					"allowedValues": []interface{}{},
/// 					"description":   "resource tags (for example,{\"k1\":\"v1\",\"k2\":\"v2\"}).",
/// 				},
/// 				map[string]interface{}{
/// 					"name":          "resourceType",
/// 					"type":          "String",
/// 					"value":         "{resourceType}",
/// 					"allowedValues": []interface{}{},
/// 					"description":   "resource type",
/// 				},
/// 				map[string]interface{}{
/// 					"name":          "resourceIds",
/// 					"type":          "ARRAY",
/// 					"value":         "[{\"resources\":[]}]",
/// 					"allowedValues": []interface{}{},
/// 					"description":   "Resource ID List",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = cfg.NewAggregateRemediation(ctx, "default", &cfg.AggregateRemediationArgs{
/// 			ConfigRuleId:            create_rule.ConfigRuleId,
/// 			RemediationTemplateId:   pulumi.String("ACS-TAG-TagResources"),
/// 			RemediationSourceType:   pulumi.String("ALIYUN"),
/// 			InvokeType:              pulumi.String("MANUAL_EXECUTION"),
/// 			RemediationType:         pulumi.String("OOS"),
/// 			AggregatorId:            create_agg.ID(),
/// 			RemediationOriginParams: pulumi.String(json0),
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
/// import com.pulumi.alicloud.cfg.Aggregator;
/// import com.pulumi.alicloud.cfg.AggregatorArgs;
/// import com.pulumi.alicloud.cfg.AggregateConfigRule;
/// import com.pulumi.alicloud.cfg.AggregateConfigRuleArgs;
/// import com.pulumi.alicloud.cfg.AggregateRemediation;
/// import com.pulumi.alicloud.cfg.AggregateRemediationArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var create_agg = new Aggregator("create-agg", AggregatorArgs.builder()
///             .aggregatorName("rd")
///             .description("rd")
///             .aggregatorType("RD")
///             .build());
///
///         var create_rule = new AggregateConfigRule("create-rule", AggregateConfigRuleArgs.builder()
///             .sourceOwner("ALIYUN")
///             .sourceIdentifier("required-tags")
///             .aggregateConfigRuleName("agg-rule-name")
///             .configRuleTriggerTypes("ConfigurationItemChangeNotification")
///             .riskLevel(1)
///             .resourceTypesScopes("ACS::OSS::Bucket")
///             .aggregatorId(create_agg.id())
///             .inputParameters(Map.ofEntries(
///                 Map.entry("tag1Key", "aaa"),
///                 Map.entry("tag1Value", "bbb")
///             ))
///             .build());
///
///         var default_ = new AggregateRemediation("default", AggregateRemediationArgs.builder()
///             .configRuleId(create_rule.configRuleId())
///             .remediationTemplateId("ACS-TAG-TagResources")
///             .remediationSourceType("ALIYUN")
///             .invokeType("MANUAL_EXECUTION")
///             .remediationType("OOS")
///             .aggregatorId(create_agg.id())
///             .remediationOriginParams(serializeJson(
///                 jsonObject(
///                     jsonProperty("properties", jsonArray(
///                         jsonObject(
///                             jsonProperty("name", "regionId"),
///                             jsonProperty("type", "String"),
///                             jsonProperty("value", "{regionId}"),
///                             jsonProperty("allowedValues", jsonArray(
///                             )),
///                             jsonProperty("description", "region ID")
///                         ),
///                         jsonObject(
///                             jsonProperty("name", "tags"),
///                             jsonProperty("type", "Json"),
///                             jsonProperty("value", "{\"aaa\":\"bbb\"}"),
///                             jsonProperty("allowedValues", jsonArray(
///                             )),
///                             jsonProperty("description", "resource tags (for example,{\"k1\":\"v1\",\"k2\":\"v2\"}).")
///                         ),
///                         jsonObject(
///                             jsonProperty("name", "resourceType"),
///                             jsonProperty("type", "String"),
///                             jsonProperty("value", "{resourceType}"),
///                             jsonProperty("allowedValues", jsonArray(
///                             )),
///                             jsonProperty("description", "resource type")
///                         ),
///                         jsonObject(
///                             jsonProperty("name", "resourceIds"),
///                             jsonProperty("type", "ARRAY"),
///                             jsonProperty("value", "[{\"resources\":[]}]"),
///                             jsonProperty("allowedValues", jsonArray(
///                             )),
///                             jsonProperty("description", "Resource ID List")
///                         )
///                     ))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   create-agg:
///     type: alicloud:cfg:Aggregator
///     properties:
///       aggregatorName: rd
///       description: rd
///       aggregatorType: RD
///   create-rule:
///     type: alicloud:cfg:AggregateConfigRule
///     properties:
///       sourceOwner: ALIYUN
///       sourceIdentifier: required-tags
///       aggregateConfigRuleName: agg-rule-name
///       configRuleTriggerTypes: ConfigurationItemChangeNotification
///       riskLevel: '1'
///       resourceTypesScopes:
///         - ACS::OSS::Bucket
///       aggregatorId: ${["create-agg"].id}
///       inputParameters:
///         tag1Key: aaa
///         tag1Value: bbb
///   default:
///     type: alicloud:cfg:AggregateRemediation
///     properties:
///       configRuleId: ${["create-rule"].configRuleId}
///       remediationTemplateId: ACS-TAG-TagResources
///       remediationSourceType: ALIYUN
///       invokeType: MANUAL_EXECUTION
///       remediationType: OOS
///       aggregatorId: ${["create-agg"].id}
///       remediationOriginParams:
///         fn::toJSON:
///           properties:
///             - name: regionId
///               type: String
///               value: '{regionId}'
///               allowedValues: []
///               description: region ID
///             - name: tags
///               type: Json
///               value: '{"aaa":"bbb"}'
///               allowedValues: []
///               description: resource tags (for example,{"k1":"v1","k2":"v2"}).
///             - name: resourceType
///               type: String
///               value: '{resourceType}'
///               allowedValues: []
///               description: resource type
///             - name: resourceIds
///               type: ARRAY
///               value: '[{"resources":[]}]'
///               allowedValues: []
///               description: Resource ID List
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Config (Config) Aggregate Remediation can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cfg/aggregateRemediation:AggregateRemediation example <aggregator_id>:<remediation_id>
/// ```
class AggregateRemediation extends pulumi.CustomResource {
  /// The account Group ID.
  /// For more information about how to obtain the account group ID, see ListAggregators.
  late final pulumi.Output<String> aggregatorId;
  /// The rule ID.
  /// For more information about how to obtain the rule ID, see [ListAggregateConfigRules].
  late final pulumi.Output<String> configRuleId;
  /// Correction of execution mode. Value:
  /// - NON_EXECUTION: Not executed.
  /// - AUTO_EXECUTION: Automatically executed.
  /// - MANUAL_EXECUTION: Execute manually.
  /// - NOT_CONFIG: Not set.
  late final pulumi.Output<String> invokeType;
  /// Multi-account remediation ID
  late final pulumi.Output<String> remediationId;
  /// Correct the parameters of the settings.
  /// For more information about how to obtain the parameters of remediation settings, see the parameter 'Template definition' in ListRemediationTemplates '.
  late final pulumi.Output<String> remediationOriginParams;
  /// The source of the template to perform the correction. Value:
  /// - ALIYUN (default): Official website template.
  /// - CUSTOM: CUSTOM template.
  /// - NONE: NONE.
  late final pulumi.Output<String?> remediationSourceType;
  /// The ID of the correction template.
  late final pulumi.Output<String> remediationTemplateId;
  /// Remediation type. Value:
  /// - OOS: Operation and maintenance orchestration (Template correction).
  /// - FC: Function Compute (custom correction).
  late final pulumi.Output<String> remediationType;

  /// Creates a new [AggregateRemediation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AggregateRemediation]. {@macro pulumi_cfg_aggregate_remediation_aggregate_remediation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AggregateRemediation(
    String name, {
    AggregateRemediationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/aggregateRemediation:AggregateRemediation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aggregatorId = registerOutput<String>('aggregatorId');
    this.configRuleId = registerOutput<String>('configRuleId');
    this.invokeType = registerOutput<String>('invokeType');
    this.remediationId = registerOutput<String>('remediationId');
    this.remediationOriginParams = registerOutput<String>('remediationOriginParams');
    this.remediationSourceType = registerOutput<String?>('remediationSourceType');
    this.remediationTemplateId = registerOutput<String>('remediationTemplateId');
    this.remediationType = registerOutput<String>('remediationType');
  }
}
