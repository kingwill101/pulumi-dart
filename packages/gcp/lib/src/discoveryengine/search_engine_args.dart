// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_engine_common_config.dart';
import 'search_engine_search_engine_config.dart';

/// {@template pulumi_discoveryengine_search_engine_search_engine_args_doc}
/// The set of arguments for SearchEngine.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_search_engine_search_engine_args_doc}
class SearchEngineArgs {
  /// This is the application type this engine resource represents.
  /// The supported values: 'APP_TYPE_UNSPECIFIED', 'APP_TYPE_INTRANET'.
  final pulumi.Input<String>? appType;

  /// The collection ID.
  final pulumi.Input<String> collectionId;

  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  final pulumi.Input<SearchEngineCommonConfig>? commonConfig;

  /// The data stores associated with this engine. For SOLUTION_TYPE_SEARCH type of engines, they can only associate with at most one data store.
  final pulumi.Input<List<String>> dataStoreIds;

  /// Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String> displayName;

  /// Unique ID to use for Search Engine App.
  final pulumi.Input<String> engineId;

  /// A map of the feature config for the engine to opt in or opt out of features.
  final pulumi.Input<Map<String, String>>? features;

  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// Default value is `GENERIC`.
  /// Possible values are: `GENERIC`, `MEDIA`, `HEALTHCARE_FHIR`.
  final pulumi.Input<String>? industryVertical;

  /// The KMS key to be used to protect this Engine at creation time.
  /// Must be set for requests that need to comply with CMEK Org Policy
  /// protections.
  /// If this field is set and processed successfully, the Engine will be
  /// protected by the KMS key, as indicated in the cmek_config field.
  final pulumi.Input<String>? kmsKeyName;

  /// Location.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Configurations for a Search Engine.
  /// Structure is documented below.
  final pulumi.Input<SearchEngineSearchEngineConfig> searchEngineConfig;

  /// Creates a new [SearchEngineArgs].
  /// [appType] This is the application type this engine resource represents.
  /// [collectionId] The collection ID.
  /// [commonConfig] Common config spec that specifies the metadata of the engine.
  /// [dataStoreIds] The data stores associated with this engine. For SOLUTION_TYPE_SEARCH type of engines, they can only associate with at most one data store.
  /// [displayName] Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  /// [engineId] Unique ID to use for Search Engine App.
  /// [features] A map of the feature config for the engine to opt in or opt out of features.
  /// [industryVertical] The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// [kmsKeyName] The KMS key to be used to protect this Engine at creation time.
  /// [location] Location.
  /// [project] The ID of the project in which the resource belongs.
  /// [searchEngineConfig] Configurations for a Search Engine.
  SearchEngineArgs({
    String? appType,
    required String collectionId,
    SearchEngineCommonConfig? commonConfig,
    required List<String> dataStoreIds,
    required String displayName,
    required String engineId,
    Map<String, String>? features,
    String? industryVertical,
    String? kmsKeyName,
    required String location,
    String? project,
    required SearchEngineSearchEngineConfig searchEngineConfig,
  })  : appType = pulumi.Input.asOptionalInput<String>(appType),
        collectionId = pulumi.Input.asInput<String>(collectionId),
        commonConfig = pulumi.Input.asOptionalInput<SearchEngineCommonConfig>(
            commonConfig),
        dataStoreIds = pulumi.Input.asInput<List<String>>(dataStoreIds),
        displayName = pulumi.Input.asInput<String>(displayName),
        engineId = pulumi.Input.asInput<String>(engineId),
        features = pulumi.Input.asOptionalInput<Map<String, String>>(features),
        industryVertical =
            pulumi.Input.asOptionalInput<String>(industryVertical),
        kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        searchEngineConfig =
            pulumi.Input.asInput<SearchEngineSearchEngineConfig>(
                searchEngineConfig);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appTypeValue = appType;
    if (appTypeValue != null) {
      map['appType'] = appTypeValue;
    }
    map['collectionId'] = collectionId;
    final commonConfigValue = commonConfig;
    if (commonConfigValue != null) {
      map['commonConfig'] = pulumi.Input.mapOptionalInputValue<
          SearchEngineCommonConfig,
          Map<String, dynamic>>(commonConfigValue, (value) => value.toMap());
    }
    map['dataStoreIds'] = dataStoreIds;
    map['displayName'] = displayName;
    map['engineId'] = engineId;
    final featuresValue = features;
    if (featuresValue != null) {
      map['features'] = featuresValue;
    }
    final industryVerticalValue = industryVertical;
    if (industryVerticalValue != null) {
      map['industryVertical'] = industryVerticalValue;
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['searchEngineConfig'] = pulumi.Input.mapInputValue<
        SearchEngineSearchEngineConfig,
        Map<String, dynamic>>(searchEngineConfig, (value) => value.toMap());
    return map;
  }

  factory SearchEngineArgs.fromMap(Map<String, dynamic> map) {
    return SearchEngineArgs(
      appType: map['appType'] == null ? null : map['appType'] as String,
      collectionId: map['collectionId'] as String,
      commonConfig: map['commonConfig'] == null
          ? null
          : SearchEngineCommonConfig.fromMap(
              (map['commonConfig'] as Map).cast<String, dynamic>()),
      dataStoreIds: (map['dataStoreIds'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      engineId: map['engineId'] as String,
      features: map['features'] == null
          ? null
          : (map['features'] as Map).cast<String, String>(),
      industryVertical: map['industryVertical'] == null
          ? null
          : map['industryVertical'] as String,
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      searchEngineConfig: SearchEngineSearchEngineConfig.fromMap(
          (map['searchEngineConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
