// ignore_for_file: unused_element, unnecessary_cast

import 'table_reference_response.dart';

class IndexUnusedReasonResponse {
  /// Specifies the base table involved in the reason that no search index was used.
  final TableReferenceResponse baseTable;

  /// Specifies the high-level reason for the scenario when no search index was used.
  final String code;

  /// Specifies the name of the unused search index, if available.
  final String indexName;

  /// Free form human-readable reason for the scenario when no search index was used.
  final String message;

  /// Creates a new [IndexUnusedReasonResponse].
  /// [baseTable] Specifies the base table involved in the reason that no search index was used.
  /// [code] Specifies the high-level reason for the scenario when no search index was used.
  /// [indexName] Specifies the name of the unused search index, if available.
  /// [message] Free form human-readable reason for the scenario when no search index was used.
  IndexUnusedReasonResponse({
    required this.baseTable,
    required this.code,
    required this.indexName,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseTable'] = baseTable.toMap();
    map['code'] = code;
    map['indexName'] = indexName;
    map['message'] = message;
    return map;
  }

  factory IndexUnusedReasonResponse.fromMap(Map<String, dynamic> map) {
    return IndexUnusedReasonResponse(
      baseTable: TableReferenceResponse.fromMap(
          (map['baseTable'] as Map).cast<String, dynamic>()),
      code: map['code'] as String,
      indexName: map['indexName'] as String,
      message: map['message'] as String,
    );
  }
}
