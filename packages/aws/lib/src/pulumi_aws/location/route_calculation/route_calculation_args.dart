// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RouteCalculation.
class RouteCalculationArgs {
  /// The name of the route calculator resource.
  final pulumi.Input<String> calculatorName;

  /// Specifies the data provider of traffic and road network data.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> dataSource;

  /// The optional description for the route calculator resource.
  final pulumi.Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value tags for the route calculator. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

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
      calculatorName: pulumi.Input.asInput<String>(map['calculatorName']),
      dataSource: pulumi.Input.asInput<String>(map['dataSource']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
