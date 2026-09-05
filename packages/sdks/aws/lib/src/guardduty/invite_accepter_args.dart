// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_guardduty_invite_accepter_invite_accepter_args_doc}
/// The set of arguments for InviteAccepter.
/// {@endtemplate}
/// {@macro pulumi_guardduty_invite_accepter_invite_accepter_args_doc}
class InviteAccepterArgs {
  /// The detector ID of the member GuardDuty account.
  final pulumi.Input<String> detectorId;
  /// AWS account ID for primary account.
  final pulumi.Input<String> masterAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [InviteAccepterArgs].
  /// [detectorId] The detector ID of the member GuardDuty account.
  /// [masterAccountId] AWS account ID for primary account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const InviteAccepterArgs({
    required this.detectorId,
    required this.masterAccountId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectorId': detectorId,
      'masterAccountId': masterAccountId,
      'region': ?region,
    };
  }

  factory InviteAccepterArgs.fromMap(Map<String, dynamic> map) {
    return InviteAccepterArgs(
      detectorId: pulumi.Input.fromValue(map['detectorId'] as String),
      masterAccountId: pulumi.Input.fromValue(map['masterAccountId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
