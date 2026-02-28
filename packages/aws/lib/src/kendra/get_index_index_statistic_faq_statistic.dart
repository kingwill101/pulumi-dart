// ignore_for_file: unused_element, unnecessary_cast

class GetIndexIndexStatisticFaqStatistic {
  /// The total number of FAQ questions and answers contained in the index.
  final int indexedQuestionAnswersCount;

  /// Creates a new [GetIndexIndexStatisticFaqStatistic].
  /// [indexedQuestionAnswersCount] The total number of FAQ questions and answers contained in the index.
  GetIndexIndexStatisticFaqStatistic({
    required this.indexedQuestionAnswersCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['indexedQuestionAnswersCount'] = indexedQuestionAnswersCount;
    return map;
  }

  factory GetIndexIndexStatisticFaqStatistic.fromMap(Map<String, dynamic> map) {
    return GetIndexIndexStatisticFaqStatistic(
      indexedQuestionAnswersCount: map['indexedQuestionAnswersCount'] as int,
    );
  }
}
