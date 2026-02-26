// ignore_for_file: unused_element, unnecessary_cast

/// A text segment in the Document.text. The indices may be out of bounds which indicate that the text extends into another document shard for large sharded documents. See ShardInfo.text_offset
class GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment {
  /// TextSegment half open end UTF-8 char index in the Document.text.
  final String? endIndex;

  /// TextSegment start UTF-8 char index in the Document.text.
  final String? startIndex;

  GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment({
    this.endIndex,
    this.startIndex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endIndexValue = endIndex;
    if (endIndexValue != null) {
      map['endIndex'] = endIndexValue;
    }
    final startIndexValue = startIndex;
    if (startIndexValue != null) {
      map['startIndex'] = startIndexValue;
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment(
      endIndex: map['endIndex'] == null ? null : map['endIndex'] as String,
      startIndex:
          map['startIndex'] == null ? null : map['startIndex'] as String,
    );
  }
}
