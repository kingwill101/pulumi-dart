// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_index_index_statistic_faq_statistic/get_index_index_statistic_faq_statistic.dart';
import '../get_index_index_statistic_text_document_statistic/get_index_index_statistic_text_document_statistic.dart';

class GetIndexIndexStatistic {
  /// Block that specifies the number of question and answer topics in the index. Documented below.
  final List<GetIndexIndexStatisticFaqStatistic> faqStatistics;

  /// A block that specifies the number of text documents indexed.
  final List<GetIndexIndexStatisticTextDocumentStatistic>
      textDocumentStatistics;

  GetIndexIndexStatistic({
    required this.faqStatistics,
    required this.textDocumentStatistics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['faqStatistics'] = pulumi.Input.encodeList<
        GetIndexIndexStatisticFaqStatistic,
        Map<String, dynamic>>(faqStatistics, (value) => value.toMap());
    map['textDocumentStatistics'] = pulumi.Input.encodeList<
        GetIndexIndexStatisticTextDocumentStatistic,
        Map<String, dynamic>>(textDocumentStatistics, (value) => value.toMap());
    return map;
  }

  factory GetIndexIndexStatistic.fromMap(Map<String, dynamic> map) {
    return GetIndexIndexStatistic(
      faqStatistics:
          pulumi.Input.decodeList<GetIndexIndexStatisticFaqStatistic>(
              map['faqStatistics'],
              (value) => GetIndexIndexStatisticFaqStatistic.fromMap(
                  (value as Map).cast<String, dynamic>())),
      textDocumentStatistics:
          pulumi.Input.decodeList<GetIndexIndexStatisticTextDocumentStatistic>(
              map['textDocumentStatistics'],
              (value) => GetIndexIndexStatisticTextDocumentStatistic.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
