// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstanceParameter {
  /// The value range of the parameter.
  final pulumi.Input<String> checkingCode;
  /// Indicates whether the parameter can be modified. Valid values: true | false
  final pulumi.Input<String> forceModify;
  /// Indicates whether the modified parameter takes effect only after a database restart. Valid values: true | false
  final pulumi.Input<String> forceRestart;
  /// The description of the parameter.
  final pulumi.Input<String> parameterDescription;
  /// The name of the parameter.
  final pulumi.Input<String> parameterName;
  /// The default value of the parameter.
  final pulumi.Input<String> parameterValue;

  /// Creates a new [GetInstancesInstanceParameter].
  /// [checkingCode] The value range of the parameter.
  /// [forceModify] Indicates whether the parameter can be modified. Valid values: true | false
  /// [forceRestart] Indicates whether the modified parameter takes effect only after a database restart. Valid values: true | false
  /// [parameterDescription] The description of the parameter.
  /// [parameterName] The name of the parameter.
  /// [parameterValue] The default value of the parameter.
  GetInstancesInstanceParameter({
    required this.checkingCode,
    required this.forceModify,
    required this.forceRestart,
    required this.parameterDescription,
    required this.parameterName,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkingCode': checkingCode,
      'forceModify': forceModify,
      'forceRestart': forceRestart,
      'parameterDescription': parameterDescription,
      'parameterName': parameterName,
      'parameterValue': parameterValue,
    };
  }

  factory GetInstancesInstanceParameter.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceParameter(
      checkingCode: pulumi.Input.fromValue(map['checkingCode'] as String),
      forceModify: pulumi.Input.fromValue(map['forceModify'] as String),
      forceRestart: pulumi.Input.fromValue(map['forceRestart'] as String),
      parameterDescription: pulumi.Input.fromValue(map['parameterDescription'] as String),
      parameterName: pulumi.Input.fromValue(map['parameterName'] as String),
      parameterValue: pulumi.Input.fromValue(map['parameterValue'] as String),
    );
  }
}

