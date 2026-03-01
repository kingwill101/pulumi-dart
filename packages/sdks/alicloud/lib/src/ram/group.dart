import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_state.dart';

/// Provides a RAM Group resource.
///
/// The group that users can join.
///
/// For information about RAM Group and how to use it, see [What is Group](https://www.alibabacloud.com/help/en/ram/developer-reference/api-ram-2015-05-01-creategroup).
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const group = new alicloud.ram.Group("group", {
///     groupName: name,
///     comments: name,
///     force: true,
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
/// group = alicloud.ram.Group("group",
///     group_name=name,
///     comments=name,
///     force=True)
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
///     var @group = new AliCloud.Ram.Group("group", new()
///     {
///         GroupName = name,
///         Comments = name,
///         Force = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
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
/// 		_, err := ram.NewGroup(ctx, "group", &ram.GroupArgs{
/// 			GroupName: pulumi.String(name),
/// 			Comments:  pulumi.String(name),
/// 			Force:     pulumi.Bool(true),
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
///         var group = new Group("group", GroupArgs.builder()
///             .groupName(name)
///             .comments(name)
///             .force(true)
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
///   group:
///     type: alicloud:ram:Group
///     properties:
///       groupName: ${name}
///       comments: ${name}
///       force: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RAM Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ram/group:Group example <id>
/// ```
class Group extends pulumi.CustomResource {
  /// The Group comment information. The maximum length is 128 characters.
  late final pulumi.Output<String?> comments;
  /// (Available since v1.245.0) The create time of the group.
  late final pulumi.Output<String> createTime;
  /// Specifies whether to force delete the Group. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> force;
  /// The group name. You must specify at least one of the `group_name` and `name`.
  /// It can be 1 to 64 characters in length and can contain letters, digits, periods (.), underscores (_), and dashes (-).
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String> groupName;
  /// . Field 'name' has been deprecated from provider version 1.120.0. New field 'group_name' instead.
  late final pulumi.Output<String> name;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_ram_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.comments = registerOutput<String?>('comments');
    this.createTime = registerOutput<String>('createTime');
    this.force = registerOutput<bool?>('force');
    this.groupName = registerOutput<String>('groupName');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [Group] resource's state with the given [name] and [id].
  static Group get(
    String name,
    pulumi.Input<String> id, {
    GroupState? state,
  }) {
    return Group._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Group._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/group:Group',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.comments = registerOutput<String?>('comments');
    this.createTime = registerOutput<String>('createTime');
    this.force = registerOutput<bool?>('force');
    this.groupName = registerOutput<String>('groupName');
    this.name = registerOutput<String>('name');
  }
}
