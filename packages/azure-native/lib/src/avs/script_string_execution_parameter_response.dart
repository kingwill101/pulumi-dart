// ignore_for_file: unused_element, unnecessary_cast


/// a plain text value execution parameter
class ScriptStringExecutionParameterResponse {
  /// The parameter name
  final String name;
  /// script execution parameter type
  /// Expected value is 'Value'.
  final String type;
  /// The value for the passed parameter
  final String? value;

  /// Creates a new [ScriptStringExecutionParameterResponse].
  /// [name] The parameter name
  /// [type] script execution parameter type
  /// [value] The value for the passed parameter
  ScriptStringExecutionParameterResponse({
    required this.name,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
      'value': ?value,
    };
  }

  factory ScriptStringExecutionParameterResponse.fromMap(Map<String, dynamic> map) {
    return ScriptStringExecutionParameterResponse(
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

