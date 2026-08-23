import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_membership_args.dart';
import 'user_group_membership_state.dart';

/// Provides a resource for adding an IAM User to IAM Groups. This
/// resource can be used multiple times with the same user for non-overlapping
/// groups.
///
/// To exclusively manage the users in a group, see the
/// `aws.iam.GroupMembership` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const user1 = new aws.iam.User("user1", {name: "user1"});
/// const group1 = new aws.iam.Group("group1", {name: "group1"});
/// const group2 = new aws.iam.Group("group2", {name: "group2"});
/// const example1 = new aws.iam.UserGroupMembership("example1", {
///     user: user1.name,
///     groups: [
///         group1.name,
///         group2.name,
///     ],
/// });
/// const group3 = new aws.iam.Group("group3", {name: "group3"});
/// const example2 = new aws.iam.UserGroupMembership("example2", {
///     user: user1.name,
///     groups: [group3.name],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// user1 = aws.iam.User("user1", name="user1")
/// group1 = aws.iam.Group("group1", name="group1")
/// group2 = aws.iam.Group("group2", name="group2")
/// example1 = aws.iam.UserGroupMembership("example1",
///     user=user1.name,
///     groups=[
///         group1.name,
///         group2.name,
///     ])
/// group3 = aws.iam.Group("group3", name="group3")
/// example2 = aws.iam.UserGroupMembership("example2",
///     user=user1.name,
///     groups=[group3.name])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var user1 = new Aws.Iam.User("user1", new()
///     {
///         Name = "user1",
///     });
///
///     var group1 = new Aws.Iam.Group("group1", new()
///     {
///         Name = "group1",
///     });
///
///     var group2 = new Aws.Iam.Group("group2", new()
///     {
///         Name = "group2",
///     });
///
///     var example1 = new Aws.Iam.UserGroupMembership("example1", new()
///     {
///         User = user1.Name,
///         Groups = new[]
///         {
///             group1.Name,
///             group2.Name,
///         },
///     });
///
///     var group3 = new Aws.Iam.Group("group3", new()
///     {
///         Name = "group3",
///     });
///
///     var example2 = new Aws.Iam.UserGroupMembership("example2", new()
///     {
///         User = user1.Name,
///         Groups = new[]
///         {
///             group3.Name,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		user1, err := iam.NewUser(ctx, "user1", &iam.UserArgs{
/// 			Name: pulumi.String("user1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		group1, err := iam.NewGroup(ctx, "group1", &iam.GroupArgs{
/// 			Name: pulumi.String("group1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		group2, err := iam.NewGroup(ctx, "group2", &iam.GroupArgs{
/// 			Name: pulumi.String("group2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewUserGroupMembership(ctx, "example1", &iam.UserGroupMembershipArgs{
/// 			User: user1.Name,
/// 			Groups: pulumi.StringArray{
/// 				group1.Name,
/// 				group2.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		group3, err := iam.NewGroup(ctx, "group3", &iam.GroupArgs{
/// 			Name: pulumi.String("group3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewUserGroupMembership(ctx, "example2", &iam.UserGroupMembershipArgs{
/// 			User: user1.Name,
/// 			Groups: pulumi.StringArray{
/// 				group3.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_iam_usergroupmembership" "example1" {
///   user   = aws_iam_user.user1.name
///   groups = [aws_iam_group.group1.name, aws_iam_group.group2.name]
/// }
/// resource "aws_iam_usergroupmembership" "example2" {
///   user   = aws_iam_user.user1.name
///   groups = [aws_iam_group.group3.name]
/// }
/// resource "aws_iam_user" "user1" {
///   name = "user1"
/// }
/// resource "aws_iam_group" "group1" {
///   name = "group1"
/// }
/// resource "aws_iam_group" "group2" {
///   name = "group2"
/// }
/// resource "aws_iam_group" "group3" {
///   name = "group3"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.User;
/// import com.pulumi.aws.iam.UserArgs;
/// import com.pulumi.aws.iam.Group;
/// import com.pulumi.aws.iam.GroupArgs;
/// import com.pulumi.aws.iam.UserGroupMembership;
/// import com.pulumi.aws.iam.UserGroupMembershipArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var user1 = new User("user1", UserArgs.builder()
///             .name("user1")
///             .build());
///
///         var group1 = new Group("group1", GroupArgs.builder()
///             .name("group1")
///             .build());
///
///         var group2 = new Group("group2", GroupArgs.builder()
///             .name("group2")
///             .build());
///
///         var example1 = new UserGroupMembership("example1", UserGroupMembershipArgs.builder()
///             .user(user1.name())
///             .groups(
///                 group1.name(),
///                 group2.name())
///             .build());
///
///         var group3 = new Group("group3", GroupArgs.builder()
///             .name("group3")
///             .build());
///
///         var example2 = new UserGroupMembership("example2", UserGroupMembershipArgs.builder()
///             .user(user1.name())
///             .groups(group3.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example1:
///     type: aws:iam:UserGroupMembership
///     properties:
///       user: ${user1.name}
///       groups:
///         - ${group1.name}
///         - ${group2.name}
///   example2:
///     type: aws:iam:UserGroupMembership
///     properties:
///       user: ${user1.name}
///       groups:
///         - ${group3.name}
///   user1:
///     type: aws:iam:User
///     properties:
///       name: user1
///   group1:
///     type: aws:iam:Group
///     properties:
///       name: group1
///   group2:
///     type: aws:iam:Group
///     properties:
///       name: group2
///   group3:
///     type: aws:iam:Group
///     properties:
///       name: group3
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM user group membership using the user name and group names separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/userGroupMembership:UserGroupMembership example1 user1/group1/group2
/// ```
class UserGroupMembership extends pulumi.CustomResource {
  /// A list of IAM Groups to add the user to
  late final pulumi.Output<List<String>> groups;
  /// The name of the IAM User to add to groups
  late final pulumi.Output<String> user;

  /// Creates a new [UserGroupMembership].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserGroupMembership]. {@macro pulumi_iam_user_group_membership_user_group_membership_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserGroupMembership(
    String name, {
    UserGroupMembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/userGroupMembership:UserGroupMembership',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    groups = registerOutput<List<String>>('groups');
    user = registerOutput<String>('user');
  }

  /// Gets an existing [UserGroupMembership] resource's state with the given [name] and [id].
  static UserGroupMembership get(
    String name,
    pulumi.Input<String> id, {
    UserGroupMembershipState? state,
  }) {
    return UserGroupMembership._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserGroupMembership._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/userGroupMembership:UserGroupMembership',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    groups = registerOutput<List<String>>('groups');
    user = registerOutput<String>('user');
  }
}
