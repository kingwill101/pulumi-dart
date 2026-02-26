// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRouteCalculator.
class GetRouteCalculatorArgs {
  /// Name of the route calculator resource.
  final Input<String> calculatorName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags for the route calculator.
  final Input<Map<String, String>>? tags;

  GetRouteCalculatorArgs({
    required this.calculatorName,
    this.region,
    this.tags,
  });

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
      calculatorName: Input.asInput<String>(map['calculatorName']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
