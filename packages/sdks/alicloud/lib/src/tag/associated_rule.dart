import 'package:pulumi/pulumi.dart' as pulumi;
import 'associated_rule_args.dart';
import 'associated_rule_state.dart';

/// Provides a TAG Associated Rule resource.
///
///
///
/// For information about TAG Associated Rule and how to use it, see [What is Associated Rule](https://www.alibabacloud.com/help/en/resource-management/tag/developer-reference/api-tag-2018-08-28-createassociatedresourcerules).
///
/// > **NOTE:** Available since v1.244.0.
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
/// const _default = new alicloud.tag.AssociatedRule("default", {
///     status: "Enable",
///     associatedSettingName: "rule:AttachEni-DetachEni-TagInstance:Ecs-Instance:Ecs-Eni",
///     tagKeys: ["user"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.tag.AssociatedRule("default",
///     status="Enable",
///     associated_setting_name="rule:AttachEni-DetachEni-TagInstance:Ecs-Instance:Ecs-Eni",
///     tag_keys=["user"])
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Tag.AssociatedRule("default", new()
///     {
///         Status = "Enable",
///         AssociatedSettingName = "rule:AttachEni-DetachEni-TagInstance:Ecs-Instance:Ecs-Eni",
///         TagKeys = new[]
///         {
///             "user",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/tag"
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
/// 		_, err := tag.NewAssociatedRule(ctx, "default", &tag.AssociatedRuleArgs{
/// 			Status:                pulumi.String("Enable"),
/// 			AssociatedSettingName: pulumi.String("rule:AttachEni-DetachEni-TagInstance:Ecs-Instance:Ecs-Eni"),
/// 			TagKeys: pulumi.StringArray{
/// 				pulumi.String("user"),
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
/// import com.pulumi.alicloud.tag.AssociatedRule;
/// import com.pulumi.alicloud.tag.AssociatedRuleArgs;
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
///         var default_ = new AssociatedRule("default", AssociatedRuleArgs.builder()
///             .status("Enable")
///             .associatedSettingName("rule:AttachEni-DetachEni-TagInstance:Ecs-Instance:Ecs-Eni")
///             .tagKeys("user")
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
///   default:
///     type: alicloud:tag:AssociatedRule
///     properties:
///       status: Enable
///       associatedSettingName: rule:AttachEni-DetachEni-TagInstance:Ecs-Instance:Ecs-Eni
///       tagKeys:
///         - user
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// TAG Associated Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:tag/associatedRule:AssociatedRule example <id>
/// ```
class AssociatedRule extends pulumi.CustomResource {
  /// The setting name of the associated resource tag rule. For specific values, see the Rule Setting Name column in [Resources that Support Associated Resource Tag Settings](https://www.alibabacloud.com/help/en/resource-management/tag/user-guide/associated-resource-label-settings)
  late final pulumi.Output<String> associatedSettingName;
  /// Whether to enable the associated resource tag rule. Valid values: `Enable`, `Disable`.
  late final pulumi.Output<String> status;
  /// List of tag keys for the associated resource tag rule.
  late final pulumi.Output<List<String>?> tagKeys;

  /// Creates a new [AssociatedRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssociatedRule]. {@macro pulumi_tag_associated_rule_associated_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssociatedRule(
    String name, {
    AssociatedRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:tag/associatedRule:AssociatedRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.associatedSettingName = registerOutput<String>('associatedSettingName');
    this.status = registerOutput<String>('status');
    this.tagKeys = registerOutput<List<String>?>('tagKeys');
  }

  /// Gets an existing [AssociatedRule] resource's state with the given [name] and [id].
  static AssociatedRule get(
    String name,
    pulumi.Input<String> id, {
    AssociatedRuleState? state,
  }) {
    return AssociatedRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AssociatedRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:tag/associatedRule:AssociatedRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.associatedSettingName = registerOutput<String>('associatedSettingName');
    this.status = registerOutput<String>('status');
    this.tagKeys = registerOutput<List<String>?>('tagKeys');
  }
}
