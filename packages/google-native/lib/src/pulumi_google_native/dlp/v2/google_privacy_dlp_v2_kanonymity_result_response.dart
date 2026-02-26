// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_kanonymity_histogram_bucket_response.dart';

/// Result of the k-anonymity computation.
class GooglePrivacyDlpV2KAnonymityResultResponse {
  /// Histogram of k-anonymity equivalence classes.
  final List<GooglePrivacyDlpV2KAnonymityHistogramBucketResponse>
      equivalenceClassHistogramBuckets;

  GooglePrivacyDlpV2KAnonymityResultResponse({
    required this.equivalenceClassHistogramBuckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['equivalenceClassHistogramBuckets'] = Input.encodeList<
            GooglePrivacyDlpV2KAnonymityHistogramBucketResponse,
            Map<String, dynamic>>(
        equivalenceClassHistogramBuckets, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2KAnonymityResultResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2KAnonymityResultResponse(
      equivalenceClassHistogramBuckets:
          Input.decodeList<GooglePrivacyDlpV2KAnonymityHistogramBucketResponse>(
              map['equivalenceClassHistogramBuckets'],
              (value) =>
                  GooglePrivacyDlpV2KAnonymityHistogramBucketResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
