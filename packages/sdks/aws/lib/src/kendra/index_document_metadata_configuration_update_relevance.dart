// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexDocumentMetadataConfigurationUpdateRelevance {
  /// Time period that the boost applies to. Required if `type` is `DATE_VALUE`. For more information, refer to [Duration](https://docs.aws.amazon.com/kendra/latest/dg/API_Relevance.html#Kendra-Type-Relevance-Duration).
  final pulumi.Input<String?>? duration;
  /// Whether this field determines how "fresh" a document is. Required if `type` is `DATE_VALUE`. For more information, refer to [Freshness](https://docs.aws.amazon.com/kendra/latest/dg/API_Relevance.html#Kendra-Type-Relevance-Freshness).
  final pulumi.Input<bool?>? freshness;
  /// Relative importance of the field in the search. Required for all types. Larger numbers provide more of a boost than smaller numbers. Minimum value of 1. Maximum value of 10.
  final pulumi.Input<int?>? importance;
  /// How values should be interpreted. Required if `type` is `DATE_VALUE` or `LONG_VALUE`. For more information, refer to [RankOrder](https://docs.aws.amazon.com/kendra/latest/dg/API_Relevance.html#Kendra-Type-Relevance-RankOrder).
  final pulumi.Input<String?>? rankOrder;
  /// List of values that should be given a different boost when they appear in the result list. Required if `type` is `STRING_VALUE`. For more information, refer to [ValueImportanceMap](https://docs.aws.amazon.com/kendra/latest/dg/API_Relevance.html#Kendra-Type-Relevance-ValueImportanceMap).
  final pulumi.Input<Map<String, int>?>? valuesImportanceMap;

  /// Creates a new [IndexDocumentMetadataConfigurationUpdateRelevance].
  /// [duration] Time period that the boost applies to. Required if `type` is `DATE_VALUE`. For more information, refer to [Duration](https://docs.aws.amazon.com/kendra/latest/dg/API_Relevance.html#Kendra-Type-Relevance-Duration).
  /// [freshness] Whether this field determines how "fresh" a document is. Required if `type` is `DATE_VALUE`. For more information, refer to [Freshness](https://docs.aws.amazon.com/kendra/latest/dg/API_Relevance.html#Kendra-Type-Relevance-Freshness).
  /// [importance] Relative importance of the field in the search. Required for all types. Larger numbers provide more of a boost than smaller numbers. Minimum value of 1. Maximum value of 10.
  /// [rankOrder] How values should be interpreted. Required if `type` is `DATE_VALUE` or `LONG_VALUE`. For more information, refer to [RankOrder](https://docs.aws.amazon.com/kendra/latest/dg/API_Relevance.html#Kendra-Type-Relevance-RankOrder).
  /// [valuesImportanceMap] List of values that should be given a different boost when they appear in the result list. Required if `type` is `STRING_VALUE`. For more information, refer to [ValueImportanceMap](https://docs.aws.amazon.com/kendra/latest/dg/API_Relevance.html#Kendra-Type-Relevance-ValueImportanceMap).
  const IndexDocumentMetadataConfigurationUpdateRelevance({
    this.duration,
    this.freshness,
    this.importance,
    this.rankOrder,
    this.valuesImportanceMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'freshness': ?freshness,
      'importance': ?importance,
      'rankOrder': ?rankOrder,
      'valuesImportanceMap': ?valuesImportanceMap,
    };
  }

  factory IndexDocumentMetadataConfigurationUpdateRelevance.fromMap(Map<String, dynamic> map) {
    return IndexDocumentMetadataConfigurationUpdateRelevance(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      freshness: (() { final guardedValue = map['freshness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      importance: (() { final guardedValue = map['importance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      rankOrder: (() { final guardedValue = map['rankOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valuesImportanceMap: (() { final guardedValue = map['valuesImportanceMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, int>()); })(),
    );
  }
}
