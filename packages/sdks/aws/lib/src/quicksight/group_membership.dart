import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_membership_args.dart';
import 'group_membership_state.dart';

/// Resource for managing QuickSight Group Membership
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.GroupMembership("example", {
///     groupName: "all-access-users",
///     memberName: "john_smith",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.GroupMembership("example",
///     group_name="all-access-users",
///     member_name="john_smith")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.GroupMembership("example", new()
///     {
///         GroupName = "all-access-users",
///         MemberName = "john_smith",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewGroupMembership(ctx, "example", &quicksight.GroupMembershipArgs{
/// 			GroupName:  pulumi.String("all-access-users"),
/// 			MemberName: pulumi.String("john_smith"),
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
/// import com.pulumi.aws.quicksight.GroupMembership;
/// import com.pulumi.aws.quicksight.GroupMembershipArgs;
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
///         var example = new GroupMembership("example", GroupMembershipArgs.builder()
///             .groupName("all-access-users")
///             .memberName("john_smith")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:GroupMembership
///     properties:
///       groupName: all-access-users
///       memberName: john_smith
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Group membership using the AWS account ID, namespace, group name and member name separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/groupMembership:GroupMembership example 123456789123/default/all-access-users/john_smith
/// ```
class GroupMembership extends pulumi.CustomResource {
  late final pulumi.Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// The name of the group in which the member will be added.
  late final pulumi.Output<String> groupName;

  /// The name of the member to add to the group.
  late final pulumi.Output<String> memberName;

  /// The namespace that you want the user to be a part of. Defaults to `default`.
  late final pulumi.Output<String?> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [GroupMembership].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupMembership]. {@macro pulumi_quicksight_group_membership_group_membership_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupMembership(
    String name, {
    GroupMembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:quicksight/groupMembership:GroupMembership',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    groupName = registerOutput<String>('groupName');
    memberName = registerOutput<String>('memberName');
    namespace = registerOutput<String?>('namespace');
    region = registerOutput<String>('region');
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
         'aws:quicksight/groupMembership:GroupMembership',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    groupName = registerOutput<String>('groupName');
    memberName = registerOutput<String>('memberName');
    namespace = registerOutput<String?>('namespace');
    region = registerOutput<String>('region');
  }
}
