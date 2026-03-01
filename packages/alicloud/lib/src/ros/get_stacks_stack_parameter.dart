// ignore_for_file: unused_element, unnecessary_cast


class GetStacksStackParameter {
  /// The key of parameters.
  final String parameterKey;
  /// The value of parameters.
  final String parameterValue;

  /// Creates a new [GetStacksStackParameter].
  /// [parameterKey] The key of parameters.
  /// [parameterValue] The value of parameters.
  GetStacksStackParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory GetStacksStackParameter.fromMap(Map<String, dynamic> map) {
    return GetStacksStackParameter(
      parameterKey: map['parameterKey'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}

