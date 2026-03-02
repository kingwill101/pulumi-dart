// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentPoolProvisioningStatusError {
  final pulumi.Input<String>? code;
  final pulumi.Input<String>? message;

  /// Creates a new [AgentPoolProvisioningStatusError].
  /// [code] Optional.
  /// [message] Optional.
  AgentPoolProvisioningStatusError({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory AgentPoolProvisioningStatusError.fromMap(Map<String, dynamic> map) {
    return AgentPoolProvisioningStatusError(
      code: map['code'] == null ? null : (map['code'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
    );
  }
}

