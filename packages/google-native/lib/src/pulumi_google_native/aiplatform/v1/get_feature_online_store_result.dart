// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_feature_online_store_bigtable_response.dart';

/// Result data returned by getFeatureOnlineStore.
class GetFeatureOnlineStoreResult {
  /// Contains settings for the Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore.
  final GoogleCloudAiplatformV1FeatureOnlineStoreBigtableResponse bigtable;

  /// Timestamp when this FeatureOnlineStore was created.
  final String createTime;

  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String etag;

  /// Optional. The labels with user-defined metadata to organize your FeatureOnlineStore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final Map<String, String> labels;

  /// Name of the FeatureOnlineStore. Format: `projects/{project}/locations/{location}/featureOnlineStores/{featureOnlineStore}`
  final String name;

  /// State of the featureOnlineStore.
  final String state;

  /// Timestamp when this FeatureOnlineStore was last updated.
  final String updateTime;

  GetFeatureOnlineStoreResult({
    required this.bigtable,
    required this.createTime,
    required this.etag,
    required this.labels,
    required this.name,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigtable'] = bigtable.toMap();
    map['createTime'] = createTime;
    map['etag'] = etag;
    map['labels'] = labels;
    map['name'] = name;
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetFeatureOnlineStoreResult.fromMap(Map<String, dynamic> map) {
    return GetFeatureOnlineStoreResult(
      bigtable:
          GoogleCloudAiplatformV1FeatureOnlineStoreBigtableResponse.fromMap(
              (map['bigtable'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
