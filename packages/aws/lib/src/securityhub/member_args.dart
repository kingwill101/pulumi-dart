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
    required String accountId,
    String? email,
    bool? invite,
    String? region,
  })  : accountId = pulumi.Input.asInput<String>(accountId),
        email = pulumi.Input.asOptionalInput<String>(email),
        invite = pulumi.Input.asOptionalInput<bool>(invite),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue;
    }
    final inviteValue = invite;
    if (inviteValue != null) {
      map['invite'] = inviteValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory MemberArgs.fromMap(Map<String, dynamic> map) {
    return MemberArgs(
      accountId: map['accountId'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      invite: map['invite'] == null ? null : map['invite'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
