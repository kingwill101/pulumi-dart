// ignore_for_file: unused_element, unnecessary_cast

class IndexIndexStatisticFaqStatistic {
  /// The total number of FAQ questions and answers contained in the index.
  final int? indexedQuestionAnswersCount;

  /// Creates a new [IndexIndexStatisticFaqStatistic].
  /// [indexedQuestionAnswersCount] The total number of FAQ questions and answers contained in the index.
  IndexIndexStatisticFaqStatistic({
    this.indexedQuestionAnswersCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final indexedQuestionAnswersCountValue = indexedQuestionAnswersCount;
    if (indexedQuestionAnswersCountValue != null) {
      map['indexedQuestionAnswersCount'] = indexedQuestionAnswersCountValue;
    }
    return map;
  }

  factory IndexIndexStatisticFaqStatistic.fromMap(Map<String, dynamic> map) {
    return IndexIndexStatisticFaqStatistic(
      indexedQuestionAnswersCount: map['indexedQuestionAnswersCount'] == null
          ? null
          : map['indexedQuestionAnswersCount'] as int,
    );
  }
}
