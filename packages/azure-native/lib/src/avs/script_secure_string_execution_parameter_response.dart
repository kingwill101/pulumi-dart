// ignore_for_file: unused_element, unnecessary_cast


/// a plain text value execution parameter
class ScriptSecureStringExecutionParameterResponse {
  /// The parameter name
  final String name;
  /// A secure value for the passed parameter, not to be stored in logs
  final String? secureValue;
  /// script execution parameter type
  /// Expected value is 'SecureValue'.
  final String type;

  /// Creates a new [ScriptSecureStringExecutionParameterResponse].
  /// [name] The parameter name
  /// [secureValue] A secure value for the passed parameter, not to be stored in logs
  /// [type] script execution parameter type
  ScriptSecureStringExecutionParameterResponse({
    required this.name,
    this.secureValue,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'secureValue': ?secureValue,
      'type': type,
    };
  }

  factory ScriptSecureStringExecutionParameterResponse.fromMap(Map<String, dynamic> map) {
    return ScriptSecureStringExecutionParameterResponse(
      name: map['name'] as String,
      secureValue: map['secureValue'] == null ? null : map['secureValue'] as String,
      type: map['type'] as String,
    );
  }
}

