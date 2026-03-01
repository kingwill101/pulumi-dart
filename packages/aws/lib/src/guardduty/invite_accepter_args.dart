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
  final pulumi.Input<String>? region;

  /// Creates a new [InviteAccepterArgs].
  /// [detectorId] The detector ID of the member GuardDuty account.
  /// [masterAccountId] AWS account ID for primary account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  InviteAccepterArgs({
    required String detectorId,
    required String masterAccountId,
    String? region,
  }) :
      detectorId = pulumi.Input.asInput<String>(detectorId),
      masterAccountId = pulumi.Input.asInput<String>(masterAccountId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectorId': detectorId,
      'masterAccountId': masterAccountId,
      'region': ?region,
    };
  }

  factory InviteAccepterArgs.fromMap(Map<String, dynamic> map) {
    return InviteAccepterArgs(
      detectorId: map['detectorId'] as String,
      masterAccountId: map['masterAccountId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

