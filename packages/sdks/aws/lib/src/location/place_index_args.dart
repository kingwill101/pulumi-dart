// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'place_index_data_source_configuration.dart';

/// {@template pulumi_location_place_index_place_index_args_doc}
/// The set of arguments for PlaceIndex.
/// {@endtemplate}
/// {@macro pulumi_location_place_index_place_index_args_doc}
class PlaceIndexArgs {
  /// Geospatial data provider for the new place index.
  final pulumi.Input<String> dataSource;
  /// Configuration block with the data storage option chosen for requesting Places. Detailed below.
  final pulumi.Input<PlaceIndexDataSourceConfiguration?>? dataSourceConfiguration;
  /// Optional description for the place index resource.
  final pulumi.Input<String?>? description;
  /// Name of the place index resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> indexName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value tags for the place index. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [PlaceIndexArgs].
  /// [dataSource] Geospatial data provider for the new place index.
  /// [dataSourceConfiguration] Configuration block with the data storage option chosen for requesting Places. Detailed below.
  /// [description] Optional description for the place index resource.
  /// [indexName] Name of the place index resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the place index. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const PlaceIndexArgs({
    required this.dataSource,
    this.dataSourceConfiguration,
    this.description,
    required this.indexName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSource': dataSource,
      'dataSourceConfiguration': ?pulumi.Input.mapOptionalInputValue<PlaceIndexDataSourceConfiguration, Map<String, dynamic>>(dataSourceConfiguration, (value) => value.toMap()),
      'description': ?description,
      'indexName': indexName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory PlaceIndexArgs.fromMap(Map<String, dynamic> map) {
    return PlaceIndexArgs(
      dataSource: pulumi.Input.fromValue(map['dataSource'] as String),
      dataSourceConfiguration: (() { final guardedValue = map['dataSourceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlaceIndexDataSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
