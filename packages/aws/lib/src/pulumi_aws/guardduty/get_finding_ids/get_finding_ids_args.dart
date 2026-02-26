// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFindingIds.
class GetFindingIdsArgs {
  /// ID of the GuardDuty detector.
  final Input<String> detectorId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetFindingIdsArgs({
    required this.detectorId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['detectorId'] = detectorId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetFindingIdsArgs.fromMap(Map<String, dynamic> map) {
    return GetFindingIdsArgs(
      detectorId: Input.asInput<String>(map['detectorId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
