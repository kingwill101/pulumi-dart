// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1beta1_feature_view_big_query_source.dart';
import 'google_cloud_aiplatform_v1beta1_feature_view_feature_registry_source.dart';
import 'google_cloud_aiplatform_v1beta1_feature_view_sync_config.dart';
import 'google_cloud_aiplatform_v1beta1_feature_view_vector_search_config.dart';

/// The set of arguments for FeatureView.
class FeatureViewArgs2 {
  /// Optional. Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore.
  final Input<GoogleCloudAiplatformV1beta1FeatureViewBigQuerySource>?
      bigQuerySource;

  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final Input<String>? etag;
  final Input<String> featureOnlineStoreId;

  /// Optional. Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore.
  final Input<GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySource>?
      featureRegistrySource;

  /// Required. The ID to use for the FeatureView, which will become the final component of the FeatureView's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within a FeatureOnlineStore.
  final Input<String> featureViewId;

  /// Optional. The labels with user-defined metadata to organize your FeatureViews. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  /// Immutable. If set to true, one on demand sync will be run immediately, regardless whether the FeatureView.sync_config is configured or not.
  final Input<bool>? runSyncImmediately;

  /// Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving.
  final Input<GoogleCloudAiplatformV1beta1FeatureViewSyncConfig>? syncConfig;

  /// Optional. Configuration for vector search. It contains the required configurations to create an index from source data, so that approximate nearest neighbor (a.k.a ANN) algorithms search can be performed during online serving.
  final Input<GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfig>?
      vectorSearchConfig;

  FeatureViewArgs2({
    this.bigQuerySource,
    this.etag,
    required this.featureOnlineStoreId,
    this.featureRegistrySource,
    required this.featureViewId,
    this.labels,
    this.location,
    this.project,
    this.runSyncImmediately,
    this.syncConfig,
    this.vectorSearchConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigQuerySourceValue = bigQuerySource;
    if (bigQuerySourceValue != null) {
      map['bigQuerySource'] = Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1FeatureViewBigQuerySource,
          Map<String, dynamic>>(bigQuerySourceValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['featureOnlineStoreId'] = featureOnlineStoreId;
    final featureRegistrySourceValue = featureRegistrySource;
    if (featureRegistrySourceValue != null) {
      map['featureRegistrySource'] = Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySource,
              Map<String, dynamic>>(
          featureRegistrySourceValue, (value) => value.toMap());
    }
    map['featureViewId'] = featureViewId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final runSyncImmediatelyValue = runSyncImmediately;
    if (runSyncImmediatelyValue != null) {
      map['runSyncImmediately'] = runSyncImmediatelyValue;
    }
    final syncConfigValue = syncConfig;
    if (syncConfigValue != null) {
      map['syncConfig'] = Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1FeatureViewSyncConfig,
          Map<String, dynamic>>(syncConfigValue, (value) => value.toMap());
    }
    final vectorSearchConfigValue = vectorSearchConfig;
    if (vectorSearchConfigValue != null) {
      map['vectorSearchConfig'] = Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfig,
              Map<String, dynamic>>(
          vectorSearchConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FeatureViewArgs2.fromMap(Map<String, dynamic> map) {
    return FeatureViewArgs2(
      bigQuerySource: Input.asOptionalInput<
              GoogleCloudAiplatformV1beta1FeatureViewBigQuerySource>(
          map['bigQuerySource']),
      etag: Input.asOptionalInput<String>(map['etag']),
      featureOnlineStoreId: Input.asInput<String>(map['featureOnlineStoreId']),
      featureRegistrySource: Input.asOptionalInput<
              GoogleCloudAiplatformV1beta1FeatureViewFeatureRegistrySource>(
          map['featureRegistrySource']),
      featureViewId: Input.asInput<String>(map['featureViewId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      runSyncImmediately:
          Input.asOptionalInput<bool>(map['runSyncImmediately']),
      syncConfig: Input.asOptionalInput<
          GoogleCloudAiplatformV1beta1FeatureViewSyncConfig>(map['syncConfig']),
      vectorSearchConfig: Input.asOptionalInput<
              GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfig>(
          map['vectorSearchConfig']),
    );
  }
}
