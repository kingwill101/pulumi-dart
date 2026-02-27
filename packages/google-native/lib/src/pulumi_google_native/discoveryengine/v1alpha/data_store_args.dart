// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_store_content_config.dart';
import 'data_store_industry_vertical.dart';
import 'data_store_solution_types_item.dart';

/// The set of arguments for DataStore.
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

  DataStoreArgs({
    required this.collectionId,
    this.contentConfig,
    this.createAdvancedSiteSearch,
    required this.dataStoreId,
    required this.displayName,
    this.industryVertical,
    this.location,
    this.name,
    this.project,
    this.solutionTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionId'] = collectionId;
    final contentConfigValue = contentConfig;
    if (contentConfigValue != null) {
      map['contentConfig'] =
          pulumi.Input.mapOptionalInputValue<DataStoreContentConfig, String>(
              contentConfigValue, (value) => value.value);
    }
    final createAdvancedSiteSearchValue = createAdvancedSiteSearch;
    if (createAdvancedSiteSearchValue != null) {
      map['createAdvancedSiteSearch'] = createAdvancedSiteSearchValue;
    }
    map['dataStoreId'] = dataStoreId;
    map['displayName'] = displayName;
    final industryVerticalValue = industryVertical;
    if (industryVerticalValue != null) {
      map['industryVertical'] =
          pulumi.Input.mapOptionalInputValue<DataStoreIndustryVertical, String>(
              industryVerticalValue, (value) => value.value);
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final solutionTypesValue = solutionTypes;
    if (solutionTypesValue != null) {
      map['solutionTypes'] = pulumi.Input.mapOptionalInputValue<
              List<DataStoreSolutionTypesItem>, List<String>>(
          solutionTypesValue,
          (value) =>
              pulumi.Input.encodeList<DataStoreSolutionTypesItem, String>(
                  value, (value) => value.value));
    }
    return map;
  }

  factory DataStoreArgs.fromMap(Map<String, dynamic> map) {
    return DataStoreArgs(
      collectionId: pulumi.Input.asInput<String>(map['collectionId']),
      contentConfig: pulumi.Input.asOptionalInput<DataStoreContentConfig>(
          map['contentConfig']),
      createAdvancedSiteSearch:
          pulumi.Input.asOptionalInput<bool>(map['createAdvancedSiteSearch']),
      dataStoreId: pulumi.Input.asInput<String>(map['dataStoreId']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      industryVertical: pulumi.Input.asOptionalInput<DataStoreIndustryVertical>(
          map['industryVertical']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      solutionTypes:
          pulumi.Input.asOptionalInput<List<DataStoreSolutionTypesItem>>(
              map['solutionTypes']),
    );
  }
}
