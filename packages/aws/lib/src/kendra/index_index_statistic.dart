// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_index_statistic_faq_statistic.dart';
import 'index_index_statistic_text_document_statistic.dart';

class IndexIndexStatistic {
  /// A block that specifies the number of question and answer topics in the index. Detailed below.
  final List<IndexIndexStatisticFaqStatistic>? faqStatistics;

  /// A block that specifies the number of text documents indexed. Detailed below.
  final List<IndexIndexStatisticTextDocumentStatistic>? textDocumentStatistics;

  /// Creates a new [IndexIndexStatistic].
  /// [faqStatistics] A block that specifies the number of question and answer topics in the index. Detailed below.
  /// [textDocumentStatistics] A block that specifies the number of text documents indexed. Detailed below.
  IndexIndexStatistic({
    this.faqStatistics,
    this.textDocumentStatistics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final faqStatisticsValue = faqStatistics;
    if (faqStatisticsValue != null) {
      map['faqStatistics'] = pulumi.Input.encodeList<
          IndexIndexStatisticFaqStatistic,
          Map<String, dynamic>>(faqStatisticsValue, (value) => value.toMap());
    }
    final textDocumentStatisticsValue = textDocumentStatistics;
    if (textDocumentStatisticsValue != null) {
      map['textDocumentStatistics'] = pulumi.Input.encodeList<
              IndexIndexStatisticTextDocumentStatistic, Map<String, dynamic>>(
          textDocumentStatisticsValue, (value) => value.toMap());
    }
    return map;
  }

  factory IndexIndexStatistic.fromMap(Map<String, dynamic> map) {
    return IndexIndexStatistic(
      faqStatistics: map['faqStatistics'] == null
          ? null
          : pulumi.Input.decodeList<IndexIndexStatisticFaqStatistic>(
              map['faqStatistics'],
              (value) => IndexIndexStatisticFaqStatistic.fromMap(
                  (value as Map).cast<String, dynamic>())),
      textDocumentStatistics: map['textDocumentStatistics'] == null
          ? null
          : pulumi.Input.decodeList<IndexIndexStatisticTextDocumentStatistic>(
              map['textDocumentStatistics'],
              (value) => IndexIndexStatisticTextDocumentStatistic.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
