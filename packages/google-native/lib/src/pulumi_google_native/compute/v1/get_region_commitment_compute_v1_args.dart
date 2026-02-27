// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionCommitment.
class GetRegionCommitmentComputeV1Args {
  final pulumi.Input<String> commitment;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetRegionCommitmentComputeV1Args({
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

  factory GetRegionCommitmentComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionCommitmentComputeV1Args(
      commitment: pulumi.Input.asInput<String>(map['commitment']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
