// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStackGroupsGroupParameter {
  /// The parameter key.
  final pulumi.Input<String> parameterKey;
  /// The parameter value.
  final pulumi.Input<String> parameterValue;

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
      parameterKey: pulumi.Input.fromValue(map['parameterKey'] as String),
      parameterValue: pulumi.Input.fromValue(map['parameterValue'] as String),
    );
  }
}

