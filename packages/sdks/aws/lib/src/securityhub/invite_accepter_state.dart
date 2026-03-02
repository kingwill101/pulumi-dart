// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InviteAccepter resources.
class InviteAccepterState {
  /// The ID of the invitation.
  final pulumi.Input<String>? invitationId;
  /// The account ID of the master Security Hub account whose invitation you're accepting.
  final pulumi.Input<String>? masterId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [InviteAccepterState].
  /// [invitationId] The ID of the invitation.
  /// [masterId] The account ID of the master Security Hub account whose invitation you're accepting.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  InviteAccepterState({
    this.invitationId,
    this.masterId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invitationId': ?invitationId,
      'masterId': ?masterId,
      'region': ?region,
    };
  }

  factory InviteAccepterState.fromMap(Map<String, dynamic> map) {
    return InviteAccepterState(
      invitationId: map['invitationId'] == null ? null : (map['invitationId'] as String).input(),
      masterId: map['masterId'] == null ? null : (map['masterId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

