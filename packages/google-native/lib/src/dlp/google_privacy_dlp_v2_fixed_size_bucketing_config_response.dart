// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_value_response.dart';

/// Buckets values based on fixed size ranges. The Bucketing transformation can provide all of this functionality, but requires more configuration. This message is provided as a convenience to the user for simple bucketing strategies. The transformed value will be a hyphenated string of {lower_bound}-{upper_bound}. For example, if lower_bound = 10 and upper_bound = 20, all values that are within this bucket will be replaced with "10-20". This can be used on data of type: double, long. If the bound Value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing. See https://cloud.google.com/dlp/docs/concepts-bucketing to learn more.
class GooglePrivacyDlpV2FixedSizeBucketingConfigResponse {
  /// Size of each bucket (except for minimum and maximum buckets). So if `lower_bound` = 10, `upper_bound` = 89, and `bucket_size` = 10, then the following buckets would be used: -10, 10-20, 20-30, 30-40, 40-50, 50-60, 60-70, 70-80, 80-89, 89+. Precision up to 2 decimals works.
  final double bucketSize;

  /// Lower bound value of buckets. All values less than `lower_bound` are grouped together into a single bucket; for example if `lower_bound` = 10, then all values less than 10 are replaced with the value "-10".
  final GooglePrivacyDlpV2ValueResponse lowerBound;

  /// Upper bound value of buckets. All values greater than upper_bound are grouped together into a single bucket; for example if `upper_bound` = 89, then all values greater than 89 are replaced with the value "89+".
  final GooglePrivacyDlpV2ValueResponse upperBound;

  /// Creates a new [GooglePrivacyDlpV2FixedSizeBucketingConfigResponse].
  /// [bucketSize] Size of each bucket (except for minimum and maximum buckets). So if `lower_bound` = 10, `upper_bound` = 89, and `bucket_size` = 10, then the following buckets would be used: -10, 10-20, 20-30, 30-40, 40-50, 50-60, 60-70, 70-80, 80-89, 89+. Precision up to 2 decimals works.
  /// [lowerBound] Lower bound value of buckets. All values less than `lower_bound` are grouped together into a single bucket; for example if `lower_bound` = 10, then all values less than 10 are replaced with the value "-10".
  /// [upperBound] Upper bound value of buckets. All values greater than upper_bound are grouped together into a single bucket; for example if `upper_bound` = 89, then all values greater than 89 are replaced with the value "89+".
  GooglePrivacyDlpV2FixedSizeBucketingConfigResponse({
    required this.bucketSize,
    required this.lowerBound,
    required this.upperBound,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketSize'] = bucketSize;
    map['lowerBound'] = lowerBound.toMap();
    map['upperBound'] = upperBound.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2FixedSizeBucketingConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2FixedSizeBucketingConfigResponse(
      bucketSize: map['bucketSize'] as double,
      lowerBound: GooglePrivacyDlpV2ValueResponse.fromMap(
          (map['lowerBound'] as Map).cast<String, dynamic>()),
      upperBound: GooglePrivacyDlpV2ValueResponse.fromMap(
          (map['upperBound'] as Map).cast<String, dynamic>()),
    );
  }
}
