// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RelayAuthentication {
  /// No authentication is required to connect to the SMTP server.
  final pulumi.Input<Map<String, dynamic>>? noAuthentication;
  /// ARN of the Secrets Manager secret containing the SMTP credentials.
  final pulumi.Input<String>? secretArn;

  /// Creates a new [RelayAuthentication].
  /// [noAuthentication] No authentication is required to connect to the SMTP server.
  /// [secretArn] ARN of the Secrets Manager secret containing the SMTP credentials.
  const RelayAuthentication({
    this.noAuthentication,
    this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noAuthentication': ?noAuthentication,
      'secretArn': ?secretArn,
    };
  }

  factory RelayAuthentication.fromMap(Map<String, dynamic> map) {
    return RelayAuthentication(
      noAuthentication: (() { final guardedValue = map['noAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      secretArn: (() { final guardedValue = map['secretArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
