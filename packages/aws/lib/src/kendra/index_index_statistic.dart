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
    return <String, dynamic>{
      'faqStatistics': ?faqStatistics == null ? null : pulumi.Input.encodeList<IndexIndexStatisticFaqStatistic, Map<String, dynamic>>(faqStatistics!, (value) => value.toMap()),
      'textDocumentStatistics': ?textDocumentStatistics == null ? null : pulumi.Input.encodeList<IndexIndexStatisticTextDocumentStatistic, Map<String, dynamic>>(textDocumentStatistics!, (value) => value.toMap()),
    };
  }

  factory IndexIndexStatistic.fromMap(Map<String, dynamic> map) {
    return IndexIndexStatistic(
      faqStatistics: map['faqStatistics'] == null ? null : pulumi.Input.decodeList<IndexIndexStatisticFaqStatistic>(map['faqStatistics'], (value) => IndexIndexStatisticFaqStatistic.fromMap((value as Map).cast<String, dynamic>())),
      textDocumentStatistics: map['textDocumentStatistics'] == null ? null : pulumi.Input.decodeList<IndexIndexStatisticTextDocumentStatistic>(map['textDocumentStatistics'], (value) => IndexIndexStatisticTextDocumentStatistic.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

