// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_feature_online_store_bigtable_response.dart';
import 'google_cloud_aiplatform_v1beta1_feature_online_store_dedicated_serving_endpoint_response.dart';
import 'google_cloud_aiplatform_v1beta1_feature_online_store_embedding_management_response.dart';

/// Result data returned by getFeatureOnlineStore.
class GetFeatureOnlineStoreAiplatformV1beta1Result {
  /// Contains settings for the Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore.
  final GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableResponse bigtable;

  /// Timestamp when this FeatureOnlineStore was created.
  final String createTime;

  /// Optional. The dedicated serving endpoint for this FeatureOnlineStore, which is different from common Vertex service endpoint.
  final GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpointResponse
      dedicatedServingEndpoint;

  /// Optional. The settings for embedding management in FeatureOnlineStore.
  final GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagementResponse
      embeddingManagement;

  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String etag;

  /// Optional. The labels with user-defined metadata to organize your FeatureOnlineStore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final Map<String, String> labels;

  /// Name of the FeatureOnlineStore. Format: `projects/{project}/locations/{location}/featureOnlineStores/{featureOnlineStore}`
  final String name;

  /// Contains settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore. When choose Optimized storage type, need to set PrivateServiceConnectConfig.enable_private_service_connect to use private endpoint. Otherwise will use public endpoint by default.
  final Map<String, dynamic> optimized;

  /// State of the featureOnlineStore.
  final String state;

  /// Timestamp when this FeatureOnlineStore was last updated.
  final String updateTime;

  GetFeatureOnlineStoreAiplatformV1beta1Result({
    required this.bigtable,
    required this.createTime,
    required this.dedicatedServingEndpoint,
    required this.embeddingManagement,
    required this.etag,
    required this.labels,
    required this.name,
    required this.optimized,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigtable'] = bigtable.toMap();
    map['createTime'] = createTime;
    map['dedicatedServingEndpoint'] = dedicatedServingEndpoint.toMap();
    map['embeddingManagement'] = embeddingManagement.toMap();
    map['etag'] = etag;
    map['labels'] = labels;
    map['name'] = name;
    map['optimized'] = optimized;
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetFeatureOnlineStoreAiplatformV1beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureOnlineStoreAiplatformV1beta1Result(
      bigtable: GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableResponse
          .fromMap((map['bigtable'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      dedicatedServingEndpoint:
          GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpointResponse
              .fromMap((map['dedicatedServingEndpoint'] as Map)
                  .cast<String, dynamic>()),
      embeddingManagement:
          GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagementResponse
              .fromMap(
                  (map['embeddingManagement'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      optimized: (map['optimized'] as Map).cast<String, dynamic>(),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
