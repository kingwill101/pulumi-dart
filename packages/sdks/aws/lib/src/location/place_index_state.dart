// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'place_index_data_source_configuration.dart';

/// Input properties used for looking up and filtering PlaceIndex resources.
class PlaceIndexState {
  /// The timestamp for when the place index resource was created in ISO 8601 format.
  final pulumi.Input<String>? createTime;

  /// Specifies the geospatial data provider for the new place index.
  final pulumi.Input<String>? dataSource;

  /// Configuration block with the data storage option chosen for requesting Places. Detailed below.
  final pulumi.Input<PlaceIndexDataSourceConfiguration>?
  dataSourceConfiguration;

  /// The optional description for the place index resource.
  final pulumi.Input<String>? description;

  /// The Amazon Resource Name (ARN) for the place index resource. Used to specify a resource across AWS.
  final pulumi.Input<String>? indexArn;

  /// The name of the place index resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? indexName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// The timestamp for when the place index resource was last update in ISO 8601.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [PlaceIndexState].
  /// [createTime] The timestamp for when the place index resource was created in ISO 8601 format.
  /// [dataSource] Specifies the geospatial data provider for the new place index.
  /// [dataSourceConfiguration] Configuration block with the data storage option chosen for requesting Places. Detailed below.
  /// [description] The optional description for the place index resource.
  /// [indexArn] The Amazon Resource Name (ARN) for the place index resource. Used to specify a resource across AWS.
  /// [indexName] The name of the place index resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [updateTime] The timestamp for when the place index resource was last update in ISO 8601.
  PlaceIndexState({
    this.createTime,
    this.dataSource,
    this.dataSourceConfiguration,
    this.description,
    this.indexArn,
    this.indexName,
    this.region,
    this.tags,
    this.tagsAll,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataSource': ?dataSource,
      'dataSourceConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            PlaceIndexDataSourceConfiguration,
            Map<String, dynamic>
          >(dataSourceConfiguration, (value) => value.toMap()),
      'description': ?description,
      'indexArn': ?indexArn,
      'indexName': ?indexName,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'updateTime': ?updateTime,
    };
  }

  factory PlaceIndexState.fromMap(Map<String, dynamic> map) {
    return PlaceIndexState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataSource: (() {
        final guardedValue = map['dataSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataSourceConfiguration: (() {
        final guardedValue = map['dataSourceConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PlaceIndexDataSourceConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      indexArn: (() {
        final guardedValue = map['indexArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      indexName: (() {
        final guardedValue = map['indexName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
