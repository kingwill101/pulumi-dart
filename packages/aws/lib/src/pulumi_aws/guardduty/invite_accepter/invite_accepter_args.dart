// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InviteAccepter.
class InviteAccepterArgs {
  /// The detector ID of the member GuardDuty account.
  final pulumi.Input<String> detectorId;

  /// AWS account ID for primary account.
  final pulumi.Input<String> masterAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  InviteAccepterArgs({
    required this.detectorId,
    required this.masterAccountId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['detectorId'] = detectorId;
    map['masterAccountId'] = masterAccountId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory InviteAccepterArgs.fromMap(Map<String, dynamic> map) {
    return InviteAccepterArgs(
      detectorId: pulumi.Input.asInput<String>(map['detectorId']),
      masterAccountId: pulumi.Input.asInput<String>(map['masterAccountId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
