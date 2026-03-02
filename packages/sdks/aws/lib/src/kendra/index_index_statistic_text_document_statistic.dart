// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexIndexStatisticTextDocumentStatistic {
  /// The total size, in bytes, of the indexed documents.
  final pulumi.Input<int>? indexedTextBytes;
  /// The number of text documents indexed.
  final pulumi.Input<int>? indexedTextDocumentsCount;

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

  factory IndexIndexStatisticTextDocumentStatistic.fromMap(Map<String, dynamic> map) {
    return IndexIndexStatisticTextDocumentStatistic(
      indexedTextBytes: map['indexedTextBytes'] == null ? null : ((map['indexedTextBytes'] as int).input()).input(),
      indexedTextDocumentsCount: map['indexedTextDocumentsCount'] == null ? null : ((map['indexedTextDocumentsCount'] as int).input()).input(),
    );
  }
}

