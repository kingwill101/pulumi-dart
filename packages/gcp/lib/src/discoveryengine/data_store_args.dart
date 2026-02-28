// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_store_advanced_site_search_config.dart';
import 'data_store_document_processing_config.dart';

/// {@template pulumi_discoveryengine_data_store_data_store_args_doc}
/// The set of arguments for DataStore.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_data_store_data_store_args_doc}
class DataStoreArgs {
  /// Configuration data for advance site search.
  /// Structure is documented below.
  final pulumi.Input<DataStoreAdvancedSiteSearchConfig>?
      advancedSiteSearchConfig;

  /// The content config of the data store.
  /// Possible values are: `NO_CONTENT`, `CONTENT_REQUIRED`, `PUBLIC_WEBSITE`.
  final pulumi.Input<String> contentConfig;

  /// If true, an advanced data store for site search will be created. If the
  /// data store is not configured as site search (GENERIC vertical and
  /// PUBLIC_WEBSITE contentConfig), this flag will be ignored.
  final pulumi.Input<bool>? createAdvancedSiteSearch;

  /// The unique id of the data store.
  final pulumi.Input<String> dataStoreId;

  /// The display name of the data store. This field must be a UTF-8 encoded
  /// string with a length limit of 128 characters.
  final pulumi.Input<String> displayName;

  /// Configuration for Document understanding and enrichment.
  /// Structure is documented below.
  final pulumi.Input<DataStoreDocumentProcessingConfig>?
      documentProcessingConfig;

  /// The industry vertical that the data store registers.
  /// Possible values are: `GENERIC`, `MEDIA`, `HEALTHCARE_FHIR`.
  final pulumi.Input<String> industryVertical;

  /// KMS key resource name which will be used to encrypt resources:
  /// `/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}`
  /// The KMS key to be used to protect this DataStore at creation time. Must be
  /// set for requests that need to comply with CMEK Org Policy protections.
  /// If this field is set and processed successfully, the DataStore will be
  /// protected by the KMS key, as indicated in the cmek_config field.
  final pulumi.Input<String>? kmsKeyName;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A boolean flag indicating whether to skip the default schema creation for
  /// the data store. Only enable this flag if you are certain that the default
  /// schema is incompatible with your use case.
  /// If set to true, you must manually create a schema for the data store
  /// before any documents can be ingested.
  /// This flag cannot be specified if `data_store.starting_schema` is
  /// specified.
  final pulumi.Input<bool>? skipDefaultSchemaCreation;

  /// The solutions that the data store enrolls.
  /// Each value may be one of: `SOLUTION_TYPE_RECOMMENDATION`, `SOLUTION_TYPE_SEARCH`, `SOLUTION_TYPE_CHAT`, `SOLUTION_TYPE_GENERATIVE_CHAT`.
  final pulumi.Input<List<String>>? solutionTypes;

