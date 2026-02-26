// ignore_for_file: unused_element, unnecessary_cast

class IndexIndexStatisticTextDocumentStatistic {
  /// The total size, in bytes, of the indexed documents.
  final int? indexedTextBytes;

  /// The number of text documents indexed.
  final int? indexedTextDocumentsCount;

  IndexIndexStatisticTextDocumentStatistic({
    this.indexedTextBytes,
    this.indexedTextDocumentsCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final indexedTextBytesValue = indexedTextBytes;
    if (indexedTextBytesValue != null) {
      map['indexedTextBytes'] = indexedTextBytesValue;
    }
    final indexedTextDocumentsCountValue = indexedTextDocumentsCount;
    if (indexedTextDocumentsCountValue != null) {
      map['indexedTextDocumentsCount'] = indexedTextDocumentsCountValue;
    }
    return map;
  }

  factory IndexIndexStatisticTextDocumentStatistic.fromMap(
      Map<String, dynamic> map) {
    return IndexIndexStatisticTextDocumentStatistic(
      indexedTextBytes: map['indexedTextBytes'] == null
          ? null
          : map['indexedTextBytes'] as int,
      indexedTextDocumentsCount: map['indexedTextDocumentsCount'] == null
          ? null
          : map['indexedTextDocumentsCount'] as int,
    );
  }
}
