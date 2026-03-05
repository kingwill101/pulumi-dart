import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_policy_attachment_args.dart';
import 'role_policy_attachment_state.dart';

/// Provides a RAM Role Policy Attachment resource.
///
///
///
/// For information about RAM Role Policy Attachment and how to use it, see [What is Role Policy Attachment](https://next.api.alibabacloud.com/document/Ram/2015-05-01/AttachPolicyToRole).
///
/// &gt; **NOTE:** Available since v1.0.0.
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
/// // Create a RAM Role Policy attachment.
/// const role = new alicloud.ram.Role("role", {
///     name: "roleName",
///     document: `    {
///       \\"Statement\\": [
///         {
///           \\"Action\\": \\"sts:AssumeRole\\",
///           \\"Effect\\": \\"Allow\\",
///           \\"Principal\\": {
///             \\"Service\\": [
///               \\"apigateway.aliyuncs.com\\",
///               \\"ecs.aliyuncs.com\\"
///             ]
///           }
///         }
///       ],
///       \\"Version\\": \\"1\\"
///     }
/// `,
///     description: "this is a role test.",
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
/// const attach = new alicloud.ram.RolePolicyAttachment("attach", {
///     policyName: policy.policyName,
///     policyType: policy.type,
///     roleName: role.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// # Create a RAM Role Policy attachment.
/// role = alicloud.ram.Role("role",
///     name="roleName",
///     document="""    {
///       \"Statement\": [
///         {
///           \"Action\": \"sts:AssumeRole\",
///           \"Effect\": \"Allow\",
///           \"Principal\": {
///             \"Service\": [
///               \"apigateway.aliyuncs.com\",
///               \"ecs.aliyuncs.com\"
///             ]
///           }
///         }
///       ],
///       \"Version\": \"1\"
///     }
/// """,
///     description="this is a role test.")
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
/// attach = alicloud.ram.RolePolicyAttachment("attach",
///     policy_name=policy.policy_name,
///     policy_type=policy.type,
///     role_name=role.name)
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
///     // Create a RAM Role Policy attachment.
///     var role = new AliCloud.Ram.Role("role", new()
///     {
///         Name = "roleName",
///         Document = @"    {
///       \""Statement\"": [
///         {
///           \""Action\"": \""sts:AssumeRole\"",
///           \""Effect\"": \""Allow\"",
///           \""Principal\"": {
///             \""Service\"": [
///               \""apigateway.aliyuncs.com\"",
///               \""ecs.aliyuncs.com\""
///             ]
///           }
///         }
///       ],
///       \""Version\"": \""1\""
///     }
/// ",
///         Description = "this is a role test.",
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
///     var attach = new AliCloud.Ram.RolePolicyAttachment("attach", new()
///     {
///         PolicyName = policy.PolicyName,
///         PolicyType = policy.Type,
///         RoleName = role.Name,
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
/// 		// Create a RAM Role Policy attachment.
/// 		role, err := ram.NewRole(ctx, "role", &ram.RoleArgs{
/// 			Name: pulumi.String("roleName"),
/// 			Document: pulumi.String(`    {
///       \"Statement\": [
///         {
///           \"Action\": \"sts:AssumeRole\",
///           \"Effect\": \"Allow\",
///           \"Principal\": {
///             \"Service\": [
///               \"apigateway.aliyuncs.com\",
///               \"ecs.aliyuncs.com\"
///             ]
///           }
///         }
///       ],
///       \"Version\": \"1\"
///     }
/// `),
/// 			Description: pulumi.String("this is a role test."),
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
/// 		_, err = ram.NewRolePolicyAttachment(ctx, "attach", &ram.RolePolicyAttachmentArgs{
/// 			PolicyName: policy.PolicyName,
/// 			PolicyType: policy.Type,
/// 			RoleName:   role.Name,
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
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.ram.Policy;
/// import com.pulumi.alicloud.ram.PolicyArgs;
/// import com.pulumi.alicloud.ram.RolePolicyAttachment;
/// import com.pulumi.alicloud.ram.RolePolicyAttachmentArgs;
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
///         // Create a RAM Role Policy attachment.
///         var role = new Role("role", RoleArgs.builder()
///             .name("roleName")
///             .document("""
///     {
///       \"Statement\": [
///         {
///           \"Action\": \"sts:AssumeRole\",
///           \"Effect\": \"Allow\",
///           \"Principal\": {
///             \"Service\": [
///               \"apigateway.aliyuncs.com\",
///               \"ecs.aliyuncs.com\"
///             ]
///           }
///         }
///       ],
///       \"Version\": \"1\"
///     }
///             """)
///             .description("this is a role test.")
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
///         var attach = new RolePolicyAttachment("attach", RolePolicyAttachmentArgs.builder()
///             .policyName(policy.policyName())
///             .policyType(policy.type())
///             .roleName(role.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a RAM Role Policy attachment.
///   role:
///     type: alicloud:ram:Role
///     properties:
///       name: roleName
///       document: "    {\n      \\\"Statement\\\": [\n        {\n          \\\"Action\\\": \\\"sts:AssumeRole\\\",\n          \\\"Effect\\\": \\\"Allow\\\",\n          \\\"Principal\\\": {\n            \\\"Service\\\": [\n              \\\"apigateway.aliyuncs.com\\\", \n              \\\"ecs.aliyuncs.com\\\"\n            ]\n          }\n        }\n      ],\n      \\\"Version\\\": \\\"1\\\"\n    }\n"
///       description: this is a role test.
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
///     type: alicloud:ram:RolePolicyAttachment
///     properties:
///       policyName: ${policy.policyName}
///       policyType: ${policy.type}
///       roleName: ${role.name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RAM Role Policy Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ram/rolePolicyAttachment:RolePolicyAttachment example role:<policy_name>:<policy_type>:<role_name>
/// ```
class RolePolicyAttachment extends pulumi.CustomResource {
  /// The name of the policy.
  late final pulumi.Output<String> policyName;
  /// Policy type.
  /// - Custom: Custom policy.
  /// - System: System policy.
  late final pulumi.Output<String> policyType;
  /// The RAM role name.
  late final pulumi.Output<String> roleName;

  /// Creates a new [RolePolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RolePolicyAttachment]. {@macro pulumi_ram_role_policy_attachment_role_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RolePolicyAttachment(
    String name, {
    RolePolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/rolePolicyAttachment:RolePolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policyName = registerOutput<String>('policyName');
    policyType = registerOutput<String>('policyType');
    roleName = registerOutput<String>('roleName');
  }

  /// Gets an existing [RolePolicyAttachment] resource's state with the given [name] and [id].
  static RolePolicyAttachment get(
    String name,
    pulumi.Input<String> id, {
    RolePolicyAttachmentState? state,
  }) {
    return RolePolicyAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RolePolicyAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/rolePolicyAttachment:RolePolicyAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policyName = registerOutput<String>('policyName');
    policyType = registerOutput<String>('policyType');
    roleName = registerOutput<String>('roleName');
  }
}
