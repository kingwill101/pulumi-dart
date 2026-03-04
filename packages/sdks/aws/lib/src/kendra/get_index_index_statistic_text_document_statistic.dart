// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIndexIndexStatisticTextDocumentStatistic {
  /// Total size, in bytes, of the indexed documents.
  final pulumi.Input<int> indexedTextBytes;

  /// The number of text documents indexed.
  final pulumi.Input<int> indexedTextDocumentsCount;

  /// Creates a new [GetIndexIndexStatisticTextDocumentStatistic].
  /// [indexedTextBytes] Total size, in bytes, of the indexed documents.
  /// [indexedTextDocumentsCount] The number of text documents indexed.
  GetIndexIndexStatisticTextDocumentStatistic({
    required this.indexedTextBytes,
    required this.indexedTextDocumentsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexedTextBytes': indexedTextBytes,
      'indexedTextDocumentsCount': indexedTextDocumentsCount,
    };
  }

  factory GetIndexIndexStatisticTextDocumentStatistic.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetIndexIndexStatisticTextDocumentStatistic(
      indexedTextBytes: pulumi.Input.fromValue(map['indexedTextBytes'] as int),
      indexedTextDocumentsCount: pulumi.Input.fromValue(
        map['indexedTextDocumentsCount'] as int,
      ),
    );
  }
}
