// ignore_for_file: unused_element, unnecessary_cast


class ServerGroupConnectionDrainConfig {
  /// Indicates whether connection draining is enabled. Valid values:
  final bool? connectionDrainEnabled;
  /// The timeout period of connection draining.
  ///
  /// Unit: seconds
  ///
  /// Valid values: `1` to `3600`.
  ///
  /// Default value: `300`.
  final int? connectionDrainTimeout;

  /// Creates a new [ServerGroupConnectionDrainConfig].
  /// [connectionDrainEnabled] Indicates whether connection draining is enabled. Valid values:
  /// [connectionDrainTimeout] The timeout period of connection draining.
  ServerGroupConnectionDrainConfig({
    this.connectionDrainEnabled,
    this.connectionDrainTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionDrainEnabled': ?connectionDrainEnabled,
      'connectionDrainTimeout': ?connectionDrainTimeout,
    };
  }

  factory ServerGroupConnectionDrainConfig.fromMap(Map<String, dynamic> map) {
    return ServerGroupConnectionDrainConfig(
      connectionDrainEnabled: map['connectionDrainEnabled'] == null ? null : map['connectionDrainEnabled'] as bool,
      connectionDrainTimeout: map['connectionDrainTimeout'] == null ? null : map['connectionDrainTimeout'] as int,
    );
  }
}

