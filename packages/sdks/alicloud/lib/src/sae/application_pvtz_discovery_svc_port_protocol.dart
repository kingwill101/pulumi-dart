// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationPvtzDiscoverySvcPortProtocol {
  final pulumi.Input<int>? port;
  /// The protocol. Valid values: `TCP` and `UDP`.
  final pulumi.Input<String>? protocol;

  /// Creates a new [ApplicationPvtzDiscoverySvcPortProtocol].
  /// [port] Optional.
  /// [protocol] The protocol. Valid values: `TCP` and `UDP`.
  const ApplicationPvtzDiscoverySvcPortProtocol({
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory ApplicationPvtzDiscoverySvcPortProtocol.fromMap(Map<String, dynamic> map) {
    return ApplicationPvtzDiscoverySvcPortProtocol(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

