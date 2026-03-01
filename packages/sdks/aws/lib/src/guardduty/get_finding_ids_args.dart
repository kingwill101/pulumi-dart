// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_guardduty_get_finding_ids_get_finding_ids_args_doc}
/// Arguments for getFindingIds.
/// {@endtemplate}
/// {@macro pulumi_guardduty_get_finding_ids_get_finding_ids_args_doc}
class GetFindingIdsArgs {
  /// ID of the GuardDuty detector.
  final pulumi.Input<String> detectorId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetFindingIdsArgs].
  /// [detectorId] ID of the GuardDuty detector.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetFindingIdsArgs({
    required pulumi.Output<String> detectorId,
    pulumi.Output<String>? region,
  }) :
      detectorId = pulumi.Input.asInput<String>(detectorId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectorId': detectorId,
      'region': ?region,
    };
  }

  factory GetFindingIdsArgs.fromMap(Map<String, dynamic> map) {
    return GetFindingIdsArgs(
      detectorId: pulumi.Output.create<String>(map['detectorId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

