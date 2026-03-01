// ignore_for_file: unused_element, unnecessary_cast


class ApiRequestParameter {
  /// The default value of the parameter.
  final String? defaultValue;
  /// The description of parameter.
  final String? description;
  /// Request's parameter location; values: BODY, HEAD, QUERY, and PATH.
  final String in_;
  /// Backend service's parameter location; values: BODY, HEAD, QUERY, and PATH.
  final String inService;
  /// Request's parameter name.
  final String name;
  /// Backend service's parameter name.
  final String nameService;
  /// Parameter required or not; values: REQUIRED and OPTIONAL.
  final String required;
  /// Parameter type which supports values of 'STRING','INT','BOOLEAN','LONG',"FLOAT" and "DOUBLE".
  final String type;

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
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      in_: map['in'] as String,
      inService: map['inService'] as String,
      name: map['name'] as String,
      nameService: map['nameService'] as String,
      required: map['required'] as String,
      type: map['type'] as String,
    );
  }
}

