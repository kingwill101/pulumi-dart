// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_delta_presence_estimation_histogram_bucket_response.dart';

/// Result of the δ-presence computation. Note that these results are an estimation, not exact values.
class GooglePrivacyDlpV2DeltaPresenceEstimationResultResponse {
  /// The intervals [min_probability, max_probability) do not overlap. If a value doesn't correspond to any such interval, the associated frequency is zero. For example, the following records: {min_probability: 0, max_probability: 0.1, frequency: 17} {min_probability: 0.2, max_probability: 0.3, frequency: 42} {min_probability: 0.3, max_probability: 0.4, frequency: 99} mean that there are no record with an estimated probability in [0.1, 0.2) nor larger or equal to 0.4.
  final List<GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucketResponse>
      deltaPresenceEstimationHistogram;

  /// Creates a new [GooglePrivacyDlpV2DeltaPresenceEstimationResultResponse].
  /// [deltaPresenceEstimationHistogram] The intervals [min_probability, max_probability) do not overlap. If a value doesn't correspond to any such interval, the associated frequency is zero. For example, the following records: {min_probability: 0, max_probability: 0.1, frequency: 17} {min_probability: 0.2, max_probability: 0.3, frequency: 42} {min_probability: 0.3, max_probability: 0.4, frequency: 99} mean that there are no record with an estimated probability in [0.1, 0.2) nor larger or equal to 0.4.
  GooglePrivacyDlpV2DeltaPresenceEstimationResultResponse({
    required this.deltaPresenceEstimationHistogram,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deltaPresenceEstimationHistogram'] = pulumi.Input.encodeList<
            GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucketResponse,
            Map<String, dynamic>>(
        deltaPresenceEstimationHistogram, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2DeltaPresenceEstimationResultResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DeltaPresenceEstimationResultResponse(
      deltaPresenceEstimationHistogram: pulumi.Input.decodeList<
              GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucketResponse>(
          map['deltaPresenceEstimationHistogram'],
          (value) =>
              GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucketResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
