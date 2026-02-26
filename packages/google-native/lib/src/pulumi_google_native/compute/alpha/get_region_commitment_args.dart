// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionCommitment.
class GetRegionCommitmentArgs {
  final Input<String> commitment;
  final Input<String>? project;
  final Input<String> region;

  GetRegionCommitmentArgs({
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

  factory GetRegionCommitmentArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionCommitmentArgs(
      commitment: Input.asInput<String>(map['commitment']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
