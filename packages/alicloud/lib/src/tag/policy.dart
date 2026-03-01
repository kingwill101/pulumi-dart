import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';

/// Provides a TAG Policy resource.
///
///
///
/// For information about TAG Policy and how to use it, see [What is Policy](https://www.alibabacloud.com/help/en/resource-management/latest/create-policy).
///
/// > **NOTE:** Available since v1.203.0.
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
/// const example = new alicloud.tag.Policy("example", {
///     policyName: name,
///     policyDesc: name,
///     userType: "USER",
///     policyContent: "\\t\\t{\\\"tags\\\":{\\\"CostCenter\\\":{\\\"tag_value\\\":{\\\"@@assign\\\":[\\\"Beijing\\\",\\\"Shanghai\\\"]},\\\"tag_key\\\":{\\\"@@assign\\\":\\\"CostCenter\\\"}}}}\n",
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
/// example = alicloud.tag.Policy("example",
///     policy_name=name,
///     policy_desc=name,
///     user_type="USER",
///     policy_content="\\t\\t{\\\"tags\\\":{\\\"CostCenter\\\":{\\\"tag_value\\\":{\\\"@@assign\\\":[\\\"Beijing\\\",\\\"Shanghai\\\"]},\\\"tag_key\\\":{\\\"@@assign\\\":\\\"CostCenter\\\"}}}}\n")
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
///     var example = new AliCloud.Tag.Policy("example", new()
///     {
///         PolicyName = name,
///         PolicyDesc = name,
///         UserType = "USER",
///         PolicyContent = @"\t\t{\""tags\"":{\""CostCenter\"":{\""tag_value\"":{\""@@assign\"":[\""Beijing\"",\""Shanghai\""]},\""tag_key\"":{\""@@assign\"":\""CostCenter\""}}}}
/// ",
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
/// 		_, err := tag.NewPolicy(ctx, "example", &tag.PolicyArgs{
/// 			PolicyName:    pulumi.String(name),
/// 			PolicyDesc:    pulumi.String(name),
/// 			UserType:      pulumi.String("USER"),
/// 			PolicyContent: pulumi.String("\\t\\t{\\\"tags\\\":{\\\"CostCenter\\\":{\\\"tag_value\\\":{\\\"@@assign\\\":[\\\"Beijing\\\",\\\"Shanghai\\\"]},\\\"tag_key\\\":{\\\"@@assign\\\":\\\"CostCenter\\\"}}}}\n"),
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
/// import com.pulumi.alicloud.tag.Policy;
/// import com.pulumi.alicloud.tag.PolicyArgs;
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
///         var example = new Policy("example", PolicyArgs.builder()
///             .policyName(name)
///             .policyDesc(name)
///             .userType("USER")
///             .policyContent("""
/// \t\t{\"tags\":{\"CostCenter\":{\"tag_value\":{\"@@assign\":[\"Beijing\",\"Shanghai\"]},\"tag_key\":{\"@@assign\":\"CostCenter\"}}}}
///             """)
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
///   example:
///     type: alicloud:tag:Policy
///     properties:
///       policyName: ${name}
///       policyDesc: ${name}
///       userType: USER
///       policyContent: |
///         \t\t{\"tags\":{\"CostCenter\":{\"tag_value\":{\"@@assign\":[\"Beijing\",\"Shanghai\"]},\"tag_key\":{\"@@assign\":\"CostCenter\"}}}}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// TAG Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:tag/policy:Policy example <id>
/// ```
class Policy extends pulumi.CustomResource {
  /// The document of the tag policy.
  late final pulumi.Output<String> policyContent;
  /// The description of the policy. The description must be 1 to 512 characters in length.
  late final pulumi.Output<String?> policyDesc;
  /// The name of the tag policy. The name must be 1 to 128 characters in length and can contain letters, digits, and underscores (_).
  late final pulumi.Output<String> policyName;
  /// The mode of the Tag Policy feature. Valid values: `USER`, `RD`.
  late final pulumi.Output<String> userType;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_tag_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:tag/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policyContent = registerOutput<String>('policyContent');
    this.policyDesc = registerOutput<String?>('policyDesc');
    this.policyName = registerOutput<String>('policyName');
    this.userType = registerOutput<String>('userType');
  }
}
