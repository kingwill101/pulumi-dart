// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionCommitment.
class GetRegionCommitmentArgs2 {
  final Input<String> commitment;
  final Input<String>? project;
  final Input<String> region;

  GetRegionCommitmentArgs2({
    required this.commitment,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['commitment'] = commitment;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionCommitmentArgs2.fromMap(Map<String, dynamic> map) {
    return GetRegionCommitmentArgs2(
      commitment: Input.asInput<String>(map['commitment']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
