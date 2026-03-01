// ignore_for_file: unused_element, unnecessary_cast


class StackGroupParameter {
  /// The key of parameter N. If you do not specify the key and value of the parameter, ROS uses the default key and value in the template.
  final String parameterKey;
  /// The value of parameter N.
  final String parameterValue;

  /// Creates a new [StackGroupParameter].
  /// [parameterKey] The key of parameter N. If you do not specify the key and value of the parameter, ROS uses the default key and value in the template.
  /// [parameterValue] The value of parameter N.
  StackGroupParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory StackGroupParameter.fromMap(Map<String, dynamic> map) {
    return StackGroupParameter(
      parameterKey: map['parameterKey'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}

