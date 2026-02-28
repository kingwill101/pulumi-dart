// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_kmap_estimation_histogram_bucket_response.dart';

/// Result of the reidentifiability analysis. Note that these results are an estimation, not exact values.
class GooglePrivacyDlpV2KMapEstimationResultResponse {
  /// The intervals [min_anonymity, max_anonymity] do not overlap. If a value doesn't correspond to any such interval, the associated frequency is zero. For example, the following records: {min_anonymity: 1, max_anonymity: 1, frequency: 17} {min_anonymity: 2, max_anonymity: 3, frequency: 42} {min_anonymity: 5, max_anonymity: 10, frequency: 99} mean that there are no record with an estimated anonymity of 4, 5, or larger than 10.
  final List<GooglePrivacyDlpV2KMapEstimationHistogramBucketResponse> kMapEstimationHistogram;

  /// Creates a new [GooglePrivacyDlpV2KMapEstimationResultResponse].
  /// [kMapEstimationHistogram] The intervals [min_anonymity, max_anonymity] do not overlap. If a value doesn't correspond to any such interval, the associated frequency is zero. For example, the following records: {min_anonymity: 1, max_anonymity: 1, frequency: 17} {min_anonymity: 2, max_anonymity: 3, frequency: 42} {min_anonymity: 5, max_anonymity: 10, frequency: 99} mean that there are no record with an estimated anonymity of 4, 5, or larger than 10.
  GooglePrivacyDlpV2KMapEstimationResultResponse({
    required this.kMapEstimationHistogram,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kMapEstimationHistogram': pulumi.Input.encodeList<GooglePrivacyDlpV2KMapEstimationHistogramBucketResponse, Map<String, dynamic>>(kMapEstimationHistogram, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2KMapEstimationResultResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2KMapEstimationResultResponse(
      kMapEstimationHistogram: pulumi.Input.decodeList<GooglePrivacyDlpV2KMapEstimationHistogramBucketResponse>(map['kMapEstimationHistogram'], (value) => GooglePrivacyDlpV2KMapEstimationHistogramBucketResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

