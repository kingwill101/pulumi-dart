// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_feature_view_big_query_source.dart';
import 'google_cloud_aiplatform_v1_feature_view_feature_registry_source.dart';
import 'google_cloud_aiplatform_v1_feature_view_sync_config.dart';

/// The set of arguments for FeatureView.
class FeatureViewArgs {
  /// Optional. Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore.
  final pulumi.Input<GoogleCloudAiplatformV1FeatureViewBigQuerySource>?
      bigQuerySource;

  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String> featureOnlineStoreId;

  /// Optional. Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore.
  final pulumi.Input<GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource>?
      featureRegistrySource;

  /// Required. The ID to use for the FeatureView, which will become the final component of the FeatureView's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within a FeatureOnlineStore.
  final pulumi.Input<String> featureViewId;

  /// Optional. The labels with user-defined metadata to organize your FeatureViews. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Immutable. If set to true, one on demand sync will be run immediately, regardless whether the FeatureView.sync_config is configured or not.
  final pulumi.Input<bool>? runSyncImmediately;

  /// Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving.
  final pulumi.Input<GoogleCloudAiplatformV1FeatureViewSyncConfig>? syncConfig;

  FeatureViewArgs({
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
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigQuerySourceValue = bigQuerySource;
    if (bigQuerySourceValue != null) {
      map['bigQuerySource'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1FeatureViewBigQuerySource,
          Map<String, dynamic>>(bigQuerySourceValue, (value) => value.toMap());
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['featureOnlineStoreId'] = featureOnlineStoreId;
    final featureRegistrySourceValue = featureRegistrySource;
    if (featureRegistrySourceValue != null) {
      map['featureRegistrySource'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource,
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
      map['syncConfig'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1FeatureViewSyncConfig,
          Map<String, dynamic>>(syncConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FeatureViewArgs.fromMap(Map<String, dynamic> map) {
    return FeatureViewArgs(
      bigQuerySource: pulumi.Input.asOptionalInput<
              GoogleCloudAiplatformV1FeatureViewBigQuerySource>(
          map['bigQuerySource']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      featureOnlineStoreId:
          pulumi.Input.asInput<String>(map['featureOnlineStoreId']),
      featureRegistrySource: pulumi.Input.asOptionalInput<
              GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource>(
          map['featureRegistrySource']),
      featureViewId: pulumi.Input.asInput<String>(map['featureViewId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      runSyncImmediately:
          pulumi.Input.asOptionalInput<bool>(map['runSyncImmediately']),
      syncConfig: pulumi.Input.asOptionalInput<
          GoogleCloudAiplatformV1FeatureViewSyncConfig>(map['syncConfig']),
    );
  }
}
