// ignore_for_file: unused_element, unnecessary_cast


class RdsParameterGroupParamDetail {
  /// The name of a parameter.
  final String paramName;
  /// The value of a parameter.
  final String paramValue;

  /// Creates a new [RdsParameterGroupParamDetail].
  /// [paramName] The name of a parameter.
  /// [paramValue] The value of a parameter.
  RdsParameterGroupParamDetail({
    required this.paramName,
    required this.paramValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paramName': paramName,
      'paramValue': paramValue,
    };
  }

  factory RdsParameterGroupParamDetail.fromMap(Map<String, dynamic> map) {
    return RdsParameterGroupParamDetail(
      paramName: map['paramName'] as String,
      paramValue: map['paramValue'] as String,
    );
  }
}

