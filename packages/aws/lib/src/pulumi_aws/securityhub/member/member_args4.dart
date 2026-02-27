// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Member.
class MemberArgs4 {
  /// The ID of the member AWS account.
  final Input<String> accountId;

  /// The email of the member AWS account.
  final Input<String>? email;

  /// Boolean whether to invite the account to Security Hub as a member. Defaults to `false`.
  final Input<bool>? invite;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  MemberArgs4({
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

  factory MemberArgs4.fromMap(Map<String, dynamic> map) {
    return MemberArgs4(
      accountId: Input.asInput<String>(map['accountId']),
      email: Input.asOptionalInput<String>(map['email']),
      invite: Input.asOptionalInput<bool>(map['invite']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
