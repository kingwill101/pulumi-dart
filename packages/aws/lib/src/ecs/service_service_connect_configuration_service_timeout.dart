// ignore_for_file: unused_element, unnecessary_cast

class ServiceServiceConnectConfigurationServiceTimeout {
  /// Amount of time in seconds a connection will stay active while idle. A value of 0 can be set to disable idleTimeout.
  final int? idleTimeoutSeconds;

  /// Amount of time in seconds for the upstream to respond with a complete response per request. A value of 0 can be set to disable perRequestTimeout. Can only be set when appProtocol isn't TCP.
  final int? perRequestTimeoutSeconds;

  /// Creates a new [ServiceServiceConnectConfigurationServiceTimeout].
  /// [idleTimeoutSeconds] Amount of time in seconds a connection will stay active while idle. A value of 0 can be set to disable idleTimeout.
  /// [perRequestTimeoutSeconds] Amount of time in seconds for the upstream to respond with a complete response per request. A value of 0 can be set to disable perRequestTimeout. Can only be set when appProtocol isn't TCP.
  ServiceServiceConnectConfigurationServiceTimeout({
    this.idleTimeoutSeconds,
    this.perRequestTimeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idleTimeoutSecondsValue = idleTimeoutSeconds;
    if (idleTimeoutSecondsValue != null) {
      map['idleTimeoutSeconds'] = idleTimeoutSecondsValue;
    }
    final perRequestTimeoutSecondsValue = perRequestTimeoutSeconds;
    if (perRequestTimeoutSecondsValue != null) {
      map['perRequestTimeoutSeconds'] = perRequestTimeoutSecondsValue;
    }
    return map;
  }

  factory ServiceServiceConnectConfigurationServiceTimeout.fromMap(
      Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationServiceTimeout(
      idleTimeoutSeconds: map['idleTimeoutSeconds'] == null
          ? null
          : map['idleTimeoutSeconds'] as int,
      perRequestTimeoutSeconds: map['perRequestTimeoutSeconds'] == null
          ? null
          : map['perRequestTimeoutSeconds'] as int,
    );
  }
}
