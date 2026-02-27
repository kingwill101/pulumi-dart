// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RouteCalculation.
class RouteCalculationArgs {
  /// The name of the route calculator resource.
  final Input<String> calculatorName;

  /// Specifies the data provider of traffic and road network data.
  ///
  /// The following arguments are optional:
  final Input<String> dataSource;

  /// The optional description for the route calculator resource.
  final Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value tags for the route calculator. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  RouteCalculationArgs({
    required this.calculatorName,
    required this.dataSource,
    this.description,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['calculatorName'] = calculatorName;
    map['dataSource'] = dataSource;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
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

  factory RouteCalculationArgs.fromMap(Map<String, dynamic> map) {
    return RouteCalculationArgs(
      calculatorName: Input.asInput<String>(map['calculatorName']),
      dataSource: Input.asInput<String>(map['dataSource']),
      description: Input.asOptionalInput<String>(map['description']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
