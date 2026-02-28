// ignore_for_file: unused_element, unnecessary_cast

import 'table_reference_response.dart';

class SnapshotDefinitionResponse {
  /// [Required] Reference describing the ID of the table that was snapshot.
  final TableReferenceResponse baseTableReference;

  /// [Required] The time at which the base table was snapshot. This value is reported in the JSON response using RFC3339 format.
  final String snapshotTime;

  /// Creates a new [SnapshotDefinitionResponse].
  /// [baseTableReference] [Required] Reference describing the ID of the table that was snapshot.
  /// [snapshotTime] [Required] The time at which the base table was snapshot. This value is reported in the JSON response using RFC3339 format.
  SnapshotDefinitionResponse({
    required this.baseTableReference,
    required this.snapshotTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseTableReference'] = baseTableReference.toMap();
    map['snapshotTime'] = snapshotTime;
    return map;
  }

  factory SnapshotDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return SnapshotDefinitionResponse(
      baseTableReference: TableReferenceResponse.fromMap(
          (map['baseTableReference'] as Map).cast<String, dynamic>()),
      snapshotTime: map['snapshotTime'] as String,
    );
  }
}
