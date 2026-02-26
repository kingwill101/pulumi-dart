// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_value_frequency_response.dart';

/// Histogram of value frequencies in the column.
class GooglePrivacyDlpV2CategoricalStatsHistogramBucketResponse {
  /// Total number of values in this bucket.
  final String bucketSize;

  /// Total number of distinct values in this bucket.
  final String bucketValueCount;

  /// Sample of value frequencies in this bucket. The total number of values returned per bucket is capped at 20.
  final List<GooglePrivacyDlpV2ValueFrequencyResponse> bucketValues;

  /// Lower bound on the value frequency of the values in this bucket.
  final String valueFrequencyLowerBound;

  /// Upper bound on the value frequency of the values in this bucket.
  final String valueFrequencyUpperBound;

  GooglePrivacyDlpV2CategoricalStatsHistogramBucketResponse({
    required this.bucketSize,
    required this.bucketValueCount,
    required this.bucketValues,
    required this.valueFrequencyLowerBound,
    required this.valueFrequencyUpperBound,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketSize'] = bucketSize;
    map['bucketValueCount'] = bucketValueCount;
    map['bucketValues'] = Input.encodeList<
        GooglePrivacyDlpV2ValueFrequencyResponse,
        Map<String, dynamic>>(bucketValues, (value) => value.toMap());
    map['valueFrequencyLowerBound'] = valueFrequencyLowerBound;
    map['valueFrequencyUpperBound'] = valueFrequencyUpperBound;
    return map;
  }

  factory GooglePrivacyDlpV2CategoricalStatsHistogramBucketResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CategoricalStatsHistogramBucketResponse(
      bucketSize: map['bucketSize'] as String,
      bucketValueCount: map['bucketValueCount'] as String,
      bucketValues: Input.decodeList<GooglePrivacyDlpV2ValueFrequencyResponse>(
          map['bucketValues'],
          (value) => GooglePrivacyDlpV2ValueFrequencyResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      valueFrequencyLowerBound: map['valueFrequencyLowerBound'] as String,
      valueFrequencyUpperBound: map['valueFrequencyUpperBound'] as String,
    );
  }
}
