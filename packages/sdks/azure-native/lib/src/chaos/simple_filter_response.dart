// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'simple_filter_parameters_response.dart';

/// Model that represents a simple target filter.
class SimpleFilterResponse {
  /// Model that represents the Simple filter parameters.
  final pulumi.Input<SimpleFilterParametersResponse>? parameters;
  /// Enum that discriminates between filter types. Currently only `Simple` type is supported.
  /// Expected value is 'Simple'.
  final pulumi.Input<String> type;

  /// Creates a new [SimpleFilterResponse].
  /// [parameters] Model that represents the Simple filter parameters.
  /// [type] Enum that discriminates between filter types. Currently only `Simple` type is supported.
  const SimpleFilterResponse({
    this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<SimpleFilterParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'type': type,
    };
  }

  factory SimpleFilterResponse.fromMap(Map<String, dynamic> map) {
    return SimpleFilterResponse(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SimpleFilterParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
