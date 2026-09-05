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
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags for the route calculator.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetRouteCalculatorArgs].
  /// [calculatorName] Name of the route calculator resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the route calculator.
  const GetRouteCalculatorArgs({
    required this.calculatorName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'calculatorName': calculatorName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetRouteCalculatorArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteCalculatorArgs(
      calculatorName: pulumi.Input.fromValue(map['calculatorName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
