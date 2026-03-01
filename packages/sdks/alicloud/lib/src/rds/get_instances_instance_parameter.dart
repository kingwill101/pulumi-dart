// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstanceParameter {
  /// The value range of the parameter.
  final String checkingCode;
  /// Indicates whether the parameter can be modified. Valid values: true | false
  final String forceModify;
  /// Indicates whether the modified parameter takes effect only after a database restart. Valid values: true | false
  final String forceRestart;
  /// The description of the parameter.
  final String parameterDescription;
  /// The name of the parameter.
  final String parameterName;
  /// The default value of the parameter.
  final String parameterValue;

  /// Creates a new [GetInstancesInstanceParameter].
  /// [checkingCode] The value range of the parameter.
  /// [forceModify] Indicates whether the parameter can be modified. Valid values: true | false
  /// [forceRestart] Indicates whether the modified parameter takes effect only after a database restart. Valid values: true | false
  /// [parameterDescription] The description of the parameter.
  /// [parameterName] The name of the parameter.
  /// [parameterValue] The default value of the parameter.
  GetInstancesInstanceParameter({
    required this.checkingCode,
    required this.forceModify,
    required this.forceRestart,
    required this.parameterDescription,
    required this.parameterName,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkingCode': checkingCode,
      'forceModify': forceModify,
      'forceRestart': forceRestart,
      'parameterDescription': parameterDescription,
      'parameterName': parameterName,
      'parameterValue': parameterValue,
    };
  }

  factory GetInstancesInstanceParameter.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceParameter(
      checkingCode: map['checkingCode'] as String,
      forceModify: map['forceModify'] as String,
      forceRestart: map['forceRestart'] as String,
      parameterDescription: map['parameterDescription'] as String,
      parameterName: map['parameterName'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}

