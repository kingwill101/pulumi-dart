// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexIndexStatisticFaqStatistic {
  /// The total number of FAQ questions and answers contained in the index.
  final pulumi.Input<int>? indexedQuestionAnswersCount;

  /// Creates a new [IndexIndexStatisticFaqStatistic].
  /// [indexedQuestionAnswersCount] The total number of FAQ questions and answers contained in the index.
  IndexIndexStatisticFaqStatistic({this.indexedQuestionAnswersCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexedQuestionAnswersCount': ?indexedQuestionAnswersCount,
    };
  }

  factory IndexIndexStatisticFaqStatistic.fromMap(Map<String, dynamic> map) {
    return IndexIndexStatisticFaqStatistic(
      indexedQuestionAnswersCount: (() {
        final guardedValue = map['indexedQuestionAnswersCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
