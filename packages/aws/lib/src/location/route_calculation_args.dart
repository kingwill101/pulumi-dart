// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_location_route_calculation_route_calculation_args_doc}
/// The set of arguments for RouteCalculation.
/// {@endtemplate}
/// {@macro pulumi_location_route_calculation_route_calculation_args_doc}
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

  /// Creates a new [RouteCalculationArgs].
  /// [calculatorName] The name of the route calculator resource.
  /// [dataSource] Specifies the data provider of traffic and road network data.
  /// [description] The optional description for the route calculator resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the route calculator. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  RouteCalculationArgs({
    required String calculatorName,
    required String dataSource,
    String? description,
    String? region,
    Map<String, String>? tags,
  }) : calculatorName = pulumi.Input.asInput<String>(calculatorName),
       dataSource = pulumi.Input.asInput<String>(dataSource),
       description = pulumi.Input.asOptionalInput<String>(description),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'calculatorName': calculatorName,
      'dataSource': dataSource,
      'description': ?description,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory RouteCalculationArgs.fromMap(Map<String, dynamic> map) {
    return RouteCalculationArgs(
      calculatorName: map['calculatorName'] as String,
      dataSource: map['dataSource'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
