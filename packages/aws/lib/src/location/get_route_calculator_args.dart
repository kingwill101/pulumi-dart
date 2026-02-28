// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_location_get_route_calculator_get_route_calculator_args_doc}
/// Arguments for getRouteCalculator.
/// {@endtemplate}
/// {@macro pulumi_location_get_route_calculator_get_route_calculator_args_doc}
class GetRouteCalculatorArgs {
  /// Name of the route calculator resource.
  final pulumi.Input<String> calculatorName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags for the route calculator.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetRouteCalculatorArgs].
  /// [calculatorName] Name of the route calculator resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the route calculator.
  GetRouteCalculatorArgs({
    required String calculatorName,
    String? region,
    Map<String, String>? tags,
  })  : calculatorName = pulumi.Input.asInput<String>(calculatorName),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['calculatorName'] = calculatorName;
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

  factory GetRouteCalculatorArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteCalculatorArgs(
      calculatorName: map['calculatorName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
