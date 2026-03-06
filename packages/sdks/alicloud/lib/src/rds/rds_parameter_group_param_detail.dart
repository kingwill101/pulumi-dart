// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RdsParameterGroupParamDetail {
  /// The name of a parameter.
  final pulumi.Input<String> paramName;
  /// The value of a parameter.
  final pulumi.Input<String> paramValue;

  /// Creates a new [RdsParameterGroupParamDetail].
  /// [paramName] The name of a parameter.
  /// [paramValue] The value of a parameter.
  const RdsParameterGroupParamDetail({
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
      paramName: pulumi.Input.fromValue(map['paramName'] as String),
      paramValue: pulumi.Input.fromValue(map['paramValue'] as String),
    );
  }
}

