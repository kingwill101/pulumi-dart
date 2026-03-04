// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Member resources.
class MemberState {
  /// The ID of the member AWS account.
  final pulumi.Input<String>? accountId;

  /// The email of the member AWS account.
  final pulumi.Input<String>? email;

  /// Boolean whether to invite the account to Security Hub as a member. Defaults to `false`.
  final pulumi.Input<bool>? invite;

  /// The ID of the master Security Hub AWS account.
  final pulumi.Input<String>? masterId;

  /// The status of the member account relationship.
  final pulumi.Input<String>? memberStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [MemberState].
  /// [accountId] The ID of the member AWS account.
  /// [email] The email of the member AWS account.
  /// [invite] Boolean whether to invite the account to Security Hub as a member. Defaults to `false`.
  /// [masterId] The ID of the master Security Hub AWS account.
  /// [memberStatus] The status of the member account relationship.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  MemberState({
    this.accountId,
    this.email,
    this.invite,
    this.masterId,
    this.memberStatus,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'email': ?email,
      'invite': ?invite,
      'masterId': ?masterId,
      'memberStatus': ?memberStatus,
      'region': ?region,
    };
  }

  factory MemberState.fromMap(Map<String, dynamic> map) {
    return MemberState(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      invite: (() {
        final guardedValue = map['invite'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      masterId: (() {
        final guardedValue = map['masterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memberStatus: (() {
        final guardedValue = map['memberStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
