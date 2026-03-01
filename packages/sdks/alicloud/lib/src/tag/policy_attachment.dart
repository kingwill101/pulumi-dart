import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_attachment_args.dart';
import 'policy_attachment_state.dart';

/// Provides a Tag Policy Attachment resource to attaches a policy to an object. After you attach a tag policy to an object.
/// For information about Tag Policy Attachment and how to use it,
/// see [What is Policy Attachment](https://www.alibabacloud.com/help/en/resource-management/latest/attach-policy).
///
/// > **NOTE:** Available since v1.204.0.
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
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getAccount({});
/// const example = new alicloud.tag.Policy("example", {
///     policyName: name,
///     policyDesc: name,
///     userType: "USER",
///     policyContent: "\\t\\t{\\\"tags\\\":{\\\"CostCenter\\\":{\\\"tag_value\\\":{\\\"@@assign\\\":[\\\"Beijing\\\",\\\"Shanghai\\\"]},\\\"tag_key\\\":{\\\"@@assign\\\":\\\"CostCenter\\\"}}}}\n",
/// });
/// const examplePolicyAttachment = new alicloud.tag.PolicyAttachment("example", {
///     policyId: example.id,
///     targetId: _default.then(_default => _default.id),
///     targetType: "USER",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.get_account()
/// example = alicloud.tag.Policy("example",
///     policy_name=name,
///     policy_desc=name,
///     user_type="USER",
///     policy_content="\\t\\t{\\\"tags\\\":{\\\"CostCenter\\\":{\\\"tag_value\\\":{\\\"@@assign\\\":[\\\"Beijing\\\",\\\"Shanghai\\\"]},\\\"tag_key\\\":{\\\"@@assign\\\":\\\"CostCenter\\\"}}}}\n")
/// example_policy_attachment = alicloud.tag.PolicyAttachment("example",
///     policy_id=example.id,
///     target_id=default.id,
///     target_type="USER")
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var example = new AliCloud.Tag.Policy("example", new()
///     {
///         PolicyName = name,
///         PolicyDesc = name,
///         UserType = "USER",
///         PolicyContent = @"\t\t{\""tags\"":{\""CostCenter\"":{\""tag_value\"":{\""@@assign\"":[\""Beijing\"",\""Shanghai\""]},\""tag_key\"":{\""@@assign\"":\""CostCenter\""}}}}
/// ",
///     });
///
///     var examplePolicyAttachment = new AliCloud.Tag.PolicyAttachment("example", new()
///     {
///         PolicyId = example.Id,
///         TargetId = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///         TargetType = "USER",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/tag"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := tag.NewPolicy(ctx, "example", &tag.PolicyArgs{
/// 			PolicyName:    pulumi.String(name),
/// 			PolicyDesc:    pulumi.String(name),
/// 			UserType:      pulumi.String("USER"),
/// 			PolicyContent: pulumi.String("\\t\\t{\\\"tags\\\":{\\\"CostCenter\\\":{\\\"tag_value\\\":{\\\"@@assign\\\":[\\\"Beijing\\\",\\\"Shanghai\\\"]},\\\"tag_key\\\":{\\\"@@assign\\\":\\\"CostCenter\\\"}}}}\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = tag.NewPolicyAttachment(ctx, "example", &tag.PolicyAttachmentArgs{
/// 			PolicyId:   example.ID(),
/// 			TargetId:   pulumi.String(_default.Id),
/// 			TargetType: pulumi.String("USER"),
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
/// import com.pulumi.alicloud.tag.Policy;
/// import com.pulumi.alicloud.tag.PolicyArgs;
/// import com.pulumi.alicloud.tag.PolicyAttachment;
/// import com.pulumi.alicloud.tag.PolicyAttachmentArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new Policy("example", PolicyArgs.builder()
///             .policyName(name)
///             .policyDesc(name)
///             .userType("USER")
///             .policyContent("""
/// \t\t{\"tags\":{\"CostCenter\":{\"tag_value\":{\"@@assign\":[\"Beijing\",\"Shanghai\"]},\"tag_key\":{\"@@assign\":\"CostCenter\"}}}}
///             """)
///             .build());
///
///         var examplePolicyAttachment = new PolicyAttachment("examplePolicyAttachment", PolicyAttachmentArgs.builder()
///             .policyId(example.id())
///             .targetId(default_.id())
///             .targetType("USER")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   example:
///     type: alicloud:tag:Policy
///     properties:
///       policyName: ${name}
///       policyDesc: ${name}
///       userType: USER
///       policyContent: |
///         \t\t{\"tags\":{\"CostCenter\":{\"tag_value\":{\"@@assign\":[\"Beijing\",\"Shanghai\"]},\"tag_key\":{\"@@assign\":\"CostCenter\"}}}}
///   examplePolicyAttachment:
///     type: alicloud:tag:PolicyAttachment
///     name: example
///     properties:
///       policyId: ${example.id}
///       targetId: ${default.id}
///       targetType: USER
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Tag Policy Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:tag/policyAttachment:PolicyAttachment example <policy_id>:<target_id>:<target_type>
/// ```
class PolicyAttachment extends pulumi.CustomResource {
  /// The ID of the tag policy.
  late final pulumi.Output<String> policyId;
  /// The ID of the object.
  late final pulumi.Output<String> targetId;
  /// The type of the object. Valid values: `USER`, `ROOT`, `FOLDER`, `ACCOUNT`.
  late final pulumi.Output<String> targetType;

  /// Creates a new [PolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyAttachment]. {@macro pulumi_tag_policy_attachment_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyAttachment(
    String name, {
    PolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:tag/policyAttachment:PolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policyId = registerOutput<String>('policyId');
    this.targetId = registerOutput<String>('targetId');
    this.targetType = registerOutput<String>('targetType');
  }

  /// Gets an existing [PolicyAttachment] resource's state with the given [name] and [id].
  static PolicyAttachment get(
    String name,
    pulumi.Input<String> id, {
    PolicyAttachmentState? state,
  }) {
    return PolicyAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PolicyAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:tag/policyAttachment:PolicyAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policyId = registerOutput<String>('policyId');
    this.targetId = registerOutput<String>('targetId');
    this.targetType = registerOutput<String>('targetType');
  }
}
