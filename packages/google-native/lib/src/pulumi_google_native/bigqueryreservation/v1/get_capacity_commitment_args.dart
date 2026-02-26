// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCapacityCommitment.
class GetCapacityCommitmentArgs {
  final Input<String> capacityCommitmentId;
  final Input<String> location;
  final Input<String>? project;

  GetCapacityCommitmentArgs({
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

  factory GetCapacityCommitmentArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityCommitmentArgs(
      capacityCommitmentId: Input.asInput<String>(map['capacityCommitmentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
