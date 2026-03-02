// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIndexIndexStatisticFaqStatistic {
  /// The total number of FAQ questions and answers contained in the index.
  final pulumi.Input<int> indexedQuestionAnswersCount;

  /// Creates a new [GetIndexIndexStatisticFaqStatistic].
  /// [indexedQuestionAnswersCount] The total number of FAQ questions and answers contained in the index.
  GetIndexIndexStatisticFaqStatistic({
    required this.indexedQuestionAnswersCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexedQuestionAnswersCount': indexedQuestionAnswersCount,
    };
  }

  factory GetIndexIndexStatisticFaqStatistic.fromMap(Map<String, dynamic> map) {
    return GetIndexIndexStatisticFaqStatistic(
      indexedQuestionAnswersCount: (map['indexedQuestionAnswersCount'] as int).input(),
    );
  }
}

