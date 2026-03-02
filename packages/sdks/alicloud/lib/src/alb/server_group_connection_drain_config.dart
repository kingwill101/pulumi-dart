// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerGroupConnectionDrainConfig {
  /// Specifies whether to enable connection draining. Valid values:
  final pulumi.Input<bool>? connectionDrainEnabled;
  /// The timeout period of connection draining.
  ///
  /// Valid values: `0` to `900`.
  ///
  /// Default value: `300`.
  final pulumi.Input<int>? connectionDrainTimeout;

  /// Creates a new [ServerGroupConnectionDrainConfig].
  /// [connectionDrainEnabled] Specifies whether to enable connection draining. Valid values:
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
      connectionDrainEnabled: map['connectionDrainEnabled'] == null ? null : (map['connectionDrainEnabled'] as bool).input(),
      connectionDrainTimeout: map['connectionDrainTimeout'] == null ? null : (map['connectionDrainTimeout'] as int).input(),
    );
  }
}

