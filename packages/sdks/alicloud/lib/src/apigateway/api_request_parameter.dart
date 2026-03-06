// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiRequestParameter {
  /// The default value of the parameter.
  final pulumi.Input<String>? defaultValue;
  /// The description of parameter.
  final pulumi.Input<String>? description;
  /// Request's parameter location; values: BODY, HEAD, QUERY, and PATH.
  final pulumi.Input<String> in_;
  /// Backend service's parameter location; values: BODY, HEAD, QUERY, and PATH.
  final pulumi.Input<String> inService;
  /// Request's parameter name.
  final pulumi.Input<String> name;
  /// Backend service's parameter name.
  final pulumi.Input<String> nameService;
  /// Parameter required or not; values: REQUIRED and OPTIONAL.
  final pulumi.Input<String> required;
  /// Parameter type which supports values of 'STRING','INT','BOOLEAN','LONG',"FLOAT" and "DOUBLE".
  final pulumi.Input<String> type;

  /// Creates a new [ApiRequestParameter].
  /// [defaultValue] The default value of the parameter.
  /// [description] The description of parameter.
  /// [in_] Request's parameter location; values: BODY, HEAD, QUERY, and PATH.
  /// [inService] Backend service's parameter location; values: BODY, HEAD, QUERY, and PATH.
  /// [name] Request's parameter name.
  /// [nameService] Backend service's parameter name.
  /// [required] Parameter required or not; values: REQUIRED and OPTIONAL.
  /// [type] Parameter type which supports values of 'STRING','INT','BOOLEAN','LONG',"FLOAT" and "DOUBLE".
  const ApiRequestParameter({
    this.defaultValue,
    this.description,
    required this.in_,
    required this.inService,
    required this.name,
    required this.nameService,
    required this.required,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'description': ?description,
      'in': in_,
      'inService': inService,
      'name': name,
      'nameService': nameService,
      'required': required,
      'type': type,
    };
  }

  factory ApiRequestParameter.fromMap(Map<String, dynamic> map) {
    return ApiRequestParameter(
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      in_: pulumi.Input.fromValue(map['in'] as String),
      inService: pulumi.Input.fromValue(map['inService'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      nameService: pulumi.Input.fromValue(map['nameService'] as String),
      required: pulumi.Input.fromValue(map['required'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