  /// Creates a new [DataStoreArgs].
  /// [advancedSiteSearchConfig] Configuration data for advance site search.
  /// [contentConfig] The content config of the data store.
  /// [createAdvancedSiteSearch] If true, an advanced data store for site search will be created. If the
  /// [dataStoreId] The unique id of the data store.
  /// [displayName] The display name of the data store. This field must be a UTF-8 encoded
  /// [documentProcessingConfig] Configuration for Document understanding and enrichment.
  /// [industryVertical] The industry vertical that the data store registers.
  /// [kmsKeyName] KMS key resource name which will be used to encrypt resources:
  /// [location] The geographic location where the data store should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [skipDefaultSchemaCreation] A boolean flag indicating whether to skip the default schema creation for
  /// [solutionTypes] The solutions that the data store enrolls.
  DataStoreArgs({
    DataStoreAdvancedSiteSearchConfig? advancedSiteSearchConfig,
    required String contentConfig,
    bool? createAdvancedSiteSearch,
    required String dataStoreId,
    required String displayName,
    DataStoreDocumentProcessingConfig? documentProcessingConfig,
    required String industryVertical,
    String? kmsKeyName,
    required String location,
    String? project,
    bool? skipDefaultSchemaCreation,
    List<String>? solutionTypes,
  })  : advancedSiteSearchConfig =
            pulumi.Input.asOptionalInput<DataStoreAdvancedSiteSearchConfig>(
                advancedSiteSearchConfig),
        contentConfig = pulumi.Input.asInput<String>(contentConfig),
        createAdvancedSiteSearch =
            pulumi.Input.asOptionalInput<bool>(createAdvancedSiteSearch),
        dataStoreId = pulumi.Input.asInput<String>(dataStoreId),
        displayName = pulumi.Input.asInput<String>(displayName),
        documentProcessingConfig =
            pulumi.Input.asOptionalInput<DataStoreDocumentProcessingConfig>(
                documentProcessingConfig),
        industryVertical = pulumi.Input.asInput<String>(industryVertical),
        kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        skipDefaultSchemaCreation =
            pulumi.Input.asOptionalInput<bool>(skipDefaultSchemaCreation),
        solutionTypes =
            pulumi.Input.asOptionalInput<List<String>>(solutionTypes);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedSiteSearchConfigValue = advancedSiteSearchConfig;
    if (advancedSiteSearchConfigValue != null) {
      map['advancedSiteSearchConfig'] = pulumi.Input.mapOptionalInputValue<
              DataStoreAdvancedSiteSearchConfig, Map<String, dynamic>>(
          advancedSiteSearchConfigValue, (value) => value.toMap());
    }
    map['contentConfig'] = contentConfig;
    final createAdvancedSiteSearchValue = createAdvancedSiteSearch;
    if (createAdvancedSiteSearchValue != null) {
      map['createAdvancedSiteSearch'] = createAdvancedSiteSearchValue;
    }
    map['dataStoreId'] = dataStoreId;
    map['displayName'] = displayName;
    final documentProcessingConfigValue = documentProcessingConfig;
    if (documentProcessingConfigValue != null) {
      map['documentProcessingConfig'] = pulumi.Input.mapOptionalInputValue<
              DataStoreDocumentProcessingConfig, Map<String, dynamic>>(
          documentProcessingConfigValue, (value) => value.toMap());
    }
    map['industryVertical'] = industryVertical;
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final skipDefaultSchemaCreationValue = skipDefaultSchemaCreation;
    if (skipDefaultSchemaCreationValue != null) {
      map['skipDefaultSchemaCreation'] = skipDefaultSchemaCreationValue;
    }
    final solutionTypesValue = solutionTypes;
    if (solutionTypesValue != null) {
      map['solutionTypes'] = solutionTypesValue;
    }
    return map;
  }

  factory DataStoreArgs.fromMap(Map<String, dynamic> map) {
    return DataStoreArgs(
      advancedSiteSearchConfig: map['advancedSiteSearchConfig'] == null
          ? null
          : DataStoreAdvancedSiteSearchConfig.fromMap(
              (map['advancedSiteSearchConfig'] as Map).cast<String, dynamic>()),
      contentConfig: map['contentConfig'] as String,
      createAdvancedSiteSearch: map['createAdvancedSiteSearch'] == null
          ? null
          : map['createAdvancedSiteSearch'] as bool,
      dataStoreId: map['dataStoreId'] as String,
      displayName: map['displayName'] as String,
      documentProcessingConfig: map['documentProcessingConfig'] == null
          ? null
          : DataStoreDocumentProcessingConfig.fromMap(
              (map['documentProcessingConfig'] as Map).cast<String, dynamic>()),
      industryVertical: map['industryVertical'] as String,
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      skipDefaultSchemaCreation: map['skipDefaultSchemaCreation'] == null
          ? null
          : map['skipDefaultSchemaCreation'] as bool,
      solutionTypes: map['solutionTypes'] == null
          ? null
          : (map['solutionTypes'] as List).cast<String>(),
    );
  }
}
