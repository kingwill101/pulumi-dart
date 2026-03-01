import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';

/// Provides a Data Security Center Rule resource.
///
/// For information about Data Security Center Rule and how to use it, see [What is Rule](https://www.alibabacloud.com/help/en/data-security-center/latest/api-sddp-2019-01-03-createrule).
///
/// > **NOTE:** Available since v1.132.0.
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
/// const name = config.get("name") || "tf-example-name";
/// const _default = new alicloud.sddp.Rule("default", {
///     ruleName: name,
///     category: 2,
///     content: `  [
///     {
///       \\"rule\\": [
///         {
///           \\"operator\\": \\"contains\\",
///           \\"target\\": \\"content\\",
///           \\"value\\": \\"tf-testACCContent\\"
///         }
///       ],
///       \\"ruleRelation\\": \\"AND\\"
///     }
///   ]
/// `,
///     riskLevelId: "4",
///     productCode: "OSS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example-name"
/// default = alicloud.sddp.Rule("default",
///     rule_name=name,
///     category=2,
///     content="""  [
///     {
///       \"rule\": [
///         {
///           \"operator\": \"contains\",
///           \"target\": \"content\",
///           \"value\": \"tf-testACCContent\"
///         }
///       ],
///       \"ruleRelation\": \"AND\"
///     }
///   ]
/// """,
///     risk_level_id="4",
///     product_code="OSS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example-name";
///     var @default = new AliCloud.Sddp.Rule("default", new()
///     {
///         RuleName = name,
///         Category = 2,
///         Content = @"  [
///     {
///       \""rule\"": [
///         {
///           \""operator\"": \""contains\"",
///           \""target\"": \""content\"",
///           \""value\"": \""tf-testACCContent\""
///         }
///       ],
///       \""ruleRelation\"": \""AND\""
///     }
///   ]
/// ",
///         RiskLevelId = "4",
///         ProductCode = "OSS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sddp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example-name"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := sddp.NewRule(ctx, "default", &sddp.RuleArgs{
/// 			RuleName: pulumi.String(name),
/// 			Category: pulumi.Int(2),
/// 			Content: pulumi.String(`  [
///     {
///       \"rule\": [
///         {
///           \"operator\": \"contains\",
///           \"target\": \"content\",
///           \"value\": \"tf-testACCContent\"
///         }
///       ],
///       \"ruleRelation\": \"AND\"
///     }
///   ]
/// `),
/// 			RiskLevelId: pulumi.String("4"),
/// 			ProductCode: pulumi.String("OSS"),
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
/// import com.pulumi.alicloud.sddp.Rule;
/// import com.pulumi.alicloud.sddp.RuleArgs;
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
///         final var name = config.get("name").orElse("tf-example-name");
///         var default_ = new Rule("default", RuleArgs.builder()
///             .ruleName(name)
///             .category(2)
///             .content("""
///   [
///     {
///       \"rule\": [
///         {
///           \"operator\": \"contains\",
///           \"target\": \"content\",
///           \"value\": \"tf-testACCContent\"
///         }
///       ],
///       \"ruleRelation\": \"AND\"
///     }
///   ]
///             """)
///             .riskLevelId("4")
///             .productCode("OSS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example-name
/// resources:
///   default:
///     type: alicloud:sddp:Rule
///     properties:
///       ruleName: ${name}
///       category: '2'
///       content: |2
///           [
///             {
///               \"rule\": [
///                 {
///                   \"operator\": \"contains\",
///                   \"target\": \"content\",
///                   \"value\": \"tf-testACCContent\"
///                 }
///               ],
///               \"ruleRelation\": \"AND\"
///             }
///           ]
///       riskLevelId: '4'
///       productCode: OSS
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Data Security Center Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sddp/rule:Rule example <id>
/// ```
class Rule extends pulumi.CustomResource {
  /// The content type of the sensitive data detection rule. Valid values:
  late final pulumi.Output<int> category;
  /// The content of the sensitive data detection rule. **NOTE:** From version 1.222.0, `content` can be modified.
  late final pulumi.Output<String> content;
  /// The type of the content in the sensitive data detection rule. **NOTE:** From version 1.222.0, `content_category` cannot be modified.
  late final pulumi.Output<String> contentCategory;
  /// The type of the sensitive data detection rule. **NOTE:** From version 1.222.0, `custom_type` cannot be specified when create Rule.
  late final pulumi.Output<int> customType;
  /// The description of the rule. **NOTE:** From version 1.222.0, `description` cannot be modified.
  late final pulumi.Output<String?> description;
  /// The language of the content within the request and response. Default value: `zh`. Valid values:
  late final pulumi.Output<String?> lang;
  /// The name of the service to which data in the column of the table belongs. Valid values: `OSS`, `RDS`, `ODPS`(MaxCompute).
  late final pulumi.Output<String?> productCode;
  /// The ID of the service to which the data asset belongs. Valid values:
  late final pulumi.Output<String?> productId;
  /// The sensitivity level of the sensitive data that hits the sensitive data detection rule. Valid values:
  late final pulumi.Output<String?> riskLevelId;
  /// The name of the sensitive data detection rule. **NOTE:** From version 1.222.0, `rule_name` can be modified.
  late final pulumi.Output<String> ruleName;
  /// The type of the sensitive data detection rule. Valid values:
  late final pulumi.Output<int?> ruleType;
  /// The statistical expression. **NOTE:** From version 1.222.0, `stat_express` cannot be modified.
  late final pulumi.Output<String?> statExpress;
  /// Sensitive Specifies whether to enable the sensitive data detection rule. Valid values:
  late final pulumi.Output<int> status;
  /// The code of the service to which the sensitive data detection rule is applied. **NOTE:** From version 1.222.0, `target` cannot be modified.
  late final pulumi.Output<String?> target;
  /// The risk level of the alert that is triggered. Valid values:
  late final pulumi.Output<int?> warnLevel;

  /// Creates a new [Rule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rule]. {@macro pulumi_sddp_rule_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rule(
    String name, {
    RuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sddp/rule:Rule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.category = registerOutput<int>('category');
    this.content = registerOutput<String>('content');
    this.contentCategory = registerOutput<String>('contentCategory');
    this.customType = registerOutput<int>('customType');
    this.description = registerOutput<String?>('description');
    this.lang = registerOutput<String?>('lang');
    this.productCode = registerOutput<String?>('productCode');
    this.productId = registerOutput<String?>('productId');
    this.riskLevelId = registerOutput<String?>('riskLevelId');
    this.ruleName = registerOutput<String>('ruleName');
    this.ruleType = registerOutput<int?>('ruleType');
    this.statExpress = registerOutput<String?>('statExpress');
    this.status = registerOutput<int>('status');
    this.target = registerOutput<String?>('target');
    this.warnLevel = registerOutput<int?>('warnLevel');
  }
}
