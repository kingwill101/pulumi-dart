import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_policy_attachment_args.dart';

/// Provides a RAM User Policy Attachment resource.
///
///
///
/// For information about RAM User Policy Attachment and how to use it, see [What is User Policy Attachment](https://next.api.alibabacloud.com/document/Ram/2015-05-01/AttachPolicyToUser).
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
/// // Create a RAM User Policy attachment.
/// const user = new alicloud.ram.User("user", {
///     name: "userName",
///     displayName: "user_display_name",
///     mobile: "86-18688888888",
///     email: "hello.uuu@aaa.com",
///     comments: "yoyoyo",
/// });
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const policy = new alicloud.ram.Policy("policy", {
///     policyName: `tf-example-${_default.result}`,
///     policyDocument: `  {
///     \\"Statement\\": [
///       {
///         \\"Action\\": [
///           \\"oss:ListObjects\\",
///           \\"oss:GetObject\\"
///         ],
///         \\"Effect\\": \\"Allow\\",
///         \\"Resource\\": [
///           \\"acs:oss:*:*:mybucket\\",
///           \\"acs:oss:*:*:mybucket/*\\"
///         ]
///       }
///     ],
///       \\"Version\\": \\"1\\"
///   }
/// `,
///     description: "this is a policy test",
/// });
/// const attach = new alicloud.ram.UserPolicyAttachment("attach", {
///     policyName: policy.policyName,
///     policyType: policy.type,
///     userName: user.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// # Create a RAM User Policy attachment.
/// user = alicloud.ram.User("user",
///     name="userName",
///     display_name="user_display_name",
///     mobile="86-18688888888",
///     email="hello.uuu@aaa.com",
///     comments="yoyoyo")
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// policy = alicloud.ram.Policy("policy",
///     policy_name=f"tf-example-{default['result']}",
///     policy_document="""  {
///     \"Statement\": [
///       {
///         \"Action\": [
///           \"oss:ListObjects\",
///           \"oss:GetObject\"
///         ],
///         \"Effect\": \"Allow\",
///         \"Resource\": [
///           \"acs:oss:*:*:mybucket\",
///           \"acs:oss:*:*:mybucket/*\"
///         ]
///       }
///     ],
///       \"Version\": \"1\"
///   }
/// """,
///     description="this is a policy test")
/// attach = alicloud.ram.UserPolicyAttachment("attach",
///     policy_name=policy.policy_name,
///     policy_type=policy.type,
///     user_name=user.name)
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
///     // Create a RAM User Policy attachment.
///     var user = new AliCloud.Ram.User("user", new()
///     {
///         Name = "userName",
///         DisplayName = "user_display_name",
///         Mobile = "86-18688888888",
///         Email = "hello.uuu@aaa.com",
///         Comments = "yoyoyo",
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
///         PolicyDocument = @"  {
///     \""Statement\"": [
///       {
///         \""Action\"": [
///           \""oss:ListObjects\"",
///           \""oss:GetObject\""
///         ],
///         \""Effect\"": \""Allow\"",
///         \""Resource\"": [
///           \""acs:oss:*:*:mybucket\"",
///           \""acs:oss:*:*:mybucket/*\""
///         ]
///       }
///     ],
///       \""Version\"": \""1\""
///   }
/// ",
///         Description = "this is a policy test",
///     });
///
///     var attach = new AliCloud.Ram.UserPolicyAttachment("attach", new()
///     {
///         PolicyName = policy.PolicyName,
///         PolicyType = policy.Type,
///         UserName = user.Name,
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
/// 		// Create a RAM User Policy attachment.
/// 		user, err := ram.NewUser(ctx, "user", &ram.UserArgs{
/// 			Name:        pulumi.String("userName"),
/// 			DisplayName: pulumi.String("user_display_name"),
/// 			Mobile:      pulumi.String("86-18688888888"),
/// 			Email:       pulumi.String("hello.uuu@aaa.com"),
/// 			Comments:    pulumi.String("yoyoyo"),
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
/// 			PolicyDocument: pulumi.String(`  {
///     \"Statement\": [
///       {
///         \"Action\": [
///           \"oss:ListObjects\",
///           \"oss:GetObject\"
///         ],
///         \"Effect\": \"Allow\",
///         \"Resource\": [
///           \"acs:oss:*:*:mybucket\",
///           \"acs:oss:*:*:mybucket/*\"
///         ]
///       }
///     ],
///       \"Version\": \"1\"
///   }
/// `),
/// 			Description: pulumi.String("this is a policy test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewUserPolicyAttachment(ctx, "attach", &ram.UserPolicyAttachmentArgs{
/// 			PolicyName: policy.PolicyName,
/// 			PolicyType: policy.Type,
/// 			UserName:   user.Name,
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
/// import com.pulumi.alicloud.ram.User;
/// import com.pulumi.alicloud.ram.UserArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.ram.Policy;
/// import com.pulumi.alicloud.ram.PolicyArgs;
/// import com.pulumi.alicloud.ram.UserPolicyAttachment;
/// import com.pulumi.alicloud.ram.UserPolicyAttachmentArgs;
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
///         // Create a RAM User Policy attachment.
///         var user = new User("user", UserArgs.builder()
///             .name("userName")
///             .displayName("user_display_name")
///             .mobile("86-18688888888")
///             .email("hello.uuu@aaa.com")
///             .comments("yoyoyo")
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
///   {
///     \"Statement\": [
///       {
///         \"Action\": [
///           \"oss:ListObjects\",
///           \"oss:GetObject\"
///         ],
///         \"Effect\": \"Allow\",
///         \"Resource\": [
///           \"acs:oss:*:*:mybucket\",
///           \"acs:oss:*:*:mybucket/*\"
///         ]
///       }
///     ],
///       \"Version\": \"1\"
///   }
///             """)
///             .description("this is a policy test")
///             .build());
///
///         var attach = new UserPolicyAttachment("attach", UserPolicyAttachmentArgs.builder()
///             .policyName(policy.policyName())
///             .policyType(policy.type())
///             .userName(user.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a RAM User Policy attachment.
///   user:
///     type: alicloud:ram:User
///     properties:
///       name: userName
///       displayName: user_display_name
///       mobile: 86-18688888888
///       email: hello.uuu@aaa.com
///       comments: yoyoyo
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
///           {
///             \"Statement\": [
///               {
///                 \"Action\": [
///                   \"oss:ListObjects\",
///                   \"oss:GetObject\"
///                 ],
///                 \"Effect\": \"Allow\",
///                 \"Resource\": [
///                   \"acs:oss:*:*:mybucket\",
///                   \"acs:oss:*:*:mybucket/*\"
///                 ]
///               }
///             ],
///               \"Version\": \"1\"
///           }
///       description: this is a policy test
///   attach:
///     type: alicloud:ram:UserPolicyAttachment
///     properties:
///       policyName: ${policy.policyName}
///       policyType: ${policy.type}
///       userName: ${user.name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RAM User Policy Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ram/userPolicyAttachment:UserPolicyAttachment example user:<policy_name>:<policy_type>:<user_name>
/// ```
class UserPolicyAttachment extends pulumi.CustomResource {
  /// The name of the policy.
  late final pulumi.Output<String> policyName;
  /// Permission policy type.
  /// - Custom: Custom policy.
  /// - System: System policy.
  late final pulumi.Output<String> policyType;
  /// The name of the RAM user.
  late final pulumi.Output<String> userName;

  /// Creates a new [UserPolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserPolicyAttachment]. {@macro pulumi_ram_user_policy_attachment_user_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserPolicyAttachment(
    String name, {
    UserPolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/userPolicyAttachment:UserPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policyName = registerOutput<String>('policyName');
    this.policyType = registerOutput<String>('policyType');
    this.userName = registerOutput<String>('userName');
  }
}
