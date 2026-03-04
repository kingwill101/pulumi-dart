import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_policy_args.dart';
import 'control_policy_state.dart';

/// Provides a Resource Manager Control Policy resource.
///
///
///
/// For information about Resource Manager Control Policy and how to use it, see [What is Control Policy](https://www.alibabacloud.com/help/en/resource-management/latest/api-resourcedirectorymaster-2022-04-19-createcontrolpolicy).
///
/// &gt; **NOTE:** Available since v1.120.0.
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
/// const example = new alicloud.resourcemanager.ControlPolicy("example", {
///     controlPolicyName: name,
///     description: name,
///     effectScope: "RAM",
///     policyDocument: `  {
///     \\"Version\\": \\"1\\",
///     \\"Statement\\": [
///       {
///         \\"Effect\\": \\"Deny\\",
///         \\"Action\\": [
///           \\"ram:UpdateRole\\",
///           \\"ram:DeleteRole\\",
///           \\"ram:AttachPolicyToRole\\",
///           \\"ram:DetachPolicyFromRole\\"
///         ],
///         \\"Resource\\": \\"acs:ram:*:*:role/ResourceDirectoryAccountAccessRole\\"
///       }
///     ]
///   }
/// `,
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
/// example = alicloud.resourcemanager.ControlPolicy("example",
///     control_policy_name=name,
///     description=name,
///     effect_scope="RAM",
///     policy_document="""  {
///     \"Version\": \"1\",
///     \"Statement\": [
///       {
///         \"Effect\": \"Deny\",
///         \"Action\": [
///           \"ram:UpdateRole\",
///           \"ram:DeleteRole\",
///           \"ram:AttachPolicyToRole\",
///           \"ram:DetachPolicyFromRole\"
///         ],
///         \"Resource\": \"acs:ram:*:*:role/ResourceDirectoryAccountAccessRole\"
///       }
///     ]
///   }
/// """)
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
///     var example = new AliCloud.ResourceManager.ControlPolicy("example", new()
///     {
///         ControlPolicyName = name,
///         Description = name,
///         EffectScope = "RAM",
///         PolicyDocument = @"  {
///     \""Version\"": \""1\"",
///     \""Statement\"": [
///       {
///         \""Effect\"": \""Deny\"",
///         \""Action\"": [
///           \""ram:UpdateRole\"",
///           \""ram:DeleteRole\"",
///           \""ram:AttachPolicyToRole\"",
///           \""ram:DetachPolicyFromRole\""
///         ],
///         \""Resource\"": \""acs:ram:*:*:role/ResourceDirectoryAccountAccessRole\""
///       }
///     ]
///   }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_, err := resourcemanager.NewControlPolicy(ctx, "example", &resourcemanager.ControlPolicyArgs{
/// 			ControlPolicyName: pulumi.String(name),
/// 			Description:       pulumi.String(name),
/// 			EffectScope:       pulumi.String("RAM"),
/// 			PolicyDocument: pulumi.String(`  {
///     \"Version\": \"1\",
///     \"Statement\": [
///       {
///         \"Effect\": \"Deny\",
///         \"Action\": [
///           \"ram:UpdateRole\",
///           \"ram:DeleteRole\",
///           \"ram:AttachPolicyToRole\",
///           \"ram:DetachPolicyFromRole\"
///         ],
///         \"Resource\": \"acs:ram:*:*:role/ResourceDirectoryAccountAccessRole\"
///       }
///     ]
///   }
/// `),
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
/// import com.pulumi.alicloud.resourcemanager.ControlPolicy;
/// import com.pulumi.alicloud.resourcemanager.ControlPolicyArgs;
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
///         var example = new ControlPolicy("example", ControlPolicyArgs.builder()
///             .controlPolicyName(name)
///             .description(name)
///             .effectScope("RAM")
///             .policyDocument("""
///   {
///     \"Version\": \"1\",
///     \"Statement\": [
///       {
///         \"Effect\": \"Deny\",
///         \"Action\": [
///           \"ram:UpdateRole\",
///           \"ram:DeleteRole\",
///           \"ram:AttachPolicyToRole\",
///           \"ram:DetachPolicyFromRole\"
///         ],
///         \"Resource\": \"acs:ram:*:*:role/ResourceDirectoryAccountAccessRole\"
///       }
///     ]
///   }
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
///     default: tf-example
/// resources:
///   example:
///     type: alicloud:resourcemanager:ControlPolicy
///     properties:
///       controlPolicyName: ${name}
///       description: ${name}
///       effectScope: RAM
///       policyDocument: |2
///           {
///             \"Version\": \"1\",
///             \"Statement\": [
///               {
///                 \"Effect\": \"Deny\",
///                 \"Action\": [
///                   \"ram:UpdateRole\",
///                   \"ram:DeleteRole\",
///                   \"ram:AttachPolicyToRole\",
///                   \"ram:DetachPolicyFromRole\"
///                 ],
///                 \"Resource\": \"acs:ram:*:*:role/ResourceDirectoryAccountAccessRole\"
///               }
///             ]
///           }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Control Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/controlPolicy:ControlPolicy example <id>
/// ```
class ControlPolicy extends pulumi.CustomResource {
  /// The new name of the access control policy.
  /// The name must be 1 to 128 characters in length. The name can contain letters, digits, and hyphens (-) and must start with a letter.
  late final pulumi.Output<String> controlPolicyName;

  /// The time when the access control policy was created.
  late final pulumi.Output<String> createTime;

  /// The new description of the access control policy.
  /// The description must be 1 to 1,024 characters in length. The description can contain letters, digits, underscores (\_), and hyphens (-) and must start with a letter.
  late final pulumi.Output<String?> description;

  /// The effective scope of the access control policy. Valid values:
  ///
  /// - All: The access control policy is in effect for Alibaba Cloud accounts, RAM users, and RAM roles.
  /// - RAM: The access control policy is in effect only for RAM users and RAM roles.
  late final pulumi.Output<String> effectScope;

  /// The new document of the access control policy.
  /// The document can be a maximum of 4,096 characters in length.
  /// For more information about the languages of access control policies, see [Languages of access control policies](https://www.alibabacloud.com/help/en/doc-detail/179096.html).
  /// For more information about the examples of access control policies, see [Examples of custom access control policies](https://www.alibabacloud.com/help/en/doc-detail/181474.html).
  late final pulumi.Output<String> policyDocument;

  /// The tags.
  /// You can specify a maximum of 20 tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ControlPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ControlPolicy]. {@macro pulumi_resourcemanager_control_policy_control_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ControlPolicy(
    String name, {
    ControlPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:resourcemanager/controlPolicy:ControlPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    controlPolicyName = registerOutput<String>('controlPolicyName');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectScope = registerOutput<String>('effectScope');
    policyDocument = registerOutput<String>('policyDocument');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ControlPolicy] resource's state with the given [name] and [id].
  static ControlPolicy get(
    String name,
    pulumi.Input<String> id, {
    ControlPolicyState? state,
  }) {
    return ControlPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ControlPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:resourcemanager/controlPolicy:ControlPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    controlPolicyName = registerOutput<String>('controlPolicyName');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    effectScope = registerOutput<String>('effectScope');
    policyDocument = registerOutput<String>('policyDocument');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
