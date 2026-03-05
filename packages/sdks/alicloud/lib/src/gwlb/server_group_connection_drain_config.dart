// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerGroupConnectionDrainConfig {
  /// Indicates whether connection draining is enabled. Valid values:
  final pulumi.Input<bool>? connectionDrainEnabled;
  /// The timeout period of connection draining.
  ///
  /// Unit: seconds
  ///
  /// Valid values: `1` to `3600`.
  ///
  /// Default value: `300`.
  final pulumi.Input<int>? connectionDrainTimeout;

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
      connectionDrainEnabled: (() { final guardedValue = map['connectionDrainEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectionDrainTimeout: (() { final guardedValue = map['connectionDrainTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

