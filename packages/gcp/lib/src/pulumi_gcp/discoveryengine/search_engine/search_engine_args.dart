// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../search_engine_common_config/search_engine_common_config.dart';
import '../search_engine_search_engine_config/search_engine_search_engine_config.dart';

/// The set of arguments for SearchEngine.
class SearchEngineArgs {
  /// This is the application type this engine resource represents.
  /// The supported values: 'APP_TYPE_UNSPECIFIED', 'APP_TYPE_INTRANET'.
  final Input<String>? appType;

  /// The collection ID.
  final Input<String> collectionId;

  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  final Input<SearchEngineCommonConfig>? commonConfig;

  /// The data stores associated with this engine. For SOLUTION_TYPE_SEARCH type of engines, they can only associate with at most one data store.
  final Input<List<String>> dataStoreIds;

  /// Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  final Input<String> displayName;

  /// Unique ID to use for Search Engine App.
  final Input<String> engineId;

  /// A map of the feature config for the engine to opt in or opt out of features.
  final Input<Map<String, String>>? features;

  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// Default value is `GENERIC`.
  /// Possible values are: `GENERIC`, `MEDIA`, `HEALTHCARE_FHIR`.
  final Input<String>? industryVertical;

  /// The KMS key to be used to protect this Engine at creation time.
  /// Must be set for requests that need to comply with CMEK Org Policy
  /// protections.
  /// If this field is set and processed successfully, the Engine will be
  /// protected by the KMS key, as indicated in the<span pulumi-lang-nodejs=" cmekConfig " pulumi-lang-dotnet=" CmekConfig " pulumi-lang-go=" cmekConfig " pulumi-lang-python=" cmek_config " pulumi-lang-yaml=" cmekConfig " pulumi-lang-java=" cmekConfig "> cmek_config </span>field.
  final Input<String>? kmsKeyName;

  /// Location.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Configurations for a Search Engine.
  /// Structure is documented below.
  final Input<SearchEngineSearchEngineConfig> searchEngineConfig;

  SearchEngineArgs({
    this.appType,
    required this.collectionId,
    this.commonConfig,
    required this.dataStoreIds,
    required this.displayName,
    required this.engineId,
    this.features,
    this.industryVertical,
    this.kmsKeyName,
    required this.location,
    this.project,
    required this.searchEngineConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appTypeValue = appType;
    if (appTypeValue != null) {
      map['appType'] = appTypeValue;
    }
    map['collectionId'] = collectionId;
    final commonConfigValue = commonConfig;
    if (commonConfigValue != null) {
      map['commonConfig'] = Input.mapOptionalInputValue<
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
    map['searchEngineConfig'] = Input.mapInputValue<
        SearchEngineSearchEngineConfig,
        Map<String, dynamic>>(searchEngineConfig, (value) => value.toMap());
    return map;
  }

  factory SearchEngineArgs.fromMap(Map<String, dynamic> map) {
    return SearchEngineArgs(
      appType: Input.asOptionalInput<String>(map['appType']),
      collectionId: Input.asInput<String>(map['collectionId']),
      commonConfig:
          Input.asOptionalInput<SearchEngineCommonConfig>(map['commonConfig']),
      dataStoreIds: Input.asInput<List<String>>(map['dataStoreIds']),
      displayName: Input.asInput<String>(map['displayName']),
      engineId: Input.asInput<String>(map['engineId']),
      features: Input.asOptionalInput<Map<String, String>>(map['features']),
      industryVertical: Input.asOptionalInput<String>(map['industryVertical']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      searchEngineConfig: Input.asInput<SearchEngineSearchEngineConfig>(
          map['searchEngineConfig']),
    );
  }
}
