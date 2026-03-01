// ignore_for_file: unused_element, unnecessary_cast


class GetStackGroupsGroupParameter {
  /// The parameter key.
  final String parameterKey;
  /// The parameter value.
  final String parameterValue;

  /// Creates a new [GetStackGroupsGroupParameter].
  /// [parameterKey] The parameter key.
  /// [parameterValue] The parameter value.
  GetStackGroupsGroupParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory GetStackGroupsGroupParameter.fromMap(Map<String, dynamic> map) {
    return GetStackGroupsGroupParameter(
      parameterKey: map['parameterKey'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}

