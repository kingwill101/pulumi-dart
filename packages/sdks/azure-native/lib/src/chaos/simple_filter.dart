// ignore_for_file: unused_element, unnecessary_cast

import 'simple_filter_parameters.dart';

/// Model that represents a simple target filter.
class SimpleFilter {
  /// Model that represents the Simple filter parameters.
  final SimpleFilterParameters? parameters;
  /// Enum that discriminates between filter types. Currently only `Simple` type is supported.
  /// Expected value is 'Simple'.
  final String type;

  /// Creates a new [SimpleFilter].
  /// [parameters] Model that represents the Simple filter parameters.
  /// [type] Enum that discriminates between filter types. Currently only `Simple` type is supported.
  SimpleFilter({
    this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters == null ? null : parameters!.toMap(),
      'type': type,
    };
  }

  factory SimpleFilter.fromMap(Map<String, dynamic> map) {
    return SimpleFilter(
      parameters: map['parameters'] == null ? null : SimpleFilterParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

