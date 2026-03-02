// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbInstanceInstanceNetInfoPortList {
  /// The port that is used to connect.
  final pulumi.Input<String>? port;
  /// The protocol of the port.
  final pulumi.Input<String>? protocol;

  /// Creates a new [DbInstanceInstanceNetInfoPortList].
  /// [port] The port that is used to connect.
  /// [protocol] The protocol of the port.
  DbInstanceInstanceNetInfoPortList({
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory DbInstanceInstanceNetInfoPortList.fromMap(Map<String, dynamic> map) {
    return DbInstanceInstanceNetInfoPortList(
      port: map['port'] == null ? null : (map['port']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
    );
  }
}

