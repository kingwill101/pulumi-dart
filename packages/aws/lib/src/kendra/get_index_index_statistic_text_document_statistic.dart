// ignore_for_file: unused_element, unnecessary_cast

class GetIndexIndexStatisticTextDocumentStatistic {
  /// Total size, in bytes, of the indexed documents.
  final int indexedTextBytes;

  /// The number of text documents indexed.
  final int indexedTextDocumentsCount;

  /// Creates a new [GetIndexIndexStatisticTextDocumentStatistic].
  /// [indexedTextBytes] Total size, in bytes, of the indexed documents.
  /// [indexedTextDocumentsCount] The number of text documents indexed.
  GetIndexIndexStatisticTextDocumentStatistic({
    required this.indexedTextBytes,
    required this.indexedTextDocumentsCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['indexedTextBytes'] = indexedTextBytes;
    map['indexedTextDocumentsCount'] = indexedTextDocumentsCount;
    return map;
  }

  factory GetIndexIndexStatisticTextDocumentStatistic.fromMap(
      Map<String, dynamic> map) {
    return GetIndexIndexStatisticTextDocumentStatistic(
      indexedTextBytes: map['indexedTextBytes'] as int,
      indexedTextDocumentsCount: map['indexedTextDocumentsCount'] as int,
    );
  }
}
