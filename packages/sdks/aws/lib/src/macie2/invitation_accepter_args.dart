// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_macie2_invitation_accepter_invitation_accepter_args_doc}
/// The set of arguments for InvitationAccepter.
/// {@endtemplate}
/// {@macro pulumi_macie2_invitation_accepter_invitation_accepter_args_doc}
class InvitationAccepterArgs {
  /// The AWS account ID for the account that sent the invitation.
  final pulumi.Input<String> administratorAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [InvitationAccepterArgs].
  /// [administratorAccountId] The AWS account ID for the account that sent the invitation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  InvitationAccepterArgs({required this.administratorAccountId, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorAccountId': administratorAccountId,
      'region': ?region,
    };
  }

  factory InvitationAccepterArgs.fromMap(Map<String, dynamic> map) {
    return InvitationAccepterArgs(
      administratorAccountId: pulumi.Input.fromValue(
        map['administratorAccountId'] as String,
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
