// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigqueryreservation_v1beta1_get_capacity_commitment_bigqueryreservation_v1beta1_args_doc}
/// Arguments for getCapacityCommitment.
/// {@endtemplate}
/// {@macro pulumi_bigqueryreservation_v1beta1_get_capacity_commitment_bigqueryreservation_v1beta1_args_doc}
class GetCapacityCommitmentBigqueryreservationV1beta1Args {
  final pulumi.Input<String> capacityCommitmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCapacityCommitmentBigqueryreservationV1beta1Args].
  /// [capacityCommitmentId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCapacityCommitmentBigqueryreservationV1beta1Args({
    required String capacityCommitmentId,
    required String location,
    String? project,
  })  : capacityCommitmentId =
            pulumi.Input.asInput<String>(capacityCommitmentId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      capacityCommitmentId: map['capacityCommitmentId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
