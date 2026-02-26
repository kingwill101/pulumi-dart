// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for an indexed field.
class IndexConfigResponse {
  /// The timestamp when the index was last modified.This is used to return the timestamp, and will be ignored if supplied during update.
  final String createTime;

  /// The LogEntry field path to index.Note that some paths are automatically indexed, and other paths are not eligible for indexing. See indexing documentation( https://cloud.google.com/logging/docs/view/advanced-queries#indexed-fields) for details.For example: jsonPayload.request.status
  final String fieldPath;

  /// The type of data in this index.
  final String type;

  IndexConfigResponse({
    required this.createTime,
    required this.fieldPath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['fieldPath'] = fieldPath;
    map['type'] = type;
    return map;
  }

  factory IndexConfigResponse.fromMap(Map<String, dynamic> map) {
    return IndexConfigResponse(
      createTime: map['createTime'] as String,
      fieldPath: map['fieldPath'] as String,
      type: map['type'] as String,
    );
  }
}
