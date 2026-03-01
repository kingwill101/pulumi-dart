// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_store_content_config.dart';
import 'data_store_industry_vertical.dart';
import 'data_store_solution_types_item.dart';

/// {@template pulumi_discoveryengine_v1alpha_data_store_args_doc}
/// The set of arguments for DataStore.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1alpha_data_store_args_doc}
class DataStoreArgs {
  final pulumi.Input<String> collectionId;

  /// Immutable. The content config of the data store. If this field is unset, the server behavior defaults to ContentConfig.NO_CONTENT.
  final pulumi.Input<DataStoreContentConfig>? contentConfig;

  /// A boolean flag indicating whether user want to directly create an advanced data store for site search. If the data store is not configured as site search (GENERIC vertical and PUBLIC_WEBSITE content_config), this flag will be ignored.
  final pulumi.Input<bool>? createAdvancedSiteSearch;

  /// Required. The ID to use for the DataStore, which will become the final component of the DataStore's resource name. This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  final pulumi.Input<String> dataStoreId;

  /// The data store display name. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  final pulumi.Input<String> displayName;

  /// Immutable. The industry vertical that the data store registers.
  final pulumi.Input<DataStoreIndustryVertical>? industryVertical;
  final pulumi.Input<String>? location;

  /// Immutable. The full resource name of the data store. Format: `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The solutions that the data store enrolls. Available solutions for each industry_vertical: * `MEDIA`: `SOLUTION_TYPE_RECOMMENDATION` and `SOLUTION_TYPE_SEARCH`. * `SITE_SEARCH`: `SOLUTION_TYPE_SEARCH` is automatically enrolled. Other solutions cannot be enrolled.
  final pulumi.Input<List<DataStoreSolutionTypesItem>>? solutionTypes;

  /// Creates a new [DataStoreArgs].
  /// [collectionId] Required.
  /// [contentConfig] Immutable. The content config of the data store. If this field is unset, the server behavior defaults to ContentConfig.NO_CONTENT.
  /// [createAdvancedSiteSearch] A boolean flag indicating whether user want to directly create an advanced data store for site search. If the data store is not configured as site search (GENERIC vertical and PUBLIC_WEBSITE content_config), this flag will be ignored.
  /// [dataStoreId] Required. The ID to use for the DataStore, which will become the final component of the DataStore's resource name. This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// [displayName] The data store display name. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// [industryVertical] Immutable. The industry vertical that the data store registers.
  /// [location] Optional.
  /// [name] Immutable. The full resource name of the data store. Format: `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  /// [project] Optional.
  /// [solutionTypes] The solutions that the data store enrolls. Available solutions for each industry_vertical: * `MEDIA`: `SOLUTION_TYPE_RECOMMENDATION` and `SOLUTION_TYPE_SEARCH`. * `SITE_SEARCH`: `SOLUTION_TYPE_SEARCH` is automatically enrolled. Other solutions cannot be enrolled.
  DataStoreArgs({
    required String collectionId,
    DataStoreContentConfig? contentConfig,
    bool? createAdvancedSiteSearch,
    required String dataStoreId,
    required String displayName,
    DataStoreIndustryVertical? industryVertical,
    String? location,
    String? name,
    String? project,
    List<DataStoreSolutionTypesItem>? solutionTypes,
  }) : collectionId = pulumi.Input.asInput<String>(collectionId),
       contentConfig = pulumi.Input.asOptionalInput<DataStoreContentConfig>(
         contentConfig,
       ),
       createAdvancedSiteSearch = pulumi.Input.asOptionalInput<bool>(
         createAdvancedSiteSearch,
       ),
       dataStoreId = pulumi.Input.asInput<String>(dataStoreId),
       displayName = pulumi.Input.asInput<String>(displayName),
       industryVertical = pulumi
           .Input.asOptionalInput<DataStoreIndustryVertical>(industryVertical),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       solutionTypes =
           pulumi.Input.asOptionalInput<List<DataStoreSolutionTypesItem>>(
             solutionTypes,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'contentConfig':
          ?pulumi.Input.mapOptionalInputValue<DataStoreContentConfig, String>(
            contentConfig,
            (value) => value.value,
          ),
      'createAdvancedSiteSearch': ?createAdvancedSiteSearch,
      'dataStoreId': dataStoreId,
      'displayName': displayName,
      'industryVertical':
          ?pulumi.Input.mapOptionalInputValue<
            DataStoreIndustryVertical,
            String
          >(industryVertical, (value) => value.value),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'solutionTypes':
          ?pulumi.Input.mapOptionalInputValue<
            List<DataStoreSolutionTypesItem>,
            List<String>
          >(
            solutionTypes,
            (value) =>
                pulumi.Input.encodeList<DataStoreSolutionTypesItem, String>(
                  value,
                  (value) => value.value,
                ),
          ),
    };
  }

  factory DataStoreArgs.fromMap(Map<String, dynamic> map) {
    return DataStoreArgs(
      collectionId: map['collectionId'] as String,
      contentConfig: map['contentConfig'] == null
          ? null
          : DataStoreContentConfig.fromValue(map['contentConfig'] as String),
      createAdvancedSiteSearch: map['createAdvancedSiteSearch'] == null
          ? null
          : map['createAdvancedSiteSearch'] as bool,
      dataStoreId: map['dataStoreId'] as String,
      displayName: map['displayName'] as String,
      industryVertical: map['industryVertical'] == null
          ? null
          : DataStoreIndustryVertical.fromValue(
              map['industryVertical'] as String,
            ),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      solutionTypes: map['solutionTypes'] == null
          ? null
          : pulumi.Input.decodeList<DataStoreSolutionTypesItem>(
              map['solutionTypes'],
              (value) => DataStoreSolutionTypesItem.fromValue(value as String),
            ),
    );
  }
}
