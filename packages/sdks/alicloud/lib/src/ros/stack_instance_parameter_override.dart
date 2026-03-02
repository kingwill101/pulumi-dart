// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackInstanceParameterOverride {
  /// The key of override parameter. If you do not specify the key and value of the parameter, ROS uses the key and value that you specified when you created the stack group.
  final pulumi.Input<String>? parameterKey;
  /// The value of override parameter. If you do not specify the key and value of the parameter, ROS uses the key and value that you specified when you created the stack group.
  final pulumi.Input<String>? parameterValue;

  /// Creates a new [StackInstanceParameterOverride].
  /// [parameterKey] The key of override parameter. If you do not specify the key and value of the parameter, ROS uses the key and value that you specified when you created the stack group.
  /// [parameterValue] The value of override parameter. If you do not specify the key and value of the parameter, ROS uses the key and value that you specified when you created the stack group.
  StackInstanceParameterOverride({
    this.parameterKey,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': ?parameterKey,
      'parameterValue': ?parameterValue,
    };
  }

  factory StackInstanceParameterOverride.fromMap(Map<String, dynamic> map) {
    return StackInstanceParameterOverride(
      parameterKey: map['parameterKey'] == null ? null : (map['parameterKey']! as String).input(),
      parameterValue: map['parameterValue'] == null ? null : (map['parameterValue']! as String).input(),
    );
  }
}

