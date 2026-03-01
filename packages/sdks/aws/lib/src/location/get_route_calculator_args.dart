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
    required pulumi.Output<String> calculatorName,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      calculatorName = pulumi.Input.asInput<String>(calculatorName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'calculatorName': calculatorName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetRouteCalculatorArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteCalculatorArgs(
      calculatorName: pulumi.Output.create<String>(map['calculatorName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

