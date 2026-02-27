// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_kanonymity_equivalence_class_response.dart';

/// Histogram of k-anonymity equivalence classes.
class GooglePrivacyDlpV2KAnonymityHistogramBucketResponse {
  /// Total number of equivalence classes in this bucket.
  final String bucketSize;

  /// Total number of distinct equivalence classes in this bucket.
  final String bucketValueCount;

  /// Sample of equivalence classes in this bucket. The total number of classes returned per bucket is capped at 20.
  final List<GooglePrivacyDlpV2KAnonymityEquivalenceClassResponse> bucketValues;

  /// Lower bound on the size of the equivalence classes in this bucket.
  final String equivalenceClassSizeLowerBound;

  /// Upper bound on the size of the equivalence classes in this bucket.
  final String equivalenceClassSizeUpperBound;

  GooglePrivacyDlpV2KAnonymityHistogramBucketResponse({
    required this.bucketSize,
    required this.bucketValueCount,
    required this.bucketValues,
    required this.equivalenceClassSizeLowerBound,
    required this.equivalenceClassSizeUpperBound,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketSize'] = bucketSize;
    map['bucketValueCount'] = bucketValueCount;
    map['bucketValues'] = pulumi.Input.encodeList<
        GooglePrivacyDlpV2KAnonymityEquivalenceClassResponse,
        Map<String, dynamic>>(bucketValues, (value) => value.toMap());
    map['equivalenceClassSizeLowerBound'] = equivalenceClassSizeLowerBound;
    map['equivalenceClassSizeUpperBound'] = equivalenceClassSizeUpperBound;
    return map;
  }

  factory GooglePrivacyDlpV2KAnonymityHistogramBucketResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2KAnonymityHistogramBucketResponse(
      bucketSize: map['bucketSize'] as String,
      bucketValueCount: map['bucketValueCount'] as String,
      bucketValues: pulumi.Input.decodeList<
              GooglePrivacyDlpV2KAnonymityEquivalenceClassResponse>(
          map['bucketValues'],
          (value) =>
              GooglePrivacyDlpV2KAnonymityEquivalenceClassResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      equivalenceClassSizeLowerBound:
          map['equivalenceClassSizeLowerBound'] as String,
      equivalenceClassSizeUpperBound:
          map['equivalenceClassSizeUpperBound'] as String,
    );
  }
}
