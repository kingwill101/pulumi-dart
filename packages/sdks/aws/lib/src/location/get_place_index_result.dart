// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_place_index_data_source_configuration.dart';

/// Result data returned by getPlaceIndex.
class GetPlaceIndexResult {
  /// Timestamp for when the place index resource was created in ISO 8601 format.
  final String? createTime;
  /// Data provider of geospatial data.
  final String? dataSource;
  /// List of configurations that specify data storage option for requesting Places.
  final List<GetPlaceIndexDataSourceConfiguration>? dataSourceConfigurations;
  /// Optional description for the place index resource.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ARN for the place index resource.
  final String? indexArn;
  final String? indexName;
  final String? region;
  /// Key-value map of resource tags for the place index.
  final Map<String, String>? tags;
  /// Timestamp for when the place index resource was last updated in ISO 8601 format.
  final String? updateTime;

  /// Creates a new [GetPlaceIndexResult].
  /// [createTime] Timestamp for when the place index resource was created in ISO 8601 format.
  /// [dataSource] Data provider of geospatial data.
  /// [dataSourceConfigurations] List of configurations that specify data storage option for requesting Places.
  /// [description] Optional description for the place index resource.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [indexArn] ARN for the place index resource.
  /// [indexName] Optional.
  /// [region] Optional.
  /// [tags] Key-value map of resource tags for the place index.
  /// [updateTime] Timestamp for when the place index resource was last updated in ISO 8601 format.
  const GetPlaceIndexResult({
    this.createTime,
    this.dataSource,
    this.dataSourceConfigurations,
    this.description,
    this.id,
    this.indexArn,
    this.indexName,
    this.region,
    this.tags,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataSource': ?dataSource,
      'dataSourceConfigurations': ?(() { final guardedValue = dataSourceConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPlaceIndexDataSourceConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'id': ?id,
      'indexArn': ?indexArn,
      'indexName': ?indexName,
      'region': ?region,
      'tags': ?tags,
      'updateTime': ?updateTime,
    };
  }

  factory GetPlaceIndexResult.fromMap(Map<String, dynamic> map) {
    return GetPlaceIndexResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSourceConfigurations: (() { final guardedValue = map['dataSourceConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPlaceIndexDataSourceConfiguration>(guardedValue, (value) => GetPlaceIndexDataSourceConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      indexArn: (() { final guardedValue = map['indexArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      indexName: (() { final guardedValue = map['indexName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
