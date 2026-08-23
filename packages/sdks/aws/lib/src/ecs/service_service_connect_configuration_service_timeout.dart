// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceServiceConnectConfigurationServiceTimeout {
  /// Amount of time in seconds a connection will stay active while idle. A value of 0 can be set to disable idleTimeout.
  final pulumi.Input<int>? idleTimeoutSeconds;
  /// Amount of time in seconds for the upstream to respond with a complete response per request. A value of 0 can be set to disable perRequestTimeout. Can only be set when appProtocol isn't TCP.
  final pulumi.Input<int>? perRequestTimeoutSeconds;

  /// Creates a new [ServiceServiceConnectConfigurationServiceTimeout].
  /// [idleTimeoutSeconds] Amount of time in seconds a connection will stay active while idle. A value of 0 can be set to disable idleTimeout.
  /// [perRequestTimeoutSeconds] Amount of time in seconds for the upstream to respond with a complete response per request. A value of 0 can be set to disable perRequestTimeout. Can only be set when appProtocol isn't TCP.
  const ServiceServiceConnectConfigurationServiceTimeout({
    this.idleTimeoutSeconds,
    this.perRequestTimeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleTimeoutSeconds': ?idleTimeoutSeconds,
      'perRequestTimeoutSeconds': ?perRequestTimeoutSeconds,
    };
  }

  factory ServiceServiceConnectConfigurationServiceTimeout.fromMap(Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationServiceTimeout(
      idleTimeoutSeconds: (() { final guardedValue = map['idleTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      perRequestTimeoutSeconds: (() { final guardedValue = map['perRequestTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
