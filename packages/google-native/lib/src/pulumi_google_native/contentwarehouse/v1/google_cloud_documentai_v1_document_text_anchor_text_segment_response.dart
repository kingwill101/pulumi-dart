// ignore_for_file: unused_element, unnecessary_cast

/// A text segment in the Document.text. The indices may be out of bounds which indicate that the text extends into another document shard for large sharded documents. See ShardInfo.text_offset
class GoogleCloudDocumentaiV1DocumentTextAnchorTextSegmentResponse {
  /// TextSegment half open end UTF-8 char index in the Document.text.
  final String endIndex;

  /// TextSegment start UTF-8 char index in the Document.text.
  final String startIndex;

  GoogleCloudDocumentaiV1DocumentTextAnchorTextSegmentResponse({
    required this.endIndex,
    required this.startIndex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endIndex'] = endIndex;
    map['startIndex'] = startIndex;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentTextAnchorTextSegmentResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentTextAnchorTextSegmentResponse(
      endIndex: map['endIndex'] as String,
      startIndex: map['startIndex'] as String,
    );
  }
}
