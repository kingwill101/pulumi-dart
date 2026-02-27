// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Member.
class MemberSecurityhubArgs {
  /// The ID of the member AWS account.
  final pulumi.Input<String> accountId;

  /// The email of the member AWS account.
  final pulumi.Input<String>? email;

  /// Boolean whether to invite the account to Security Hub as a member. Defaults to `false`.
  final pulumi.Input<bool>? invite;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  MemberSecurityhubArgs({
    required this.accountId,
    this.email,
    this.invite,
    this.region,
  });

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

  factory MemberSecurityhubArgs.fromMap(Map<String, dynamic> map) {
    return MemberSecurityhubArgs(
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      email: pulumi.Input.asOptionalInput<String>(map['email']),
      invite: pulumi.Input.asOptionalInput<bool>(map['invite']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
