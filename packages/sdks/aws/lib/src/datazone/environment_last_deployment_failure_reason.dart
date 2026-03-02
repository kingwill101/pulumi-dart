// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentLastDeploymentFailureReason {
  final pulumi.Input<String> code;
  final pulumi.Input<String> message;

  /// Creates a new [EnvironmentLastDeploymentFailureReason].
  /// [code] Required.
  /// [message] Required.
  EnvironmentLastDeploymentFailureReason({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory EnvironmentLastDeploymentFailureReason.fromMap(Map<String, dynamic> map) {
    return EnvironmentLastDeploymentFailureReason(
      code: (map['code'] as String).input(),
      message: (map['message'] as String).input(),
    );
  }
}

