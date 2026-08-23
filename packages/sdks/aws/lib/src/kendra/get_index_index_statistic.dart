// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_index_index_statistic_faq_statistic.dart';
import 'get_index_index_statistic_text_document_statistic.dart';

class GetIndexIndexStatistic {
  /// Block that specifies the number of question and answer topics in the index. Documented below.
  final pulumi.Input<List<GetIndexIndexStatisticFaqStatistic>> faqStatistics;
  /// A block that specifies the number of text documents indexed.
  final pulumi.Input<List<GetIndexIndexStatisticTextDocumentStatistic>> textDocumentStatistics;

  /// Creates a new [GetIndexIndexStatistic].
  /// [faqStatistics] Block that specifies the number of question and answer topics in the index. Documented below.
  /// [textDocumentStatistics] A block that specifies the number of text documents indexed.
  const GetIndexIndexStatistic({
    required this.faqStatistics,
    required this.textDocumentStatistics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'faqStatistics': pulumi.Input.mapInputValue<List<GetIndexIndexStatisticFaqStatistic>, List<Map<String, dynamic>>>(faqStatistics, (value) => pulumi.Input.encodeList<GetIndexIndexStatisticFaqStatistic, Map<String, dynamic>>(value, (value) => value.toMap())),
      'textDocumentStatistics': pulumi.Input.mapInputValue<List<GetIndexIndexStatisticTextDocumentStatistic>, List<Map<String, dynamic>>>(textDocumentStatistics, (value) => pulumi.Input.encodeList<GetIndexIndexStatisticTextDocumentStatistic, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetIndexIndexStatistic.fromMap(Map<String, dynamic> map) {
    return GetIndexIndexStatistic(
      faqStatistics: pulumi.Input.fromValue(pulumi.Input.decodeList<GetIndexIndexStatisticFaqStatistic>(map['faqStatistics']!, (value) => GetIndexIndexStatisticFaqStatistic.fromMap((value as Map).cast<String, dynamic>()))),
      textDocumentStatistics: pulumi.Input.fromValue(pulumi.Input.decodeList<GetIndexIndexStatisticTextDocumentStatistic>(map['textDocumentStatistics']!, (value) => GetIndexIndexStatisticTextDocumentStatistic.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
