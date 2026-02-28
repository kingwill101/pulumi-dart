// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_feature_view_big_query_source.dart';
import 'google_cloud_aiplatform_v1_feature_view_feature_registry_source.dart';
import 'google_cloud_aiplatform_v1_feature_view_sync_config.dart';

/// {@template pulumi_aiplatform_v1_feature_view_args_doc}
/// The set of arguments for FeatureView.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_feature_view_args_doc}
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

  /// Creates a new [FeatureViewArgs].
  /// [bigQuerySource] Optional. Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore.
  /// [etag] Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [featureOnlineStoreId] Required.
  /// [featureRegistrySource] Optional. Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore.
  /// [featureViewId] Required. The ID to use for the FeatureView, which will become the final component of the FeatureView's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within a FeatureOnlineStore.
  /// [labels] Optional. The labels with user-defined metadata to organize your FeatureViews. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureOnlineStore(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [location] Optional.
  /// [project] Optional.
  /// [runSyncImmediately] Immutable. If set to true, one on demand sync will be run immediately, regardless whether the FeatureView.sync_config is configured or not.
  /// [syncConfig] Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving.
  FeatureViewArgs({
    GoogleCloudAiplatformV1FeatureViewBigQuerySource? bigQuerySource,
    String? etag,
    required String featureOnlineStoreId,
    GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource?
        featureRegistrySource,
    required String featureViewId,
    Map<String, String>? labels,
    String? location,
    String? project,
    bool? runSyncImmediately,
    GoogleCloudAiplatformV1FeatureViewSyncConfig? syncConfig,
  })  : bigQuerySource = pulumi.Input.asOptionalInput<
            GoogleCloudAiplatformV1FeatureViewBigQuerySource>(bigQuerySource),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        featureOnlineStoreId =
            pulumi.Input.asInput<String>(featureOnlineStoreId),
        featureRegistrySource = pulumi.Input.asOptionalInput<
                GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource>(
            featureRegistrySource),
        featureViewId = pulumi.Input.asInput<String>(featureViewId),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        runSyncImmediately =
            pulumi.Input.asOptionalInput<bool>(runSyncImmediately),
        syncConfig = pulumi.Input.asOptionalInput<
            GoogleCloudAiplatformV1FeatureViewSyncConfig>(syncConfig);

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
      bigQuerySource: map['bigQuerySource'] == null
          ? null
          : GoogleCloudAiplatformV1FeatureViewBigQuerySource.fromMap(
              (map['bigQuerySource'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      featureOnlineStoreId: map['featureOnlineStoreId'] as String,
      featureRegistrySource: map['featureRegistrySource'] == null
          ? null
          : GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource.fromMap(
              (map['featureRegistrySource'] as Map).cast<String, dynamic>()),
      featureViewId: map['featureViewId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      runSyncImmediately: map['runSyncImmediately'] == null
          ? null
          : map['runSyncImmediately'] as bool,
      syncConfig: map['syncConfig'] == null
          ? null
          : GoogleCloudAiplatformV1FeatureViewSyncConfig.fromMap(
              (map['syncConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
