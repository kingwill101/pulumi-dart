// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationPvtzDiscoverySvcPortProtocol {
  final pulumi.Input<int>? port;
  /// The protocol. Valid values: `TCP` and `UDP`.
  final pulumi.Input<String>? protocol;

  /// Creates a new [ApplicationPvtzDiscoverySvcPortProtocol].
  /// [port] Optional.
  /// [protocol] The protocol. Valid values: `TCP` and `UDP`.
  ApplicationPvtzDiscoverySvcPortProtocol({
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
      port: map['port'] == null ? null : (map['port']! as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
    );
  }
}

