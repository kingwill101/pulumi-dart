// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCapacityCommitment.
class GetCapacityCommitmentBigqueryreservationV1beta1Args {
  final pulumi.Input<String> capacityCommitmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetCapacityCommitmentBigqueryreservationV1beta1Args({
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

  factory GetCapacityCommitmentBigqueryreservationV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetCapacityCommitmentBigqueryreservationV1beta1Args(
      capacityCommitmentId:
          pulumi.Input.asInput<String>(map['capacityCommitmentId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
