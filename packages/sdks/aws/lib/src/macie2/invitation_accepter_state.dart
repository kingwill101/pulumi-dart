// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InvitationAccepter resources.
class InvitationAccepterState {
  /// The AWS account ID for the account that sent the invitation.
  final pulumi.Input<String>? administratorAccountId;
  /// The unique identifier for the invitation.
  final pulumi.Input<String>? invitationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [InvitationAccepterState].
  /// [administratorAccountId] The AWS account ID for the account that sent the invitation.
  /// [invitationId] The unique identifier for the invitation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  InvitationAccepterState({
    this.administratorAccountId,
    this.invitationId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorAccountId': ?administratorAccountId,
      'invitationId': ?invitationId,
      'region': ?region,
    };
  }

  factory InvitationAccepterState.fromMap(Map<String, dynamic> map) {
    return InvitationAccepterState(
      administratorAccountId: map['administratorAccountId'] == null ? null : (map['administratorAccountId'] as String).input(),
      invitationId: map['invitationId'] == null ? null : (map['invitationId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

