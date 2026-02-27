// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_categorical_stats_histogram_bucket_response.dart';

/// Result of the categorical stats computation.
class GooglePrivacyDlpV2CategoricalStatsResultResponse {
  /// Histogram of value frequencies in the column.
  final List<GooglePrivacyDlpV2CategoricalStatsHistogramBucketResponse>
      valueFrequencyHistogramBuckets;

  GooglePrivacyDlpV2CategoricalStatsResultResponse({
    required this.valueFrequencyHistogramBuckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['valueFrequencyHistogramBuckets'] = pulumi.Input.encodeList<
            GooglePrivacyDlpV2CategoricalStatsHistogramBucketResponse,
            Map<String, dynamic>>(
        valueFrequencyHistogramBuckets, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2CategoricalStatsResultResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CategoricalStatsResultResponse(
      valueFrequencyHistogramBuckets: pulumi.Input.decodeList<
              GooglePrivacyDlpV2CategoricalStatsHistogramBucketResponse>(
          map['valueFrequencyHistogramBuckets'],
          (value) =>
              GooglePrivacyDlpV2CategoricalStatsHistogramBucketResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
