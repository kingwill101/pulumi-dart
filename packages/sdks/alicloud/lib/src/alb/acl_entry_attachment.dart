import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_entry_attachment_args.dart';
import 'acl_entry_attachment_state.dart';

/// For information about acl entry attachment and how to use it, see [Configure an acl entry](https://www.alibabacloud.com/help/en/slb/application-load-balancer/developer-reference/api-alb-2020-06-16-addentriestoacl).
///
/// &gt; **NOTE:** Available since v1.166.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultAcl = new alicloud.alb.Acl("default", {
///     aclName: name,
///     resourceGroupId: _default.then(_default => _default.groups?.[0]?.id),
/// });
/// const defaultAclEntryAttachment = new alicloud.alb.AclEntryAttachment("default", {
///     aclId: defaultAcl.id,
///     entry: "168.10.10.0/24",
///     description: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_acl = alicloud.alb.Acl("default",
///     acl_name=name,
///     resource_group_id=default.groups[0].id)
/// default_acl_entry_attachment = alicloud.alb.AclEntryAttachment("default",
///     acl_id=default_acl.id,
///     entry="168.10.10.0/24",
///     description=name)
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultAcl = new AliCloud.Alb.Acl("default", new()
///     {
///         AclName = name,
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id)),
///     });
///
///     var defaultAclEntryAttachment = new AliCloud.Alb.AclEntryAttachment("default", new()
///     {
///         AclId = defaultAcl.Id,
///         Entry = "168.10.10.0/24",
///         Description = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAcl, err := alb.NewAcl(ctx, "default", &alb.AclArgs{
/// 			AclName:         pulumi.String(name),
/// 			ResourceGroupId: pulumi.String(_default.Groups[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alb.NewAclEntryAttachment(ctx, "default", &alb.AclEntryAttachmentArgs{
/// 			AclId:       defaultAcl.ID(),
/// 			Entry:       pulumi.String("168.10.10.0/24"),
/// 			Description: pulumi.String(name),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.alb.Acl;
/// import com.pulumi.alicloud.alb.AclArgs;
/// import com.pulumi.alicloud.alb.AclEntryAttachment;
/// import com.pulumi.alicloud.alb.AclEntryAttachmentArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultAcl = new Acl("defaultAcl", AclArgs.builder()
///             .aclName(name)
///             .resourceGroupId(default_.groups()[0].id())
///             .build());
///
///         var defaultAclEntryAttachment = new AclEntryAttachment("defaultAclEntryAttachment", AclEntryAttachmentArgs.builder()
///             .aclId(defaultAcl.id())
///             .entry("168.10.10.0/24")
///             .description(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   defaultAcl:
///     type: alicloud:alb:Acl
///     name: default
///     properties:
///       aclName: ${name}
///       resourceGroupId: ${default.groups[0].id}
///   defaultAclEntryAttachment:
///     type: alicloud:alb:AclEntryAttachment
///     name: default
///     properties:
///       aclId: ${defaultAcl.id}
///       entry: 168.10.10.0/24
///       description: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Acl entry attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alb/aclEntryAttachment:AclEntryAttachment example <acl_id>:<entry>
/// ```
class AclEntryAttachment extends pulumi.CustomResource {
  /// The ID of the Acl.
  late final pulumi.Output<String> aclId;

  /// The description of the entry.
  late final pulumi.Output<String?> description;

  /// The CIDR blocks.
  late final pulumi.Output<String> entry;

  /// The Status of the resource.
  late final pulumi.Output<String> status;

  /// Creates a new [AclEntryAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AclEntryAttachment]. {@macro pulumi_alb_acl_entry_attachment_acl_entry_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AclEntryAttachment(
    String name, {
    AclEntryAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alb/aclEntryAttachment:AclEntryAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aclId = registerOutput<String>('aclId');
    description = registerOutput<String?>('description');
    entry = registerOutput<String>('entry');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [AclEntryAttachment] resource's state with the given [name] and [id].
  static AclEntryAttachment get(
    String name,
    pulumi.Input<String> id, {
    AclEntryAttachmentState? state,
  }) {
    return AclEntryAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AclEntryAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alb/aclEntryAttachment:AclEntryAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aclId = registerOutput<String>('aclId');
    description = registerOutput<String?>('description');
    entry = registerOutput<String>('entry');
    status = registerOutput<String>('status');
  }
}
