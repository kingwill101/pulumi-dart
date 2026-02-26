// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_kmap_estimation_quasi_id_values_response.dart';

/// A KMapEstimationHistogramBucket message with the following values: min_anonymity: 3 max_anonymity: 5 frequency: 42 means that there are 42 records whose quasi-identifier values correspond to 3, 4 or 5 people in the overlying population. An important particular case is when min_anonymity = max_anonymity = 1: the frequency field then corresponds to the number of uniquely identifiable records.
class GooglePrivacyDlpV2KMapEstimationHistogramBucketResponse {
  /// Number of records within these anonymity bounds.
  final String bucketSize;

  /// Total number of distinct quasi-identifier tuple values in this bucket.
  final String bucketValueCount;

  /// Sample of quasi-identifier tuple values in this bucket. The total number of classes returned per bucket is capped at 20.
  final List<GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse>
      bucketValues;

  /// Always greater than or equal to min_anonymity.
  final String maxAnonymity;

  /// Always positive.
  final String minAnonymity;

  GooglePrivacyDlpV2KMapEstimationHistogramBucketResponse({
    required this.bucketSize,
    required this.bucketValueCount,
    required this.bucketValues,
    required this.maxAnonymity,
    required this.minAnonymity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketSize'] = bucketSize;
    map['bucketValueCount'] = bucketValueCount;
    map['bucketValues'] = Input.encodeList<
        GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse,
        Map<String, dynamic>>(bucketValues, (value) => value.toMap());
    map['maxAnonymity'] = maxAnonymity;
    map['minAnonymity'] = minAnonymity;
    return map;
  }

  factory GooglePrivacyDlpV2KMapEstimationHistogramBucketResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2KMapEstimationHistogramBucketResponse(
      bucketSize: map['bucketSize'] as String,
      bucketValueCount: map['bucketValueCount'] as String,
      bucketValues: Input.decodeList<
              GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse>(
          map['bucketValues'],
          (value) =>
              GooglePrivacyDlpV2KMapEstimationQuasiIdValuesResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maxAnonymity: map['maxAnonymity'] as String,
      minAnonymity: map['minAnonymity'] as String,
    );
  }
}
