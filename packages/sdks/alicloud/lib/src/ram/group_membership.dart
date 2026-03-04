import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_membership_args.dart';
import 'group_membership_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tfexample";
/// const group = new alicloud.ram.Group("group", {
///     name: std.format({
///         input: "%sgroup",
///         args: [name],
///     }).then(invoke => invoke.result),
///     comments: "this is a group comments.",
/// });
/// const user = new alicloud.ram.User("user", {
///     name: std.format({
///         input: "%suser",
///         args: [name],
///     }).then(invoke => invoke.result),
///     displayName: "user_display_name",
///     mobile: "86-18688888888",
///     email: "hello.uuu@aaa.com",
///     comments: "yoyoyo",
/// });
/// const user1 = new alicloud.ram.User("user1", {
///     name: std.format({
///         input: "%suser1",
///         args: [name],
///     }).then(invoke => invoke.result),
///     displayName: "user_display_name1",
///     mobile: "86-18688888889",
///     email: "hello.uuu@aaa.com",
///     comments: "yoyoyo",
/// });
/// const membership = new alicloud.ram.GroupMembership("membership", {
///     groupName: group.name,
///     userNames: [
///         user.name,
///         user1.name,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexample"
/// group = alicloud.ram.Group("group",
///     name=std.format(input="%sgroup",
///         args=[name]).result,
///     comments="this is a group comments.")
/// user = alicloud.ram.User("user",
///     name=std.format(input="%suser",
///         args=[name]).result,
///     display_name="user_display_name",
///     mobile="86-18688888888",
///     email="hello.uuu@aaa.com",
///     comments="yoyoyo")
/// user1 = alicloud.ram.User("user1",
///     name=std.format(input="%suser1",
///         args=[name]).result,
///     display_name="user_display_name1",
///     mobile="86-18688888889",
///     email="hello.uuu@aaa.com",
///     comments="yoyoyo")
/// membership = alicloud.ram.GroupMembership("membership",
///     group_name=group.name,
///     user_names=[
///         user.name,
///         user1.name,
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tfexample";
///     var @group = new AliCloud.Ram.Group("group", new()
///     {
///         Name = Std.Format.Invoke(new()
///         {
///             Input = "%sgroup",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         Comments = "this is a group comments.",
///     });
///
///     var user = new AliCloud.Ram.User("user", new()
///     {
///         Name = Std.Format.Invoke(new()
///         {
///             Input = "%suser",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         DisplayName = "user_display_name",
///         Mobile = "86-18688888888",
///         Email = "hello.uuu@aaa.com",
///         Comments = "yoyoyo",
///     });
///
///     var user1 = new AliCloud.Ram.User("user1", new()
///     {
///         Name = Std.Format.Invoke(new()
///         {
///             Input = "%suser1",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         DisplayName = "user_display_name1",
///         Mobile = "86-18688888889",
///         Email = "hello.uuu@aaa.com",
///         Comments = "yoyoyo",
///     });
///
///     var membership = new AliCloud.Ram.GroupMembership("membership", new()
///     {
///         GroupName = @group.Name,
///         UserNames = new[]
///         {
///             user.Name,
///             user1.Name,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%sgroup",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		group, err := ram.NewGroup(ctx, "group", &ram.GroupArgs{
/// 			Name:     pulumi.String(invokeFormat.Result),
/// 			Comments: pulumi.String("this is a group comments."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%suser",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user, err := ram.NewUser(ctx, "user", &ram.UserArgs{
/// 			Name:        pulumi.String(invokeFormat1.Result),
/// 			DisplayName: pulumi.String("user_display_name"),
/// 			Mobile:      pulumi.String("86-18688888888"),
/// 			Email:       pulumi.String("hello.uuu@aaa.com"),
/// 			Comments:    pulumi.String("yoyoyo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat2, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%suser1",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user1, err := ram.NewUser(ctx, "user1", &ram.UserArgs{
/// 			Name:        pulumi.String(invokeFormat2.Result),
/// 			DisplayName: pulumi.String("user_display_name1"),
/// 			Mobile:      pulumi.String("86-18688888889"),
/// 			Email:       pulumi.String("hello.uuu@aaa.com"),
/// 			Comments:    pulumi.String("yoyoyo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewGroupMembership(ctx, "membership", &ram.GroupMembershipArgs{
/// 			GroupName: group.Name,
/// 			UserNames: pulumi.StringArray{
/// 				user.Name,
/// 				user1.Name,
/// 			},
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
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.ram.User;
/// import com.pulumi.alicloud.ram.UserArgs;
/// import com.pulumi.alicloud.ram.GroupMembership;
/// import com.pulumi.alicloud.ram.GroupMembershipArgs;
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
///         final var name = config.get("name").orElse("tfexample");
///         var group = new Group("group", GroupArgs.builder()
///             .name(StdFunctions.format(FormatArgs.builder()
///                 .input("%sgroup")
///                 .args(name)
///                 .build()).result())
///             .comments("this is a group comments.")
///             .build());
///
///         var user = new User("user", UserArgs.builder()
///             .name(StdFunctions.format(FormatArgs.builder()
///                 .input("%suser")
///                 .args(name)
///                 .build()).result())
///             .displayName("user_display_name")
///             .mobile("86-18688888888")
///             .email("hello.uuu@aaa.com")
///             .comments("yoyoyo")
///             .build());
///
///         var user1 = new User("user1", UserArgs.builder()
///             .name(StdFunctions.format(FormatArgs.builder()
///                 .input("%suser1")
///                 .args(name)
///                 .build()).result())
///             .displayName("user_display_name1")
///             .mobile("86-18688888889")
///             .email("hello.uuu@aaa.com")
///             .comments("yoyoyo")
///             .build());
///
///         var membership = new GroupMembership("membership", GroupMembershipArgs.builder()
///             .groupName(group.name())
///             .userNames(
///                 user.name(),
///                 user1.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexample
/// resources:
///   group:
///     type: alicloud:ram:Group
///     properties:
///       name:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%sgroup'
///             args:
///               - ${name}
///           return: result
///       comments: this is a group comments.
///   user:
///     type: alicloud:ram:User
///     properties:
///       name:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%suser'
///             args:
///               - ${name}
///           return: result
///       displayName: user_display_name
///       mobile: 86-18688888888
///       email: hello.uuu@aaa.com
///       comments: yoyoyo
///   user1:
///     type: alicloud:ram:User
///     properties:
///       name:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%suser1'
///             args:
///               - ${name}
///           return: result
///       displayName: user_display_name1
///       mobile: 86-18688888889
///       email: hello.uuu@aaa.com
///       comments: yoyoyo
///   membership:
///     type: alicloud:ram:GroupMembership
///     properties:
///       groupName: ${group.name}
///       userNames:
///         - ${user.name}
///         - ${user1.name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RAM Group membership can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ram/groupMembership:GroupMembership example my-group
/// ```
class GroupMembership extends pulumi.CustomResource {
  /// Name of the RAM group. This name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphen "-", and must not begin with a hyphen.
  late final pulumi.Output<String> groupName;

  /// Set of user name which will be added to group. Each name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin with a hyphen.
  late final pulumi.Output<List<String>> userNames;

  /// Creates a new [GroupMembership].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupMembership]. {@macro pulumi_ram_group_membership_group_membership_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupMembership(
    String name, {
    GroupMembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ram/groupMembership:GroupMembership',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    groupName = registerOutput<String>('groupName');
    userNames = registerOutput<List<String>>('userNames');
  }

  /// Gets an existing [GroupMembership] resource's state with the given [name] and [id].
  static GroupMembership get(
    String name,
    pulumi.Input<String> id, {
    GroupMembershipState? state,
  }) {
    return GroupMembership._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GroupMembership._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ram/groupMembership:GroupMembership',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    groupName = registerOutput<String>('groupName');
    userNames = registerOutput<List<String>>('userNames');
  }
}
