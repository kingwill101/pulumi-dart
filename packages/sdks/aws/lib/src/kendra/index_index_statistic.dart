// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_index_statistic_faq_statistic.dart';
import 'index_index_statistic_text_document_statistic.dart';

class IndexIndexStatistic {
  /// A block that specifies the number of question and answer topics in the index. Detailed below.
  final pulumi.Input<List<IndexIndexStatisticFaqStatistic>>? faqStatistics;
  /// A block that specifies the number of text documents indexed. Detailed below.
  final pulumi.Input<List<IndexIndexStatisticTextDocumentStatistic>>? textDocumentStatistics;

  /// Creates a new [IndexIndexStatistic].
  /// [faqStatistics] A block that specifies the number of question and answer topics in the index. Detailed below.
  /// [textDocumentStatistics] A block that specifies the number of text documents indexed. Detailed below.
  const IndexIndexStatistic({
    this.faqStatistics,
    this.textDocumentStatistics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'faqStatistics': ?pulumi.Input.mapOptionalInputValue<List<IndexIndexStatisticFaqStatistic>, List<Map<String, dynamic>>>(faqStatistics, (value) => pulumi.Input.encodeList<IndexIndexStatisticFaqStatistic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'textDocumentStatistics': ?pulumi.Input.mapOptionalInputValue<List<IndexIndexStatisticTextDocumentStatistic>, List<Map<String, dynamic>>>(textDocumentStatistics, (value) => pulumi.Input.encodeList<IndexIndexStatisticTextDocumentStatistic, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IndexIndexStatistic.fromMap(Map<String, dynamic> map) {
    return IndexIndexStatistic(
      faqStatistics: (() { final guardedValue = map['faqStatistics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IndexIndexStatisticFaqStatistic>(guardedValue, (value) => IndexIndexStatisticFaqStatistic.fromMap((value as Map).cast<String, dynamic>()))); })(),
      textDocumentStatistics: (() { final guardedValue = map['textDocumentStatistics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IndexIndexStatisticTextDocumentStatistic>(guardedValue, (value) => IndexIndexStatisticTextDocumentStatistic.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

