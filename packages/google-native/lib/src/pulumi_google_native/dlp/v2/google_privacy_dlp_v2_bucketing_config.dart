// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_bucket.dart';

/// Generalization function that buckets values based on ranges. The ranges and replacement values are dynamically provided by the user for custom behavior, such as 1-30 -> LOW 31-65 -> MEDIUM 66-100 -> HIGH This can be used on data of type: number, long, string, timestamp. If the bound `Value` type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing. See https://cloud.google.com/dlp/docs/concepts-bucketing to learn more.
class GooglePrivacyDlpV2BucketingConfig {
  /// Set of buckets. Ranges must be non-overlapping.
  final List<GooglePrivacyDlpV2Bucket>? buckets;

  GooglePrivacyDlpV2BucketingConfig({
    this.buckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketsValue = buckets;
    if (bucketsValue != null) {
      map['buckets'] = pulumi.Input.encodeList<GooglePrivacyDlpV2Bucket,
          Map<String, dynamic>>(bucketsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GooglePrivacyDlpV2BucketingConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BucketingConfig(
      buckets: map['buckets'] == null
          ? null
          : pulumi.Input.decodeList<GooglePrivacyDlpV2Bucket>(
              map['buckets'],
              (value) => GooglePrivacyDlpV2Bucket.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
