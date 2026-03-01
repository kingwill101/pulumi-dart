// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_data_quality_dimension_response.dart';

/// DataQualityDimensionResult provides a more detailed, per-dimension view of the results.
class GoogleCloudDataplexV1DataQualityDimensionResultResponse {
  /// The dimension config specified in the DataQualitySpec, as is.
  final GoogleCloudDataplexV1DataQualityDimensionResponse dimension;

  /// Whether the dimension passed or failed.
  final bool passed;

  /// The dimension-level data quality score for this data scan job if and only if the 'dimension' field is set.The score ranges between 0, 100 (up to two decimal points).
  final double score;

  /// Creates a new [GoogleCloudDataplexV1DataQualityDimensionResultResponse].
  /// [dimension] The dimension config specified in the DataQualitySpec, as is.
  /// [passed] Whether the dimension passed or failed.
  /// [score] The dimension-level data quality score for this data scan job if and only if the 'dimension' field is set.The score ranges between 0, 100 (up to two decimal points).
  GoogleCloudDataplexV1DataQualityDimensionResultResponse({
    required this.dimension,
    required this.passed,
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimension': dimension.toMap(),
      'passed': passed,
      'score': score,
    };
  }

  factory GoogleCloudDataplexV1DataQualityDimensionResultResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1DataQualityDimensionResultResponse(
      dimension: GoogleCloudDataplexV1DataQualityDimensionResponse.fromMap(
        (map['dimension'] as Map).cast<String, dynamic>(),
      ),
      passed: map['passed'] as bool,
      score: map['score'] as double,
    );
  }
}
