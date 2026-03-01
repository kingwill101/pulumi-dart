import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_statement.dart';

/// Provides a RAM Policy resource.
///
///
///
/// For information about RAM Policy and how to use it, see [What is Policy](https://www.alibabacloud.com/help/en/ram/developer-reference/api-ram-2015-05-01-createpolicy).
///
/// > **NOTE:** Available since v1.0.0.
///
/// > **NOTE:** When you want to destroy this resource forcefully(means remove all the relationships associated with it automatically and then destroy it) without set `force`  with `true` at beginning, you need add `force = true` to configuration file and run `pulumi preview`, then you can delete resource forcefully.
///
/// > **NOTE:** Each strategy can have a maximum of five versions. When the number of versions reaches five, the oldest version is not automatically deleted by default. You need to explicitly set `rotate_strategy = DeleteOldestNonDefaultVersionWhenLimitExceeded` to automatically delete the oldest version.
///
/// > **NOTE:** If the policy has multiple versions, all non-default versions will be deleted first when deleting policy.
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
/// // Create a new RAM Policy.
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// # Create a new RAM Policy.
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
///     // Create a new RAM Policy.
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
/// 		// Create a new RAM Policy.
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewPolicy(ctx, "policy", &ram.PolicyArgs{
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.ram.Policy;
/// import com.pulumi.alicloud.ram.PolicyArgs;
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
///         // Create a new RAM Policy.
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new RAM Policy.
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RAM Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ram/policy:Policy example <id>
/// ```
class Policy extends pulumi.CustomResource {
  /// Number of attachments of the policy.
  late final pulumi.Output<int> attachmentCount;
  /// (Available since v1.246.0) The create time of the policy.
  late final pulumi.Output<String> createTime;
  /// The default version ID of the policy.
  late final pulumi.Output<String> defaultVersion;
  /// The description of the policy. It can be 1 to 1024 characters in length.
  late final pulumi.Output<String?> description;
  /// Field `document` has been deprecated from provider version 1.114.0. New field `policy_document` instead.
  late final pulumi.Output<String> document;
  /// Specifies whether to force delete the Policy. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> force;
  /// Field `name` has been deprecated from provider version 1.114.0. New field `policy_name` instead.
  late final pulumi.Output<String> name;
  /// The content of the policy. The maximum length is 6144 bytes.
  late final pulumi.Output<String> policyDocument;
  /// The policy name. It can be 1 to 128 characters in length and can contain English letters, digits, and dashes (-).
  late final pulumi.Output<String> policyName;
  /// The automatic rotation mechanism of policy versions can delete historical policy versions. The default value is None. Valid values:
  /// - `None`: Turn off the rotation mechanism.
  /// - `DeleteOldestNonDefaultVersionWhenLimitExceeded`: When the number of permission policy versions exceeds the limit, the oldest and inactive version is deleted.
  late final pulumi.Output<String?> rotateStrategy;
  /// Field `statement` has been deprecated from provider version 1.49.0. New field `document` instead. See `statement` below.
  late final pulumi.Output<List<PolicyStatement>> statements;
  /// The list of tags on the policy.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the policy.
  late final pulumi.Output<String> type;
  /// Field `version` has been deprecated from provider version 1.49.0. New field `document` instead.
  late final pulumi.Output<String?> version;
  /// The ID of the default policy version.
  late final pulumi.Output<String> versionId;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_ram_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attachmentCount = registerOutput<int>('attachmentCount');
    this.createTime = registerOutput<String>('createTime');
    this.defaultVersion = registerOutput<String>('defaultVersion');
    this.description = registerOutput<String?>('description');
    this.document = registerOutput<String>('document');
    this.force = registerOutput<bool?>('force');
    this.name = registerOutput<String>('name');
    this.policyDocument = registerOutput<String>('policyDocument');
    this.policyName = registerOutput<String>('policyName');
    this.rotateStrategy = registerOutput<String?>('rotateStrategy');
    this.statements = registerOutput<List<PolicyStatement>>('statements');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<String?>('version');
    this.versionId = registerOutput<String>('versionId');
  }
}
