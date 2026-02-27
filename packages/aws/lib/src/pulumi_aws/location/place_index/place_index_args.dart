// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../place_index_data_source_configuration/place_index_data_source_configuration.dart';

/// The set of arguments for PlaceIndex.
class PlaceIndexArgs {
  /// Specifies the geospatial data provider for the new place index.
  final pulumi.Input<String> dataSource;

  /// Configuration block with the data storage option chosen for requesting Places. Detailed below.
  final pulumi.Input<PlaceIndexDataSourceConfiguration>?
      dataSourceConfiguration;

  /// The optional description for the place index resource.
  final pulumi.Input<String>? description;

  /// The name of the place index resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> indexName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  PlaceIndexArgs({
    required this.dataSource,
    this.dataSourceConfiguration,
    this.description,
    required this.indexName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataSource'] = dataSource;
    final dataSourceConfigurationValue = dataSourceConfiguration;
    if (dataSourceConfigurationValue != null) {
      map['dataSourceConfiguration'] = pulumi.Input.mapOptionalInputValue<
              PlaceIndexDataSourceConfiguration, Map<String, dynamic>>(
          dataSourceConfigurationValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['indexName'] = indexName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory PlaceIndexArgs.fromMap(Map<String, dynamic> map) {
    return PlaceIndexArgs(
      dataSource: pulumi.Input.asInput<String>(map['dataSource']),
      dataSourceConfiguration:
          pulumi.Input.asOptionalInput<PlaceIndexDataSourceConfiguration>(
              map['dataSourceConfiguration']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      indexName: pulumi.Input.asInput<String>(map['indexName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
