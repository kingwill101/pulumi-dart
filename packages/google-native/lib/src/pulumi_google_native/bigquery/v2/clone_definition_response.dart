// ignore_for_file: unused_element, unnecessary_cast

import 'table_reference_response.dart';

class CloneDefinitionResponse {
  /// [Required] Reference describing the ID of the table that was cloned.
  final TableReferenceResponse baseTableReference;

  /// [Required] The time at which the base table was cloned. This value is reported in the JSON response using RFC3339 format.
  final String cloneTime;

  CloneDefinitionResponse({
    required this.baseTableReference,
    required this.cloneTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseTableReference'] = baseTableReference.toMap();
    map['cloneTime'] = cloneTime;
    return map;
  }

  factory CloneDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return CloneDefinitionResponse(
      baseTableReference: TableReferenceResponse.fromMap(
          (map['baseTableReference'] as Map).cast<String, dynamic>()),
      cloneTime: map['cloneTime'] as String,
    );
  }
}
