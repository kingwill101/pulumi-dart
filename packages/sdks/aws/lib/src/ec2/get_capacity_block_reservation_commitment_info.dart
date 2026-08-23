// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCapacityBlockReservationCommitmentInfo {
  /// Date and time the commitment duration ends in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String> commitmentEndDate;
  /// Number of instances committed to the Capacity Block reservation.
  final pulumi.Input<int> committedInstanceCount;

  /// Creates a new [GetCapacityBlockReservationCommitmentInfo].
  /// [commitmentEndDate] Date and time the commitment duration ends in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [committedInstanceCount] Number of instances committed to the Capacity Block reservation.
  const GetCapacityBlockReservationCommitmentInfo({
    required this.commitmentEndDate,
    required this.committedInstanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentEndDate': commitmentEndDate,
      'committedInstanceCount': committedInstanceCount,
    };
  }

  factory GetCapacityBlockReservationCommitmentInfo.fromMap(Map<String, dynamic> map) {
    return GetCapacityBlockReservationCommitmentInfo(
      commitmentEndDate: pulumi.Input.fromValue(map['commitmentEndDate'] as String),
      committedInstanceCount: pulumi.Input.fromValue(map['committedInstanceCount'] as int),
    );
  }
}
