// ignore_for_file: unused_element, unnecessary_cast

import '../tool_client_function_parameters/tool_client_function_parameters.dart';
import '../tool_client_function_response/tool_client_function_response.dart';

class ToolClientFunction {
  /// The function description.
  final String? description;

  /// The function name.
  final String name;

  /// Represents a select subset of an OpenAPI 3.0 schema object.
  /// Structure is documented below.
  final ToolClientFunctionParameters? parameters;

  /// Represents a select subset of an OpenAPI 3.0 schema object.
  /// Structure is documented below.
  final ToolClientFunctionResponse? response;

  ToolClientFunction({
    this.description,
    required this.name,
    this.parameters,
    this.response,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['name'] = name;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue.toMap();
    }
    final responseValue = response;
    if (responseValue != null) {
      map['response'] = responseValue.toMap();
    }
    return map;
  }

  factory ToolClientFunction.fromMap(Map<String, dynamic> map) {
    return ToolClientFunction(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      parameters: map['parameters'] == null
          ? null
          : ToolClientFunctionParameters.fromMap(
              (map['parameters'] as Map).cast<String, dynamic>()),
      response: map['response'] == null
          ? null
          : ToolClientFunctionResponse.fromMap(
              (map['response'] as Map).cast<String, dynamic>()),
    );
  }
}
