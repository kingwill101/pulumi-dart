import 'package:pulumi/pulumi.dart';
import 'user_policy_args.dart';

/// Provides an IAM policy attached to a user.
///
/// > **NOTE:** We suggest using explicit JSON encoding or `aws.iam.getPolicyDocument` when assigning a value to `policy`. They seamlessly translate configuration to JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM User Policies using the `user_name:user_policy_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/userPolicy:UserPolicy mypolicy user_of_mypolicy_name:mypolicy_name
/// ```
class UserPolicy extends CustomResource {
  /// The name of the policy. If omitted, the provider will assign a random, unique name.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// The policy document. This is a JSON formatted string.
  late final Output<String> policy;

  /// IAM user to which to attach this policy.
  late final Output<String> user;

  UserPolicy(
    String name, {
    UserPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/userPolicy:UserPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.policy = registerOutput<String>('policy');
    this.user = registerOutput<String>('user');
  }
}
