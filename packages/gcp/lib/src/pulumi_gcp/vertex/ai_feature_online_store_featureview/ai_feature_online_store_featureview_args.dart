// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ai_feature_online_store_featureview_big_query_source/ai_feature_online_store_featureview_big_query_source.dart';
import '../ai_feature_online_store_featureview_feature_registry_source/ai_feature_online_store_featureview_feature_registry_source.dart';
import '../ai_feature_online_store_featureview_sync_config/ai_feature_online_store_featureview_sync_config.dart';
import '../ai_feature_online_store_featureview_vector_search_config/ai_feature_online_store_featureview_vector_search_config.dart';

/// The set of arguments for AiFeatureOnlineStoreFeatureview.
class AiFeatureOnlineStoreFeatureviewArgs {
  /// Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore.
  /// Structure is documented below.
  final Input<AiFeatureOnlineStoreFeatureviewBigQuerySource>? bigQuerySource;

  /// The name of the FeatureOnlineStore to use for the featureview.
  final Input<String> featureOnlineStore;

  /// Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore.
  /// Structure is documented below.
  final Input<AiFeatureOnlineStoreFeatureviewFeatureRegistrySource>?
      featureRegistrySource;

  /// A set of key/value label pairs to assign to this FeatureView.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Name of the FeatureView. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region for the resource. It should be the same as the featureonlinestore region.
  final Input<String>? region;

  /// Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving.
  /// Structure is documented below.
  final Input<AiFeatureOnlineStoreFeatureviewSyncConfig>? syncConfig;

  /// Configuration for vector search. It contains the required configurations to create an index from source data, so that approximate nearest neighbor (a.k.a ANN) algorithms search can be performed during online serving.
  /// Structure is documented below.
  final Input<AiFeatureOnlineStoreFeatureviewVectorSearchConfig>?
      vectorSearchConfig;

  AiFeatureOnlineStoreFeatureviewArgs({
    this.bigQuerySource,
    required this.featureOnlineStore,
    this.featureRegistrySource,
    this.labels,
    this.name,
    this.project,
    this.region,
    this.syncConfig,
    this.vectorSearchConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigQuerySourceValue = bigQuerySource;
    if (bigQuerySourceValue != null) {
      map['bigQuerySource'] = Input.mapOptionalInputValue<
          AiFeatureOnlineStoreFeatureviewBigQuerySource,
          Map<String, dynamic>>(bigQuerySourceValue, (value) => value.toMap());
    }
    map['featureOnlineStore'] = featureOnlineStore;
    final featureRegistrySourceValue = featureRegistrySource;
    if (featureRegistrySourceValue != null) {
      map['featureRegistrySource'] = Input.mapOptionalInputValue<
              AiFeatureOnlineStoreFeatureviewFeatureRegistrySource,
              Map<String, dynamic>>(
          featureRegistrySourceValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final syncConfigValue = syncConfig;
    if (syncConfigValue != null) {
      map['syncConfig'] = Input.mapOptionalInputValue<
          AiFeatureOnlineStoreFeatureviewSyncConfig,
          Map<String, dynamic>>(syncConfigValue, (value) => value.toMap());
    }
    final vectorSearchConfigValue = vectorSearchConfig;
    if (vectorSearchConfigValue != null) {
      map['vectorSearchConfig'] = Input.mapOptionalInputValue<
              AiFeatureOnlineStoreFeatureviewVectorSearchConfig,
              Map<String, dynamic>>(
          vectorSearchConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory AiFeatureOnlineStoreFeatureviewArgs.fromMap(
      Map<String, dynamic> map) {
    return AiFeatureOnlineStoreFeatureviewArgs(
      bigQuerySource:
          Input.asOptionalInput<AiFeatureOnlineStoreFeatureviewBigQuerySource>(
              map['bigQuerySource']),
      featureOnlineStore: Input.asInput<String>(map['featureOnlineStore']),
      featureRegistrySource: Input.asOptionalInput<
              AiFeatureOnlineStoreFeatureviewFeatureRegistrySource>(
          map['featureRegistrySource']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      syncConfig:
          Input.asOptionalInput<AiFeatureOnlineStoreFeatureviewSyncConfig>(
              map['syncConfig']),
      vectorSearchConfig: Input.asOptionalInput<
              AiFeatureOnlineStoreFeatureviewVectorSearchConfig>(
          map['vectorSearchConfig']),
    );
  }
}
