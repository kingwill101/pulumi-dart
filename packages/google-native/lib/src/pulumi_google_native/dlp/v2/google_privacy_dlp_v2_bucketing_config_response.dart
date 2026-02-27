// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_bucket_response.dart';

/// Generalization function that buckets values based on ranges. The ranges and replacement values are dynamically provided by the user for custom behavior, such as 1-30 -> LOW 31-65 -> MEDIUM 66-100 -> HIGH This can be used on data of type: number, long, string, timestamp. If the bound `Value` type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing. See https://cloud.google.com/dlp/docs/concepts-bucketing to learn more.
class GooglePrivacyDlpV2BucketingConfigResponse {
  /// Set of buckets. Ranges must be non-overlapping.
  final List<GooglePrivacyDlpV2BucketResponse> buckets;

  GooglePrivacyDlpV2BucketingConfigResponse({
    required this.buckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buckets'] = pulumi.Input.encodeList<GooglePrivacyDlpV2BucketResponse,
        Map<String, dynamic>>(buckets, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2BucketingConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BucketingConfigResponse(
      buckets: pulumi.Input.decodeList<GooglePrivacyDlpV2BucketResponse>(
          map['buckets'],
          (value) => GooglePrivacyDlpV2BucketResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
