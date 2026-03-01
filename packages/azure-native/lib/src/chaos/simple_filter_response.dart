// ignore_for_file: unused_element, unnecessary_cast

import 'simple_filter_parameters_response.dart';

/// Model that represents a simple target filter.
class SimpleFilterResponse {
  /// Model that represents the Simple filter parameters.
  final SimpleFilterParametersResponse? parameters;
  /// Enum that discriminates between filter types. Currently only `Simple` type is supported.
  /// Expected value is 'Simple'.
  final String type;

  /// Creates a new [SimpleFilterResponse].
  /// [parameters] Model that represents the Simple filter parameters.
  /// [type] Enum that discriminates between filter types. Currently only `Simple` type is supported.
  SimpleFilterResponse({
    this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters == null ? null : parameters!.toMap(),
      'type': type,
    };
  }

  factory SimpleFilterResponse.fromMap(Map<String, dynamic> map) {
    return SimpleFilterResponse(
      parameters: map['parameters'] == null ? null : SimpleFilterParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

