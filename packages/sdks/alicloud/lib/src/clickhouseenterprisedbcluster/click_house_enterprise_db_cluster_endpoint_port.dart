// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClickHouseEnterpriseDbClusterEndpointPort {
  /// The access port.
  final pulumi.Input<int>? port;
  /// The protocol type.
  final pulumi.Input<String>? protocol;

  /// Creates a new [ClickHouseEnterpriseDbClusterEndpointPort].
  /// [port] The access port.
  /// [protocol] The protocol type.
  ClickHouseEnterpriseDbClusterEndpointPort({
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory ClickHouseEnterpriseDbClusterEndpointPort.fromMap(Map<String, dynamic> map) {
    return ClickHouseEnterpriseDbClusterEndpointPort(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

