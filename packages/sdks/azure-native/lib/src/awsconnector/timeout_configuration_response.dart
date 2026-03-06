// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TimeoutConfiguration
class TimeoutConfigurationResponse {
  /// The amount of time in seconds a connection will stay active while idle. A value of ``0`` can be set to disable ``idleTimeout``. The ``idleTimeout`` default for ``HTTP``/``HTTP2``/``GRPC`` is 5 minutes. The ``idleTimeout`` default for ``TCP`` is 1 hour.
  final pulumi.Input<int>? idleTimeoutSeconds;
  /// The amount of time waiting for the upstream to respond with a complete response per request. A value of ``0`` can be set to disable ``perRequestTimeout``. ``perRequestTimeout`` can only be set if Service Connect ``appProtocol`` isn't ``TCP``. Only ``idleTimeout`` is allowed for ``TCP`` ``appProtocol``.
  final pulumi.Input<int>? perRequestTimeoutSeconds;

  /// Creates a new [TimeoutConfigurationResponse].
  /// [idleTimeoutSeconds] The amount of time in seconds a connection will stay active while idle. A value of ``0`` can be set to disable ``idleTimeout``. The ``idleTimeout`` default for ``HTTP``/``HTTP2``/``GRPC`` is 5 minutes. The ``idleTimeout`` default for ``TCP`` is 1 hour.
  /// [perRequestTimeoutSeconds] The amount of time waiting for the upstream to respond with a complete response per request. A value of ``0`` can be set to disable ``perRequestTimeout``. ``perRequestTimeout`` can only be set if Service Connect ``appProtocol`` isn't ``TCP``. Only ``idleTimeout`` is allowed for ``TCP`` ``appProtocol``.
  const TimeoutConfigurationResponse({
    this.idleTimeoutSeconds,
    this.perRequestTimeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleTimeoutSeconds': ?idleTimeoutSeconds,
      'perRequestTimeoutSeconds': ?perRequestTimeoutSeconds,
    };
  }

  factory TimeoutConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return TimeoutConfigurationResponse(
      idleTimeoutSeconds: (() { final guardedValue = map['idleTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      perRequestTimeoutSeconds: (() { final guardedValue = map['perRequestTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

