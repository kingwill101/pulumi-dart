// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetModifyParameterLogsLog {
  /// The time when the parameter was reconfigured. This value is a UNIX timestamp. Unit: milliseconds.
  final pulumi.Input<String> modifyTime;
  /// The new value of the parameter.
  final pulumi.Input<String> newParameterValue;
  /// The original value of the parameter.
  final pulumi.Input<String> oldParameterValue;
  /// The name of the parameter.
  final pulumi.Input<String> parameterName;
  /// The status of the new value specified for the parameter. Valid values:
  /// * **Applied**: The new value has taken effect.
  /// * **Syncing**: The new value is being applied and has not taken effect.
  final pulumi.Input<String> status;

  /// Creates a new [GetModifyParameterLogsLog].
  /// [modifyTime] The time when the parameter was reconfigured. This value is a UNIX timestamp. Unit: milliseconds.
  /// [newParameterValue] The new value of the parameter.
  /// [oldParameterValue] The original value of the parameter.
  /// [parameterName] The name of the parameter.
  /// [status] The status of the new value specified for the parameter. Valid values:
  GetModifyParameterLogsLog({
    required this.modifyTime,
    required this.newParameterValue,
    required this.oldParameterValue,
    required this.parameterName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modifyTime': modifyTime,
      'newParameterValue': newParameterValue,
      'oldParameterValue': oldParameterValue,
      'parameterName': parameterName,
      'status': status,
    };
  }

  factory GetModifyParameterLogsLog.fromMap(Map<String, dynamic> map) {
    return GetModifyParameterLogsLog(
      modifyTime: pulumi.Input.fromValue(map['modifyTime'] as String),
      newParameterValue: pulumi.Input.fromValue(map['newParameterValue'] as String),
      oldParameterValue: pulumi.Input.fromValue(map['oldParameterValue'] as String),
      parameterName: pulumi.Input.fromValue(map['parameterName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

