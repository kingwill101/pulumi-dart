// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_feature_online_store_bigtable.dart';
import 'google_cloud_aiplatform_v1beta1_feature_online_store_dedicated_serving_endpoint.dart';
import 'google_cloud_aiplatform_v1beta1_feature_online_store_embedding_management.dart';

/// The set of arguments for FeatureOnlineStore.
class FeatureOnlineStoreAiplatformV1beta1Args {
  /// Contains settings for the Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore.
  final pulumi.Input<GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtable>?
      bigtable;

  /// Optional. The dedicated serving endpoint for this FeatureOnlineStore, which is different from common Vertex service endpoint.
  final pulumi.Input<
          GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpoint>?
      dedicatedServingEndpoint;

  /// Optional. The settings for embedding management in FeatureOnlineStore.
  final pulumi
      .Input<GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagement>?
      embeddingManagement;

  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;

  /// Required. The ID to use for this FeatureOnlineStore, which will become the final component of the FeatureOnlineStore's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  final pulumi.Input<String> featureOnlineStoreId;

  /// Optional. The labels with user-defined metadata to organize your FeatureOnlineStore. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Contains settings for the Optimized store that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore. When choose Optimized storage type, need to set PrivateServiceConnectConfig.enable_private_service_connect to use private endpoint. Otherwise will use public endpoint by default.
  final pulumi.Input<Map<String, dynamic>>? optimized;
  final pulumi.Input<String>? project;

  FeatureOnlineStoreAiplatformV1beta1Args({
    this.bigtable,
    this.dedicatedServingEndpoint,
    this.embeddingManagement,
    this.etag,
    required this.featureOnlineStoreId,
    this.labels,
    this.location,
    this.optimized,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigtableValue = bigtable;
    if (bigtableValue != null) {
      map['bigtable'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtable,
          Map<String, dynamic>>(bigtableValue, (value) => value.toMap());
    }
    final dedicatedServingEndpointValue = dedicatedServingEndpoint;
    if (dedicatedServingEndpointValue != null) {
      map['dedicatedServingEndpoint'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpoint,
          Map<String,
              dynamic>>(dedicatedServingEndpointValue, (value) => value.toMap());
    }
    final embeddingManagementValue = embeddingManagement;
    if (embeddingManagementValue != null) {
      map['embeddingManagement'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagement,
              Map<String, dynamic>>(
          embeddingManagementValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['featureOnlineStoreId'] = featureOnlineStoreId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final optimizedValue = optimized;
    if (optimizedValue != null) {
      map['optimized'] = optimizedValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory FeatureOnlineStoreAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return FeatureOnlineStoreAiplatformV1beta1Args(
      bigtable: pulumi.Input.asOptionalInput<
              GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtable>(
          map['bigtable']),
      dedicatedServingEndpoint: pulumi.Input.asOptionalInput<
              GoogleCloudAiplatformV1beta1FeatureOnlineStoreDedicatedServingEndpoint>(
          map['dedicatedServingEndpoint']),
      embeddingManagement: pulumi.Input.asOptionalInput<
              GoogleCloudAiplatformV1beta1FeatureOnlineStoreEmbeddingManagement>(
          map['embeddingManagement']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      featureOnlineStoreId:
          pulumi.Input.asInput<String>(map['featureOnlineStoreId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      optimized:
          pulumi.Input.asOptionalInput<Map<String, dynamic>>(map['optimized']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
