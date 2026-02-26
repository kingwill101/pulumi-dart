// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCapacityCommitment.
class GetCapacityCommitmentArgs2 {
  final Input<String> capacityCommitmentId;
  final Input<String> location;
  final Input<String>? project;

  GetCapacityCommitmentArgs2({
    required this.capacityCommitmentId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityCommitmentId'] = capacityCommitmentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCapacityCommitmentArgs2.fromMap(Map<String, dynamic> map) {
    return GetCapacityCommitmentArgs2(
      capacityCommitmentId: Input.asInput<String>(map['capacityCommitmentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
