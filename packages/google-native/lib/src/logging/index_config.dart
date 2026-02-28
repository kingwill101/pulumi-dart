// ignore_for_file: unused_element, unnecessary_cast

import 'index_config_type.dart';

/// Configuration for an indexed field.
class IndexConfig {
  /// The LogEntry field path to index.Note that some paths are automatically indexed, and other paths are not eligible for indexing. See indexing documentation( https://cloud.google.com/logging/docs/view/advanced-queries#indexed-fields) for details.For example: jsonPayload.request.status
  final String fieldPath;

  /// The type of data in this index.
  final IndexConfigType type;

  /// Creates a new [IndexConfig].
  /// [fieldPath] The LogEntry field path to index.Note that some paths are automatically indexed, and other paths are not eligible for indexing. See indexing documentation( https://cloud.google.com/logging/docs/view/advanced-queries#indexed-fields) for details.For example: jsonPayload.request.status
  /// [type] The type of data in this index.
  IndexConfig({
    required this.fieldPath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fieldPath'] = fieldPath;
    map['type'] = type.value;
    return map;
  }

  factory IndexConfig.fromMap(Map<String, dynamic> map) {
    return IndexConfig(
      fieldPath: map['fieldPath'] as String,
      type: IndexConfigType.fromValue(map['type'] as String),
    );
  }
}
