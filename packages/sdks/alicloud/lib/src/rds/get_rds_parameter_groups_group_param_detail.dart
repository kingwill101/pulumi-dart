// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRdsParameterGroupsGroupParamDetail {
  final pulumi.Input<String> paramName;
  final pulumi.Input<String> paramValue;

  /// Creates a new [GetRdsParameterGroupsGroupParamDetail].
  /// [paramName] Required.
  /// [paramValue] Required.
  GetRdsParameterGroupsGroupParamDetail({
    required this.paramName,
    required this.paramValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'paramName': paramName, 'paramValue': paramValue};
  }

  factory GetRdsParameterGroupsGroupParamDetail.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRdsParameterGroupsGroupParamDetail(
      paramName: pulumi.Input.fromValue(map['paramName'] as String),
      paramValue: pulumi.Input.fromValue(map['paramValue'] as String),
    );
  }
}
