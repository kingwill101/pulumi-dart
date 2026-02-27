import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policy_args.dart';

/// Provides an IAM policy attached to a group.
///
/// > **NOTE:** We suggest using explicit JSON encoding or `aws.iam.getPolicyDocument` when assigning a value to `policy`. They seamlessly translate configuration to JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM Group Policies using the `group_name:group_policy_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/groupPolicy:GroupPolicy mypolicy group_of_mypolicy_name:mypolicy_name
/// ```
class GroupPolicy extends pulumi.CustomResource {
  /// The IAM group to attach to the policy.
  late final pulumi.Output<String> group;

  /// The name of the policy. If omitted, the provider will
  /// assign a random, unique name.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// The policy document. This is a JSON formatted string.
  late final pulumi.Output<String> policy;

  GroupPolicy(
    String name, {
    GroupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/groupPolicy:GroupPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.group = registerOutput<String>('group');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.policy = registerOutput<String>('policy');
  }
}
