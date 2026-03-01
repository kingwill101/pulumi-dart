// ignore_for_file: unused_element, unnecessary_cast


class GetStackInstancesInstanceParameterOverride {
  /// The key of override parameter.
  final String parameterKey;
  /// The value of override parameter.
  final String parameterValue;

  /// Creates a new [GetStackInstancesInstanceParameterOverride].
  /// [parameterKey] The key of override parameter.
  /// [parameterValue] The value of override parameter.
  GetStackInstancesInstanceParameterOverride({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory GetStackInstancesInstanceParameterOverride.fromMap(Map<String, dynamic> map) {
    return GetStackInstancesInstanceParameterOverride(
      parameterKey: map['parameterKey'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}

