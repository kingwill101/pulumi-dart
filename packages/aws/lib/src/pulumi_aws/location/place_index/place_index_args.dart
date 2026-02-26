// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../place_index_data_source_configuration/place_index_data_source_configuration.dart';

/// The set of arguments for PlaceIndex.
class PlaceIndexArgs {
  /// Specifies the geospatial data provider for the new place index.
  final Input<String> dataSource;

  /// Configuration block with the data storage option chosen for requesting Places. Detailed below.
  final Input<PlaceIndexDataSourceConfiguration>? dataSourceConfiguration;

  /// The optional description for the place index resource.
  final Input<String>? description;

  /// The name of the place index resource.
  ///
  /// The following arguments are optional:
  final Input<String> indexName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value tags for the place index. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      map['dataSourceConfiguration'] = Input.mapOptionalInputValue<
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
      dataSource: Input.asInput<String>(map['dataSource']),
      dataSourceConfiguration:
          Input.asOptionalInput<PlaceIndexDataSourceConfiguration>(
              map['dataSourceConfiguration']),
      description: Input.asOptionalInput<String>(map['description']),
      indexName: Input.asInput<String>(map['indexName']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
