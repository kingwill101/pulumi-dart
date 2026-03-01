// ignore_for_file: unused_element, unnecessary_cast


class GetRdsParameterGroupsGroupParamDetail {
  final String paramName;
  final String paramValue;

  /// Creates a new [GetRdsParameterGroupsGroupParamDetail].
  /// [paramName] Required.
  /// [paramValue] Required.
  GetRdsParameterGroupsGroupParamDetail({
    required this.paramName,
    required this.paramValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paramName': paramName,
      'paramValue': paramValue,
    };
  }

  factory GetRdsParameterGroupsGroupParamDetail.fromMap(Map<String, dynamic> map) {
    return GetRdsParameterGroupsGroupParamDetail(
      paramName: map['paramName'] as String,
      paramValue: map['paramValue'] as String,
    );
  }
}

