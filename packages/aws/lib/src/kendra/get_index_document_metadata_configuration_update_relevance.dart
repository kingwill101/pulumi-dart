// ignore_for_file: unused_element, unnecessary_cast

class GetIndexDocumentMetadataConfigurationUpdateRelevance {
  /// Time period that the boost applies to. For more information, refer to [Duration](https://docs.aws.amazon.com/kendra/latest/APIReference/API_Relevance.html#Kendra-Type-Relevance-Duration).
  final String duration;

  /// How "fresh" a document is. For more information, refer to [Freshness](https://docs.aws.amazon.com/kendra/latest/APIReference/API_Relevance.html#Kendra-Type-Relevance-Freshness).
  final bool freshness;

  /// Relative importance of the field in the search. Larger numbers provide more of a boost than smaller numbers. Minimum value of 1. Maximum value of 10.
  final int importance;

  /// Determines how values should be interpreted. For more information, refer to [RankOrder](https://docs.aws.amazon.com/kendra/latest/APIReference/API_Relevance.html#Kendra-Type-Relevance-RankOrder).
  final String rankOrder;

  /// A list of values that should be given a different boost when they appear in the result list. For more information, refer to [ValueImportanceMap](https://docs.aws.amazon.com/kendra/latest/APIReference/API_Relevance.html#Kendra-Type-Relevance-ValueImportanceMap).
  final Map<String, int> valuesImportanceMap;

  /// Creates a new [GetIndexDocumentMetadataConfigurationUpdateRelevance].
  /// [duration] Time period that the boost applies to. For more information, refer to [Duration](https://docs.aws.amazon.com/kendra/latest/APIReference/API_Relevance.html#Kendra-Type-Relevance-Duration).
  /// [freshness] How "fresh" a document is. For more information, refer to [Freshness](https://docs.aws.amazon.com/kendra/latest/APIReference/API_Relevance.html#Kendra-Type-Relevance-Freshness).
  /// [importance] Relative importance of the field in the search. Larger numbers provide more of a boost than smaller numbers. Minimum value of 1. Maximum value of 10.
  /// [rankOrder] Determines how values should be interpreted. For more information, refer to [RankOrder](https://docs.aws.amazon.com/kendra/latest/APIReference/API_Relevance.html#Kendra-Type-Relevance-RankOrder).
  /// [valuesImportanceMap] A list of values that should be given a different boost when they appear in the result list. For more information, refer to [ValueImportanceMap](https://docs.aws.amazon.com/kendra/latest/APIReference/API_Relevance.html#Kendra-Type-Relevance-ValueImportanceMap).
  GetIndexDocumentMetadataConfigurationUpdateRelevance({
    required this.duration,
    required this.freshness,
    required this.importance,
    required this.rankOrder,
    required this.valuesImportanceMap,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['duration'] = duration;
    map['freshness'] = freshness;
    map['importance'] = importance;
    map['rankOrder'] = rankOrder;
    map['valuesImportanceMap'] = valuesImportanceMap;
    return map;
  }

  factory GetIndexDocumentMetadataConfigurationUpdateRelevance.fromMap(
      Map<String, dynamic> map) {
    return GetIndexDocumentMetadataConfigurationUpdateRelevance(
      duration: map['duration'] as String,
      freshness: map['freshness'] as bool,
      importance: map['importance'] as int,
      rankOrder: map['rankOrder'] as String,
      valuesImportanceMap:
          (map['valuesImportanceMap'] as Map).cast<String, int>(),
    );
  }
}
