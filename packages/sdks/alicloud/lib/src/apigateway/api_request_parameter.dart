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
  ApiRequestParameter({
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
      defaultValue: map['defaultValue'] == null ? null : (map['defaultValue'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      in_: (map['in'] as String).input(),
      inService: (map['inService'] as String).input(),
      name: (map['name'] as String).input(),
      nameService: (map['nameService'] as String).input(),
      required: (map['required'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

