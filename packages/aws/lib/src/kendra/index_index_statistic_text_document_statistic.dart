// ignore_for_file: unused_element, unnecessary_cast

class IndexIndexStatisticTextDocumentStatistic {
  /// The total size, in bytes, of the indexed documents.
  final int? indexedTextBytes;

  /// The number of text documents indexed.
  final int? indexedTextDocumentsCount;

  /// Creates a new [IndexIndexStatisticTextDocumentStatistic].
  /// [indexedTextBytes] The total size, in bytes, of the indexed documents.
  /// [indexedTextDocumentsCount] The number of text documents indexed.
  IndexIndexStatisticTextDocumentStatistic({
    this.indexedTextBytes,
    this.indexedTextDocumentsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexedTextBytes': ?indexedTextBytes,
      'indexedTextDocumentsCount': ?indexedTextDocumentsCount,
    };
  }

  factory IndexIndexStatisticTextDocumentStatistic.fromMap(
    Map<String, dynamic> map,
  ) {
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
