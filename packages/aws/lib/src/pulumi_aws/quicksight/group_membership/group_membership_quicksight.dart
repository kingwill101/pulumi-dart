import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_membership_quicksight_args.dart';

/// Resource for managing QuickSight Group Membership
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Group membership using the AWS account ID, namespace, group name and member name separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/groupMembership:GroupMembership example 123456789123/default/all-access-users/john_smith
/// ```
class GroupMembershipQuicksight extends pulumi.CustomResource {
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

  GroupMembershipQuicksight(
    String name, {
    GroupMembershipQuicksightArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/groupMembership:GroupMembership',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.groupName = registerOutput<String>('groupName');
    this.memberName = registerOutput<String>('memberName');
    this.namespace = registerOutput<String?>('namespace');
    this.region = registerOutput<String>('region');
  }
}
