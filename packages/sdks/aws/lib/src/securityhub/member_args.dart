// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityhub_member_member_args_doc}
/// The set of arguments for Member.
/// {@endtemplate}
/// {@macro pulumi_securityhub_member_member_args_doc}
class MemberArgs {
  /// The ID of the member AWS account.
  final pulumi.Input<String> accountId;
  /// The email of the member AWS account.
  final pulumi.Input<String>? email;
  /// Boolean whether to invite the account to Security Hub as a member. Defaults to `false`.
  final pulumi.Input<bool>? invite;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [MemberArgs].
  /// [accountId] The ID of the member AWS account.
  /// [email] The email of the member AWS account.
  /// [invite] Boolean whether to invite the account to Security Hub as a member. Defaults to `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  MemberArgs({
    required this.accountId,
    this.email,
    this.invite,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'email': ?email,
      'invite': ?invite,
      'region': ?region,
    };
  }

  factory MemberArgs.fromMap(Map<String, dynamic> map) {
    return MemberArgs(
      accountId: (map['accountId'] as String).input(),
      email: map['email'] == null ? null : ((map['email'] as String).input()).input(),
      invite: map['invite'] == null ? null : ((map['invite'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

