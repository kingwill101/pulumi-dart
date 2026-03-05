// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_place_index_data_source_configuration.dart';

/// Result data returned by getPlaceIndex.
class GetPlaceIndexResult {
  /// Timestamp for when the place index resource was created in ISO 8601 format.
  final String createTime;
  /// Data provider of geospatial data.
  final String dataSource;
  /// List of configurations that specify data storage option for requesting Places.
  final List<GetPlaceIndexDataSourceConfiguration> dataSourceConfigurations;
  /// Optional description for the place index resource.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// ARN for the place index resource.
  final String indexArn;
  final String indexName;
  final String region;
  /// Key-value map of resource tags for the place index.
  final Map<String, String> tags;
  /// Timestamp for when the place index resource was last updated in ISO 8601 format.
  final String updateTime;

  /// Creates a new [GetPlaceIndexResult].
  /// [createTime] Timestamp for when the place index resource was created in ISO 8601 format.
  /// [dataSource] Data provider of geospatial data.
  /// [dataSourceConfigurations] List of configurations that specify data storage option for requesting Places.
  /// [description] Optional description for the place index resource.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [indexArn] ARN for the place index resource.
  /// [indexName] Required.
  /// [region] Required.
  /// [tags] Key-value map of resource tags for the place index.
  /// [updateTime] Timestamp for when the place index resource was last updated in ISO 8601 format.
  GetPlaceIndexResult({
    required this.createTime,
    required this.dataSource,
    required this.dataSourceConfigurations,
    required this.description,
    required this.id,
    required this.indexArn,
    required this.indexName,
    required this.region,
    required this.tags,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dataSource': dataSource,
      'dataSourceConfigurations': pulumi.Input.encodeList<GetPlaceIndexDataSourceConfiguration, Map<String, dynamic>>(dataSourceConfigurations, (value) => value.toMap()),
      'description': description,
      'id': id,
      'indexArn': indexArn,
      'indexName': indexName,
      'region': region,
      'tags': tags,
      'updateTime': updateTime,
    };
  }

  factory GetPlaceIndexResult.fromMap(Map<String, dynamic> map) {
    return GetPlaceIndexResult(
      createTime: map['createTime'] as String,
      dataSource: map['dataSource'] as String,
      dataSourceConfigurations: pulumi.Input.decodeList<GetPlaceIndexDataSourceConfiguration>(map['dataSourceConfigurations']!, (value) => GetPlaceIndexDataSourceConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      id: map['id'] as String,
      indexArn: map['indexArn'] as String,
      indexName: map['indexName'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      updateTime: map['updateTime'] as String,
    );
  }
}

