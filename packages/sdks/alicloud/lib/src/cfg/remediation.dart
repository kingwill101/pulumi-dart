import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_args.dart';
import 'remediation_state.dart';

/// Provides a Config Remediation resource.
///
/// For information about Config Remediation and how to use it, see [What is Remediation](https://www.alibabacloud.com/help/en/cloud-config/latest/api-config-2020-09-07-createremediation).
///
/// &gt; **NOTE:** Available since v1.204.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example-oss";
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultBucket = new alicloud.oss.Bucket("default", {
///     bucket: `${name}-${defaultInteger.result}`,
///     tags: {
///         For: "example",
///     },
/// });
/// const nameBucketAcl = new alicloud.oss.BucketAcl("name", {
///     bucket: defaultBucket.bucket,
///     acl: "public-read",
/// });
/// const defaultRule = new alicloud.cfg.Rule("default", {
///     description: "If the ACL policy of the OSS bucket denies read access from the Internet, the configuration is considered compliant.",
///     sourceOwner: "ALIYUN",
///     sourceIdentifier: "oss-bucket-public-read-prohibited",
///     riskLevel: 1,
///     tagKeyScope: "For",
///     tagValueScope: "example",
///     regionIdsScope: _default.then(_default => _default.regions?.[0]?.id),
///     configRuleTriggerTypes: "ConfigurationItemChangeNotification",
///     resourceTypesScopes: ["ACS::OSS::Bucket"],
///     ruleName: "oss-bucket-public-read-prohibited",
/// });
/// const defaultRemediation = new alicloud.cfg.Remediation("default", {
///     configRuleId: defaultRule.configRuleId,
///     remediationTemplateId: "ACS-OSS-PutBucketAcl",
///     remediationSourceType: "ALIYUN",
///     invokeType: "MANUAL_EXECUTION",
///     params: Promise.all([defaultBucket.bucket, _default]).then(([bucket, _default]) => `{"bucketName": "${bucket}", "regionId": "${_default.regions?.[0]?.id}", "permissionName": "private"}`),
///     remediationType: "OOS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example-oss"
/// default = alicloud.get_regions(current=True)
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_bucket = alicloud.oss.Bucket("default",
///     bucket=f"{name}-{default_integer['result']}",
///     tags={
///         "For": "example",
///     })
/// name_bucket_acl = alicloud.oss.BucketAcl("name",
///     bucket=default_bucket.bucket,
///     acl="public-read")
/// default_rule = alicloud.cfg.Rule("default",
///     description="If the ACL policy of the OSS bucket denies read access from the Internet, the configuration is considered compliant.",
///     source_owner="ALIYUN",
///     source_identifier="oss-bucket-public-read-prohibited",
///     risk_level=1,
///     tag_key_scope="For",
///     tag_value_scope="example",
///     region_ids_scope=default.regions[0].id,
///     config_rule_trigger_types="ConfigurationItemChangeNotification",
///     resource_types_scopes=["ACS::OSS::Bucket"],
///     rule_name="oss-bucket-public-read-prohibited")
/// default_remediation = alicloud.cfg.Remediation("default",
///     config_rule_id=default_rule.config_rule_id,
///     remediation_template_id="ACS-OSS-PutBucketAcl",
///     remediation_source_type="ALIYUN",
///     invoke_type="MANUAL_EXECUTION",
///     params=default_bucket.bucket.apply(lambda bucket: f"{{\"bucketName\": \"{bucket}\", \"regionId\": \"{default.regions[0].id}\", \"permissionName\": \"private\"}}"),
///     remediation_type="OOS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example-oss";
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultBucket = new AliCloud.Oss.Bucket("default", new()
///     {
///         BucketName = $"{name}-{defaultInteger.Result}",
///         Tags =
///         {
///             { "For", "example" },
///         },
///     });
///
///     var nameBucketAcl = new AliCloud.Oss.BucketAcl("name", new()
///     {
///         Bucket = defaultBucket.BucketName,
///         Acl = "public-read",
///     });
///
///     var defaultRule = new AliCloud.Cfg.Rule("default", new()
///     {
///         Description = "If the ACL policy of the OSS bucket denies read access from the Internet, the configuration is considered compliant.",
///         SourceOwner = "ALIYUN",
///         SourceIdentifier = "oss-bucket-public-read-prohibited",
///         RiskLevel = 1,
///         TagKeyScope = "For",
///         TagValueScope = "example",
///         RegionIdsScope = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         ConfigRuleTriggerTypes = "ConfigurationItemChangeNotification",
///         ResourceTypesScopes = new[]
///         {
///             "ACS::OSS::Bucket",
///         },
///         RuleName = "oss-bucket-public-read-prohibited",
///     });
///
///     var defaultRemediation = new AliCloud.Cfg.Remediation("default", new()
///     {
///         ConfigRuleId = defaultRule.ConfigRuleId,
///         RemediationTemplateId = "ACS-OSS-PutBucketAcl",
///         RemediationSourceType = "ALIYUN",
///         InvokeType = "MANUAL_EXECUTION",
///         Params = Output.Tuple(defaultBucket.BucketName, @default).Apply(values =>
///         {
///             var bucket = values.Item1;
///             var @default = values.Item2;
///             return $"{{\"bucketName\": \"{bucket}\", \"regionId\": \"{@default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}\", \"permissionName\": \"private\"}}";
///         }),
///         RemediationType = "OOS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example-oss"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucket, err := oss.NewBucket(ctx, "default", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			Tags: pulumi.StringMap{
/// 				"For": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "name", &oss.BucketAclArgs{
/// 			Bucket: defaultBucket.Bucket,
/// 			Acl:    pulumi.String("public-read"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRule, err := cfg.NewRule(ctx, "default", &cfg.RuleArgs{
/// 			Description:            pulumi.String("If the ACL policy of the OSS bucket denies read access from the Internet, the configuration is considered compliant."),
/// 			SourceOwner:            pulumi.String("ALIYUN"),
/// 			SourceIdentifier:       pulumi.String("oss-bucket-public-read-prohibited"),
/// 			RiskLevel:              pulumi.Int(1),
/// 			TagKeyScope:            pulumi.String("For"),
/// 			TagValueScope:          pulumi.String("example"),
/// 			RegionIdsScope:         pulumi.String(_default.Regions[0].Id),
/// 			ConfigRuleTriggerTypes: pulumi.String("ConfigurationItemChangeNotification"),
/// 			ResourceTypesScopes: pulumi.StringArray{
/// 				pulumi.String("ACS::OSS::Bucket"),
/// 			},
/// 			RuleName: pulumi.String("oss-bucket-public-read-prohibited"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cfg.NewRemediation(ctx, "default", &cfg.RemediationArgs{
/// 			ConfigRuleId:          defaultRule.ConfigRuleId,
/// 			RemediationTemplateId: pulumi.String("ACS-OSS-PutBucketAcl"),
/// 			RemediationSourceType: pulumi.String("ALIYUN"),
/// 			InvokeType:            pulumi.String("MANUAL_EXECUTION"),
/// 			Params: defaultBucket.Bucket.ApplyT(func(bucket string) (string, error) {
/// 				return fmt.Sprintf("{\"bucketName\": \"%v\", \"regionId\": \"%v\", \"permissionName\": \"private\"}", bucket, _default.Regions[0].Id), nil
/// 			}).(pulumi.StringOutput),
/// 			RemediationType: pulumi.String("OOS"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketAcl;
/// import com.pulumi.alicloud.oss.BucketAclArgs;
/// import com.pulumi.alicloud.cfg.Rule;
/// import com.pulumi.alicloud.cfg.RuleArgs;
/// import com.pulumi.alicloud.cfg.Remediation;
/// import com.pulumi.alicloud.cfg.RemediationArgs;
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
///         final var name = config.get("name").orElse("tf-example-oss");
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .bucket(String.format("%s-%s", name,defaultInteger.result()))
///             .tags(Map.of("For", "example"))
///             .build());
///
///         var nameBucketAcl = new BucketAcl("nameBucketAcl", BucketAclArgs.builder()
///             .bucket(defaultBucket.bucket())
///             .acl("public-read")
///             .build());
///
///         var defaultRule = new Rule("defaultRule", RuleArgs.builder()
///             .description("If the ACL policy of the OSS bucket denies read access from the Internet, the configuration is considered compliant.")
///             .sourceOwner("ALIYUN")
///             .sourceIdentifier("oss-bucket-public-read-prohibited")
///             .riskLevel(1)
///             .tagKeyScope("For")
///             .tagValueScope("example")
///             .regionIdsScope(default_.regions()[0].id())
///             .configRuleTriggerTypes("ConfigurationItemChangeNotification")
///             .resourceTypesScopes("ACS::OSS::Bucket")
///             .ruleName("oss-bucket-public-read-prohibited")
///             .build());
///
///         var defaultRemediation = new Remediation("defaultRemediation", RemediationArgs.builder()
///             .configRuleId(defaultRule.configRuleId())
///             .remediationTemplateId("ACS-OSS-PutBucketAcl")
///             .remediationSourceType("ALIYUN")
///             .invokeType("MANUAL_EXECUTION")
///             .params(defaultBucket.bucket().applyValue(_bucket -> String.format("{{\"bucketName\": \"%s\", \"regionId\": \"%s\", \"permissionName\": \"private\"}}", _bucket,default_.regions()[0].id())))
///             .remediationType("OOS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example-oss
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultBucket:
///     type: alicloud:oss:Bucket
///     name: default
///     properties:
///       bucket: ${name}-${defaultInteger.result}
///       tags:
///         For: example
///   nameBucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: name
///     properties:
///       bucket: ${defaultBucket.bucket}
///       acl: public-read
///   defaultRule:
///     type: alicloud:cfg:Rule
///     name: default
///     properties:
///       description: If the ACL policy of the OSS bucket denies read access from the Internet, the configuration is considered compliant.
///       sourceOwner: ALIYUN
///       sourceIdentifier: oss-bucket-public-read-prohibited
///       riskLevel: 1
///       tagKeyScope: For
///       tagValueScope: example
///       regionIdsScope: ${default.regions[0].id}
///       configRuleTriggerTypes: ConfigurationItemChangeNotification
///       resourceTypesScopes:
///         - ACS::OSS::Bucket
///       ruleName: oss-bucket-public-read-prohibited
///   defaultRemediation:
///     type: alicloud:cfg:Remediation
///     name: default
///     properties:
///       configRuleId: ${defaultRule.configRuleId}
///       remediationTemplateId: ACS-OSS-PutBucketAcl
///       remediationSourceType: ALIYUN
///       invokeType: MANUAL_EXECUTION
///       params: '{"bucketName": "${defaultBucket.bucket}", "regionId": "${default.regions[0].id}", "permissionName": "private"}'
///       remediationType: OOS
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Config Remediation can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cfg/remediation:Remediation example <id>
/// ```
class Remediation extends pulumi.CustomResource {
  /// Rule ID.
  late final pulumi.Output<String> configRuleId;

  /// Execution type, valid values: `Manual`, `Automatic`.
  late final pulumi.Output<String> invokeType;

  /// Remediation parameter.
  late final pulumi.Output<String> params;

  /// Remediation ID.
  late final pulumi.Output<String> remediationId;

  /// Remediation resource type, valid values: `ALIYUN` , `CUSTOMER`.
  late final pulumi.Output<String> remediationSourceType;

  /// Remediation template ID.
  late final pulumi.Output<String> remediationTemplateId;

  /// Remediation type, valid values: `OOS`, `FC`.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String> remediationType;

  /// Creates a new [Remediation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Remediation]. {@macro pulumi_cfg_remediation_remediation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Remediation(
    String name, {
    RemediationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cfg/remediation:Remediation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configRuleId = registerOutput<String>('configRuleId');
    invokeType = registerOutput<String>('invokeType');
    params = registerOutput<String>('params');
    remediationId = registerOutput<String>('remediationId');
    remediationSourceType = registerOutput<String>('remediationSourceType');
    remediationTemplateId = registerOutput<String>('remediationTemplateId');
    remediationType = registerOutput<String>('remediationType');
  }

  /// Gets an existing [Remediation] resource's state with the given [name] and [id].
  static Remediation get(
    String name,
    pulumi.Input<String> id, {
    RemediationState? state,
  }) {
    return Remediation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Remediation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cfg/remediation:Remediation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configRuleId = registerOutput<String>('configRuleId');
    invokeType = registerOutput<String>('invokeType');
    params = registerOutput<String>('params');
    remediationId = registerOutput<String>('remediationId');
    remediationSourceType = registerOutput<String>('remediationSourceType');
    remediationTemplateId = registerOutput<String>('remediationTemplateId');
    remediationType = registerOutput<String>('remediationType');
  }
}
