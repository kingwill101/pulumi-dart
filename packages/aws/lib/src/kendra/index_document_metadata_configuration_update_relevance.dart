// ignore_for_file: unused_element, unnecessary_cast

class IndexDocumentMetadataConfigurationUpdateRelevance {
  /// Specifies the time period that the boost applies to. For more information, refer to [Duration](https://docs.aws.amazon.com/kendra/latest/dg/API_Relevance.html#Kendra-Type-Relevance-Duration).
  final String? duration;

  /// Indicates that this field determines how "fresh" a document is. For more information, refer to [Freshness](https://docs.aws.amazon.com/kendra/latest/dg/API_Relevance.html#Kendra-Type-Relevance-Freshness).
  final bool? freshness;

  /// The relative importance of the field in the search. Larger numbers provide more of a boost than smaller numbers. Minimum value of 1. Maximum value of 10.
  final int? importance;

  /// Determines how values should be interpreted. For more information, refer to [RankOrder](https://docs.aws.amazon.com/kendra/latest/dg/API_Relevance.html#Kendra-Type-Relevance-RankOrder).
  final String? rankOrder;

  /// A list of values that should be given a different boost when they appear in the result list. For more information, refer to [ValueImportanceMap](https://docs.aws.amazon.com/kendra/latest/dg/API_Relevance.html#Kendra-Type-Relevance-ValueImportanceMap).
  final Map<String, int>? valuesImportanceMap;

  /// Creates a new [IndexDocumentMetadataConfigurationUpdateRelevance].
  /// [duration] Specifies the time period that the boost applies to. For more information, refer to [Duration](https://docs.aws.amazon.com/kendra/latest/dg/API_Relevance.html#Kendra-Type-Relevance-Duration).
  /// [freshness] Indicates that this field determines how "fresh" a document is. For more information, refer to [Freshness](https://docs.aws.amazon.com/kendra/latest/dg/API_Relevance.html#Kendra-Type-Relevance-Freshness).
  /// [importance] The relative importance of the field in the search. Larger numbers provide more of a boost than smaller numbers. Minimum value of 1. Maximum value of 10.
  /// [rankOrder] Determines how values should be interpreted. For more information, refer to [RankOrder](https://docs.aws.amazon.com/kendra/latest/dg/API_Relevance.html#Kendra-Type-Relevance-RankOrder).
  /// [valuesImportanceMap] A list of values that should be given a different boost when they appear in the result list. For more information, refer to [ValueImportanceMap](https://docs.aws.amazon.com/kendra/latest/dg/API_Relevance.html#Kendra-Type-Relevance-ValueImportanceMap).
  IndexDocumentMetadataConfigurationUpdateRelevance({
    this.duration,
    this.freshness,
    this.importance,
    this.rankOrder,
    this.valuesImportanceMap,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final durationValue = duration;
    if (durationValue != null) {
      map['duration'] = durationValue;
    }
    final freshnessValue = freshness;
    if (freshnessValue != null) {
      map['freshness'] = freshnessValue;
    }
    final importanceValue = importance;
    if (importanceValue != null) {
      map['importance'] = importanceValue;
    }
    final rankOrderValue = rankOrder;
    if (rankOrderValue != null) {
      map['rankOrder'] = rankOrderValue;
    }
    final valuesImportanceMapValue = valuesImportanceMap;
    if (valuesImportanceMapValue != null) {
      map['valuesImportanceMap'] = valuesImportanceMapValue;
    }
    return map;
  }

  factory IndexDocumentMetadataConfigurationUpdateRelevance.fromMap(
      Map<String, dynamic> map) {
    return IndexDocumentMetadataConfigurationUpdateRelevance(
      duration: map['duration'] == null ? null : map['duration'] as String,
      freshness: map['freshness'] == null ? null : map['freshness'] as bool,
      importance: map['importance'] == null ? null : map['importance'] as int,
      rankOrder: map['rankOrder'] == null ? null : map['rankOrder'] as String,
      valuesImportanceMap: map['valuesImportanceMap'] == null
          ? null
          : (map['valuesImportanceMap'] as Map).cast<String, int>(),
    );
  }
}
