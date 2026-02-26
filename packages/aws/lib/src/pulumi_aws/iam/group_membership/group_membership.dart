import 'package:pulumi/pulumi.dart';
import 'group_membership_args.dart';

/// > **WARNING:** Multiple<span pulumi-lang-nodejs=" aws.iam.GroupMembership " pulumi-lang-dotnet=" aws.iam.GroupMembership " pulumi-lang-go=" iam.GroupMembership " pulumi-lang-python=" iam.GroupMembership " pulumi-lang-yaml=" aws.iam.GroupMembership " pulumi-lang-java=" aws.iam.GroupMembership "> aws.iam.GroupMembership </span>resources with the same group name will produce inconsistent behavior!
///
/// Provides a top level resource to manage IAM Group membership for IAM Users. For
/// more information on managing IAM Groups or IAM Users, see IAM Groups or
/// IAM Users
///
/// > **Note:** <span pulumi-lang-nodejs="`aws.iam.GroupMembership`" pulumi-lang-dotnet="`aws.iam.GroupMembership`" pulumi-lang-go="`iam.GroupMembership`" pulumi-lang-python="`iam.GroupMembership`" pulumi-lang-yaml="`aws.iam.GroupMembership`" pulumi-lang-java="`aws.iam.GroupMembership`">`aws.iam.GroupMembership`</span> will conflict with itself if used more than once with the same group. To non-exclusively manage the users in a group, see the
/// <span pulumi-lang-nodejs="`aws.iam.UserGroupMembership`" pulumi-lang-dotnet="`aws.iam.UserGroupMembership`" pulumi-lang-go="`iam.UserGroupMembership`" pulumi-lang-python="`iam.UserGroupMembership`" pulumi-lang-yaml="`aws.iam.UserGroupMembership`" pulumi-lang-java="`aws.iam.UserGroupMembership`">`aws.iam.UserGroupMembership`</span> resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const group = new aws.iam.Group("group", {name: "test-group"});
/// const userOne = new aws.iam.User("user_one", {name: "test-user"});
/// const userTwo = new aws.iam.User("user_two", {name: "test-user-two"});
/// const team = new aws.iam.GroupMembership("team", {
/// name: "tf-testing-group-membership",
/// users: [
/// userOne.name,
/// userTwo.name,
/// ],
/// group: group.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// group = aws.iam.Group("group", name="test-group")
/// user_one = aws.iam.User("user_one", name="test-user")
/// user_two = aws.iam.User("user_two", name="test-user-two")
/// team = aws.iam.GroupMembership("team",
/// name="tf-testing-group-membership",
/// users=[
/// user_one.name,
/// user_two.name,
/// ],
/// group=group.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @group = new Aws.Iam.Group("group", new()
/// {
/// Name = "test-group",
/// });
///
/// var userOne = new Aws.Iam.User("user_one", new()
/// {
/// Name = "test-user",
/// });
///
/// var userTwo = new Aws.Iam.User("user_two", new()
/// {
/// Name = "test-user-two",
/// });
///
/// var team = new Aws.Iam.GroupMembership("team", new()
/// {
/// Name = "tf-testing-group-membership",
/// Users = new[]
/// {
/// userOne.Name,
/// userTwo.Name,
/// },
/// Group = @group.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// group, err := iam.NewGroup(ctx, "group", &iam.GroupArgs{
/// Name: pulumi.String("test-group"),
/// })
/// if err != nil {
/// return err
/// }
/// userOne, err := iam.NewUser(ctx, "user_one", &iam.UserArgs{
/// Name: pulumi.String("test-user"),
/// })
/// if err != nil {
/// return err
/// }
/// userTwo, err := iam.NewUser(ctx, "user_two", &iam.UserArgs{
/// Name: pulumi.String("test-user-two"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewGroupMembership(ctx, "team", &iam.GroupMembershipArgs{
/// Name: pulumi.String("tf-testing-group-membership"),
/// Users: pulumi.StringArray{
/// userOne.Name,
/// userTwo.Name,
/// },
/// Group: group.Name,
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.Group;
/// import com.pulumi.aws.iam.GroupArgs;
/// import com.pulumi.aws.iam.User;
/// import com.pulumi.aws.iam.UserArgs;
/// import com.pulumi.aws.iam.GroupMembership;
/// import com.pulumi.aws.iam.GroupMembershipArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var group = new Group("group", GroupArgs.builder()
/// .name("test-group")
/// .build());
///
/// var userOne = new User("userOne", UserArgs.builder()
/// .name("test-user")
/// .build());
///
/// var userTwo = new User("userTwo", UserArgs.builder()
/// .name("test-user-two")
/// .build());
///
/// var team = new GroupMembership("team", GroupMembershipArgs.builder()
/// .name("tf-testing-group-membership")
/// .users(
/// userOne.name(),
/// userTwo.name())
/// .group(group.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// team:
/// type: aws:iam:GroupMembership
/// properties:
/// name: tf-testing-group-membership
/// users:
/// - ${userOne.name}
/// - ${userTwo.name}
/// group: ${group.name}
/// group:
/// type: aws:iam:Group
/// properties:
/// name: test-group
/// userOne:
/// type: aws:iam:User
/// name: user_one
/// properties:
/// name: test-user
/// userTwo:
/// type: aws:iam:User
/// name: user_two
/// properties:
/// name: test-user-two
/// ```
/// <!--End PulumiCodeChooser -->
class GroupMembership extends CustomResource {
  /// The IAM Group name to attach the list of <span pulumi-lang-nodejs="`users`" pulumi-lang-dotnet="`Users`" pulumi-lang-go="`users`" pulumi-lang-python="`users`" pulumi-lang-yaml="`users`" pulumi-lang-java="`users`">`users`</span> to
  late final Output<String> group;

  /// The name to identify the Group Membership
  late final Output<String> name;

  /// A list of IAM User names to associate with the Group
  late final Output<List<String>> users;

  GroupMembership(
    String name, {
    GroupMembershipArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/groupMembership:GroupMembership',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.group = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.users = Output.createUnknown<List<String>>();
  }
}
