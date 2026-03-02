// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'simple_filter_parameters.dart';

/// Model that represents a simple target filter.
class SimpleFilter {
  /// Model that represents the Simple filter parameters.
  final pulumi.Input<SimpleFilterParameters>? parameters;
  /// Enum that discriminates between filter types. Currently only `Simple` type is supported.
  /// Expected value is 'Simple'.
  final pulumi.Input<String> type;

  /// Creates a new [SimpleFilter].
  /// [parameters] Model that represents the Simple filter parameters.
  /// [type] Enum that discriminates between filter types. Currently only `Simple` type is supported.
  SimpleFilter({
    this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<SimpleFilterParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'type': type,
    };
  }

  factory SimpleFilter.fromMap(Map<String, dynamic> map) {
    return SimpleFilter(
      parameters: map['parameters'] == null ? null : (SimpleFilterParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

