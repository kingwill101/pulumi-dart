// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_ldiversity_histogram_bucket_response.dart';

/// Result of the l-diversity computation.
class GooglePrivacyDlpV2LDiversityResultResponse {
  /// Histogram of l-diversity equivalence class sensitive value frequencies.
  final List<GooglePrivacyDlpV2LDiversityHistogramBucketResponse>
      sensitiveValueFrequencyHistogramBuckets;

  GooglePrivacyDlpV2LDiversityResultResponse({
    required this.sensitiveValueFrequencyHistogramBuckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sensitiveValueFrequencyHistogramBuckets'] = Input.encodeList<
            GooglePrivacyDlpV2LDiversityHistogramBucketResponse,
            Map<String, dynamic>>(
        sensitiveValueFrequencyHistogramBuckets, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2LDiversityResultResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2LDiversityResultResponse(
      sensitiveValueFrequencyHistogramBuckets:
          Input.decodeList<GooglePrivacyDlpV2LDiversityHistogramBucketResponse>(
              map['sensitiveValueFrequencyHistogramBuckets'],
              (value) =>
                  GooglePrivacyDlpV2LDiversityHistogramBucketResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
