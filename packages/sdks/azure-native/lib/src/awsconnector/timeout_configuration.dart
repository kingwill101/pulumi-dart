// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TimeoutConfiguration
class TimeoutConfiguration {
  /// The amount of time in seconds a connection will stay active while idle. A value of ``0`` can be set to disable ``idleTimeout``. The ``idleTimeout`` default for ``HTTP``/``HTTP2``/``GRPC`` is 5 minutes. The ``idleTimeout`` default for ``TCP`` is 1 hour.
  final int? idleTimeoutSeconds;
  /// The amount of time waiting for the upstream to respond with a complete response per request. A value of ``0`` can be set to disable ``perRequestTimeout``. ``perRequestTimeout`` can only be set if Service Connect ``appProtocol`` isn't ``TCP``. Only ``idleTimeout`` is allowed for ``TCP`` ``appProtocol``.
  final int? perRequestTimeoutSeconds;

  /// Creates a new [TimeoutConfiguration].
  /// [idleTimeoutSeconds] The amount of time in seconds a connection will stay active while idle. A value of ``0`` can be set to disable ``idleTimeout``. The ``idleTimeout`` default for ``HTTP``/``HTTP2``/``GRPC`` is 5 minutes. The ``idleTimeout`` default for ``TCP`` is 1 hour.
  /// [perRequestTimeoutSeconds] The amount of time waiting for the upstream to respond with a complete response per request. A value of ``0`` can be set to disable ``perRequestTimeout``. ``perRequestTimeout`` can only be set if Service Connect ``appProtocol`` isn't ``TCP``. Only ``idleTimeout`` is allowed for ``TCP`` ``appProtocol``.
  TimeoutConfiguration({
    this.idleTimeoutSeconds,
    this.perRequestTimeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleTimeoutSeconds': ?idleTimeoutSeconds,
      'perRequestTimeoutSeconds': ?perRequestTimeoutSeconds,
    };
  }

  factory TimeoutConfiguration.fromMap(Map<String, dynamic> map) {
    return TimeoutConfiguration(
      idleTimeoutSeconds: map['idleTimeoutSeconds'] == null ? null : map['idleTimeoutSeconds'] as int,
      perRequestTimeoutSeconds: map['perRequestTimeoutSeconds'] == null ? null : map['perRequestTimeoutSeconds'] as int,
    );
  }
}

