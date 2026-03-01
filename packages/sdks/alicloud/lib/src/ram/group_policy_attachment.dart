import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policy_attachment_args.dart';
import 'group_policy_attachment_state.dart';

/// Provides a RAM Group Policy Attachment resource.
///
///
///
/// For information about RAM Group Policy Attachment and how to use it, see [What is Group Policy Attachment](https://next.api.alibabacloud.com/document/Ram/2015-05-01/AttachPolicyToGroup).
///
/// > **NOTE:** Available since v1.0.0.
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
/// // Create a RAM Group Policy attachment.
/// const group = new alicloud.ram.Group("group", {
///     groupName: "groupName",
///     comments: "this is a group comments.",
/// });
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const policy = new alicloud.ram.Policy("policy", {
///     policyName: `tf-example-${_default.result}`,
///     policyDocument: `    {
///       \\"Statement\\": [
///         {
///           \\"Action\\": [
///             \\"oss:ListObjects\\",
///             \\"oss:GetObject\\"
///           ],
///           \\"Effect\\": \\"Allow\\",
///           \\"Resource\\": [
///             \\"acs:oss:*:*:mybucket\\",
///             \\"acs:oss:*:*:mybucket/*\\"
///           ]
///         }
///       ],
///         \\"Version\\": \\"1\\"
///     }
/// `,
///     description: "this is a policy test",
/// });
/// const attach = new alicloud.ram.GroupPolicyAttachment("attach", {
///     policyName: policy.policyName,
///     policyType: policy.type,
///     groupName: group.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// # Create a RAM Group Policy attachment.
/// group = alicloud.ram.Group("group",
///     group_name="groupName",
///     comments="this is a group comments.")
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// policy = alicloud.ram.Policy("policy",
///     policy_name=f"tf-example-{default['result']}",
///     policy_document="""    {
///       \"Statement\": [
///         {
///           \"Action\": [
///             \"oss:ListObjects\",
///             \"oss:GetObject\"
///           ],
///           \"Effect\": \"Allow\",
///           \"Resource\": [
///             \"acs:oss:*:*:mybucket\",
///             \"acs:oss:*:*:mybucket/*\"
///           ]
///         }
///       ],
///         \"Version\": \"1\"
///     }
/// """,
///     description="this is a policy test")
/// attach = alicloud.ram.GroupPolicyAttachment("attach",
///     policy_name=policy.policy_name,
///     policy_type=policy.type,
///     group_name=group.name)
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
///     // Create a RAM Group Policy attachment.
///     var @group = new AliCloud.Ram.Group("group", new()
///     {
///         GroupName = "groupName",
///         Comments = "this is a group comments.",
///     });
///
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var policy = new AliCloud.Ram.Policy("policy", new()
///     {
///         PolicyName = $"tf-example-{@default.Result}",
///         PolicyDocument = @"    {
///       \""Statement\"": [
///         {
///           \""Action\"": [
///             \""oss:ListObjects\"",
///             \""oss:GetObject\""
///           ],
///           \""Effect\"": \""Allow\"",
///           \""Resource\"": [
///             \""acs:oss:*:*:mybucket\"",
///             \""acs:oss:*:*:mybucket/*\""
///           ]
///         }
///       ],
///         \""Version\"": \""1\""
///     }
/// ",
///         Description = "this is a policy test",
///     });
///
///     var attach = new AliCloud.Ram.GroupPolicyAttachment("attach", new()
///     {
///         PolicyName = policy.PolicyName,
///         PolicyType = policy.Type,
///         GroupName = @group.Name,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a RAM Group Policy attachment.
/// 		group, err := ram.NewGroup(ctx, "group", &ram.GroupArgs{
/// 			GroupName: pulumi.String("groupName"),
/// 			Comments:  pulumi.String("this is a group comments."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy, err := ram.NewPolicy(ctx, "policy", &ram.PolicyArgs{
/// 			PolicyName: pulumi.Sprintf("tf-example-%v", _default.Result),
/// 			PolicyDocument: pulumi.String(`    {
///       \"Statement\": [
///         {
///           \"Action\": [
///             \"oss:ListObjects\",
///             \"oss:GetObject\"
///           ],
///           \"Effect\": \"Allow\",
///           \"Resource\": [
///             \"acs:oss:*:*:mybucket\",
///             \"acs:oss:*:*:mybucket/*\"
///           ]
///         }
///       ],
///         \"Version\": \"1\"
///     }
/// `),
/// 			Description: pulumi.String("this is a policy test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewGroupPolicyAttachment(ctx, "attach", &ram.GroupPolicyAttachmentArgs{
/// 			PolicyName: policy.PolicyName,
/// 			PolicyType: policy.Type,
/// 			GroupName:  group.Name,
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
/// import com.pulumi.alicloud.ram.Group;
/// import com.pulumi.alicloud.ram.GroupArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.ram.Policy;
/// import com.pulumi.alicloud.ram.PolicyArgs;
/// import com.pulumi.alicloud.ram.GroupPolicyAttachment;
/// import com.pulumi.alicloud.ram.GroupPolicyAttachmentArgs;
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
///         // Create a RAM Group Policy attachment.
///         var group = new Group("group", GroupArgs.builder()
///             .groupName("groupName")
///             .comments("this is a group comments.")
///             .build());
///
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var policy = new Policy("policy", PolicyArgs.builder()
///             .policyName(String.format("tf-example-%s", default_.result()))
///             .policyDocument("""
///     {
///       \"Statement\": [
///         {
///           \"Action\": [
///             \"oss:ListObjects\",
///             \"oss:GetObject\"
///           ],
///           \"Effect\": \"Allow\",
///           \"Resource\": [
///             \"acs:oss:*:*:mybucket\",
///             \"acs:oss:*:*:mybucket/*\"
///           ]
///         }
///       ],
///         \"Version\": \"1\"
///     }
///             """)
///             .description("this is a policy test")
///             .build());
///
///         var attach = new GroupPolicyAttachment("attach", GroupPolicyAttachmentArgs.builder()
///             .policyName(policy.policyName())
///             .policyType(policy.type())
///             .groupName(group.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a RAM Group Policy attachment.
///   group:
///     type: alicloud:ram:Group
///     properties:
///       groupName: groupName
///       comments: this is a group comments.
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   policy:
///     type: alicloud:ram:Policy
///     properties:
///       policyName: tf-example-${default.result}
///       policyDocument: |2
///             {
///               \"Statement\": [
///                 {
///                   \"Action\": [
///                     \"oss:ListObjects\",
///                     \"oss:GetObject\"
///                   ],
///                   \"Effect\": \"Allow\",
///                   \"Resource\": [
///                     \"acs:oss:*:*:mybucket\",
///                     \"acs:oss:*:*:mybucket/*\"
///                   ]
///                 }
///               ],
///                 \"Version\": \"1\"
///             }
///       description: this is a policy test
///   attach:
///     type: alicloud:ram:GroupPolicyAttachment
///     properties:
///       policyName: ${policy.policyName}
///       policyType: ${policy.type}
///       groupName: ${group.name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RAM Group Policy Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ram/groupPolicyAttachment:GroupPolicyAttachment example group:<policy_name>:<policy_type>:<group_name>
/// ```
class GroupPolicyAttachment extends pulumi.CustomResource {
  /// The name of the group.
  late final pulumi.Output<String> groupName;
  /// The name of the policy.
  late final pulumi.Output<String> policyName;
  /// Policy type.
  /// - Custom: Custom policy.
  /// - System: System policy.
  late final pulumi.Output<String> policyType;

  /// Creates a new [GroupPolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupPolicyAttachment]. {@macro pulumi_ram_group_policy_attachment_group_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupPolicyAttachment(
    String name, {
    GroupPolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/groupPolicyAttachment:GroupPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groupName = registerOutput<String>('groupName');
    this.policyName = registerOutput<String>('policyName');
    this.policyType = registerOutput<String>('policyType');
  }

  /// Gets an existing [GroupPolicyAttachment] resource's state with the given [name] and [id].
  static GroupPolicyAttachment get(
    String name,
    pulumi.Input<String> id, {
    GroupPolicyAttachmentState? state,
  }) {
    return GroupPolicyAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GroupPolicyAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/groupPolicyAttachment:GroupPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groupName = registerOutput<String>('groupName');
    this.policyName = registerOutput<String>('policyName');
    this.policyType = registerOutput<String>('policyType');
  }
}
