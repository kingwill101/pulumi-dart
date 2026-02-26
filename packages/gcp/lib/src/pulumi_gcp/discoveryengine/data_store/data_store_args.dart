// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_store_advanced_site_search_config/data_store_advanced_site_search_config.dart';
import '../data_store_document_processing_config/data_store_document_processing_config.dart';

/// The set of arguments for DataStore.
class DataStoreArgs {
  /// Configuration data for advance site search.
  /// Structure is documented below.
  final Input<DataStoreAdvancedSiteSearchConfig>? advancedSiteSearchConfig;

  /// The content config of the data store.
  /// Possible values are: `NO_CONTENT`, `CONTENT_REQUIRED`, `PUBLIC_WEBSITE`.
  final Input<String> contentConfig;

  /// If true, an advanced data store for site search will be created. If the
  /// data store is not configured as site search (GENERIC vertical and
  /// PUBLIC_WEBSITE contentConfig), this flag will be ignored.
  final Input<bool>? createAdvancedSiteSearch;

  /// The unique id of the data store.
  final Input<String> dataStoreId;

  /// The display name of the data store. This field must be a UTF-8 encoded
  /// string with a length limit of 128 characters.
  final Input<String> displayName;

  /// Configuration for Document understanding and enrichment.
  /// Structure is documented below.
  final Input<DataStoreDocumentProcessingConfig>? documentProcessingConfig;

  /// The industry vertical that the data store registers.
  /// Possible values are: `GENERIC`, `MEDIA`, `HEALTHCARE_FHIR`.
  final Input<String> industryVertical;

  /// KMS key resource name which will be used to encrypt resources:
  /// `/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}`
  /// The KMS key to be used to protect this DataStore at creation time. Must be
  /// set for requests that need to comply with CMEK Org Policy protections.
  /// If this field is set and processed successfully, the DataStore will be
  /// protected by the KMS key, as indicated in the<span pulumi-lang-nodejs=" cmekConfig " pulumi-lang-dotnet=" CmekConfig " pulumi-lang-go=" cmekConfig " pulumi-lang-python=" cmek_config " pulumi-lang-yaml=" cmekConfig " pulumi-lang-java=" cmekConfig "> cmek_config </span>field.
  final Input<String>? kmsKeyName;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A boolean flag indicating whether to skip the default schema creation for
  /// the data store. Only enable this flag if you are certain that the default
  /// schema is incompatible with your use case.
  /// If set to true, you must manually create a schema for the data store
  /// before any documents can be ingested.
  /// This flag cannot be specified if `data_store.starting_schema` is
  /// specified.
  final Input<bool>? skipDefaultSchemaCreation;

  /// The solutions that the data store enrolls.
  /// Each value may be one of: `SOLUTION_TYPE_RECOMMENDATION`, `SOLUTION_TYPE_SEARCH`, `SOLUTION_TYPE_CHAT`, `SOLUTION_TYPE_GENERATIVE_CHAT`.
  final Input<List<String>>? solutionTypes;

  DataStoreArgs({
    this.advancedSiteSearchConfig,
    required this.contentConfig,
    this.createAdvancedSiteSearch,
    required this.dataStoreId,
    required this.displayName,
    this.documentProcessingConfig,
    required this.industryVertical,
    this.kmsKeyName,
    required this.location,
    this.project,
    this.skipDefaultSchemaCreation,
    this.solutionTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedSiteSearchConfigValue = advancedSiteSearchConfig;
    if (advancedSiteSearchConfigValue != null) {
      map['advancedSiteSearchConfig'] = Input.mapOptionalInputValue<
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
      map['documentProcessingConfig'] = Input.mapOptionalInputValue<
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
      advancedSiteSearchConfig:
          Input.asOptionalInput<DataStoreAdvancedSiteSearchConfig>(
              map['advancedSiteSearchConfig']),
      contentConfig: Input.asInput<String>(map['contentConfig']),
      createAdvancedSiteSearch:
          Input.asOptionalInput<bool>(map['createAdvancedSiteSearch']),
      dataStoreId: Input.asInput<String>(map['dataStoreId']),
      displayName: Input.asInput<String>(map['displayName']),
      documentProcessingConfig:
          Input.asOptionalInput<DataStoreDocumentProcessingConfig>(
              map['documentProcessingConfig']),
      industryVertical: Input.asInput<String>(map['industryVertical']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      skipDefaultSchemaCreation:
          Input.asOptionalInput<bool>(map['skipDefaultSchemaCreation']),
      solutionTypes: Input.asOptionalInput<List<String>>(map['solutionTypes']),
    );
  }
}
