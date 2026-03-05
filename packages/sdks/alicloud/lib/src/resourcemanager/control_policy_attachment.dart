import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_policy_attachment_args.dart';
import 'control_policy_attachment_state.dart';

/// Provides a Resource Manager Control Policy Attachment resource.
///
/// Control Policy Attachment.
///
/// For information about Resource Manager Control Policy Attachment and how to use it, see [What is Control Policy Attachment](https://www.alibabacloud.com/help/en/resource-management/resource-directory/developer-reference/api-resourcemanager-2020-03-31-attachcontrolpolicy).
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultControlPolicy = new alicloud.resourcemanager.ControlPolicy("default", {
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
/// const defaultFolder = new alicloud.resourcemanager.Folder("default", {folderName: `${name}-${_default.result}`});
/// const defaultControlPolicyAttachment = new alicloud.resourcemanager.ControlPolicyAttachment("default", {
///     policyId: defaultControlPolicy.id,
///     targetId: defaultFolder.id,
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
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_control_policy = alicloud.resourcemanager.ControlPolicy("default",
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
/// default_folder = alicloud.resourcemanager.Folder("default", folder_name=f"{name}-{default['result']}")
/// default_control_policy_attachment = alicloud.resourcemanager.ControlPolicyAttachment("default",
///     policy_id=default_control_policy.id,
///     target_id=default_folder.id)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultControlPolicy = new AliCloud.ResourceManager.ControlPolicy("default", new()
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
///     var defaultFolder = new AliCloud.ResourceManager.Folder("default", new()
///     {
///         FolderName = $"{name}-{@default.Result}",
///     });
///
///     var defaultControlPolicyAttachment = new AliCloud.ResourceManager.ControlPolicyAttachment("default", new()
///     {
///         PolicyId = defaultControlPolicy.Id,
///         TargetId = defaultFolder.Id,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultControlPolicy, err := resourcemanager.NewControlPolicy(ctx, "default", &resourcemanager.ControlPolicyArgs{
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
/// 		defaultFolder, err := resourcemanager.NewFolder(ctx, "default", &resourcemanager.FolderArgs{
/// 			FolderName: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewControlPolicyAttachment(ctx, "default", &resourcemanager.ControlPolicyAttachmentArgs{
/// 			PolicyId: defaultControlPolicy.ID(),
/// 			TargetId: defaultFolder.ID(),
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
/// import com.pulumi.alicloud.resourcemanager.ControlPolicy;
/// import com.pulumi.alicloud.resourcemanager.ControlPolicyArgs;
/// import com.pulumi.alicloud.resourcemanager.Folder;
/// import com.pulumi.alicloud.resourcemanager.FolderArgs;
/// import com.pulumi.alicloud.resourcemanager.ControlPolicyAttachment;
/// import com.pulumi.alicloud.resourcemanager.ControlPolicyAttachmentArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultControlPolicy = new ControlPolicy("defaultControlPolicy", ControlPolicyArgs.builder()
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
///         var defaultFolder = new Folder("defaultFolder", FolderArgs.builder()
///             .folderName(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var defaultControlPolicyAttachment = new ControlPolicyAttachment("defaultControlPolicyAttachment", ControlPolicyAttachmentArgs.builder()
///             .policyId(defaultControlPolicy.id())
///             .targetId(defaultFolder.id())
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
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultControlPolicy:
///     type: alicloud:resourcemanager:ControlPolicy
///     name: default
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
///   defaultFolder:
///     type: alicloud:resourcemanager:Folder
///     name: default
///     properties:
///       folderName: ${name}-${default.result}
///   defaultControlPolicyAttachment:
///     type: alicloud:resourcemanager:ControlPolicyAttachment
///     name: default
///     properties:
///       policyId: ${defaultControlPolicy.id}
///       targetId: ${defaultFolder.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Control Policy Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/controlPolicyAttachment:ControlPolicyAttachment example <policy_id>:<target_id>
/// ```
class ControlPolicyAttachment extends pulumi.CustomResource {
  /// The ID of the access control policy.
  late final pulumi.Output<String> policyId;
  /// The ID of the object from which you want to detach the access control policy. Access control policies can be attached to the following objects:
  ///
  /// - Root folder
  /// - Subfolders of the Root folder
  /// - Members
  late final pulumi.Output<String> targetId;

  /// Creates a new [ControlPolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ControlPolicyAttachment]. {@macro pulumi_resourcemanager_control_policy_attachment_control_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ControlPolicyAttachment(
    String name, {
    ControlPolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/controlPolicyAttachment:ControlPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policyId = registerOutput<String>('policyId');
    targetId = registerOutput<String>('targetId');
  }

  /// Gets an existing [ControlPolicyAttachment] resource's state with the given [name] and [id].
  static ControlPolicyAttachment get(
    String name,
    pulumi.Input<String> id, {
    ControlPolicyAttachmentState? state,
  }) {
    return ControlPolicyAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ControlPolicyAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/controlPolicyAttachment:ControlPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policyId = registerOutput<String>('policyId');
    targetId = registerOutput<String>('targetId');
  }
}
