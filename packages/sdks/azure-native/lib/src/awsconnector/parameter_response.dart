// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Parameter
class ParameterResponse {
  /// The key associated with the parameter. If you don't specify a key and value for a particular parameter, AWS CloudFormation uses the default value that is specified in your template.
  final String? parameterKey;
  /// The name of the parameter.
  final String? parameterName;
  /// The value of the parameter. If `ParameterName` is `wlm_json_configuration`, then the maximum size of `ParameterValue` is 8000 characters.
  final String? parameterValue;

  /// Creates a new [ParameterResponse].
  /// [parameterKey] The key associated with the parameter. If you don't specify a key and value for a particular parameter, AWS CloudFormation uses the default value that is specified in your template.
  /// [parameterName] The name of the parameter.
  /// [parameterValue] The value of the parameter. If `ParameterName` is `wlm_json_configuration`, then the maximum size of `ParameterValue` is 8000 characters.
  ParameterResponse({
    this.parameterKey,
    this.parameterName,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': ?parameterKey,
      'parameterName': ?parameterName,
      'parameterValue': ?parameterValue,
    };
  }

  factory ParameterResponse.fromMap(Map<String, dynamic> map) {
    return ParameterResponse(
      parameterKey: map['parameterKey'] == null ? null : map['parameterKey'] as String,
      parameterName: map['parameterName'] == null ? null : map['parameterName'] as String,
      parameterValue: map['parameterValue'] == null ? null : map['parameterValue'] as String,
    );
  }
}

