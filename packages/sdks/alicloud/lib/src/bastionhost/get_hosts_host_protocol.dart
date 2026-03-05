// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHostsHostProtocol {
  /// Host fingerprint information, it is possible to uniquely identify a host.
  final pulumi.Input<String> hostFingerPrint;
  /// Host the service port of the RDS.
  final pulumi.Input<int> port;
  /// The host uses the protocol name.
  final pulumi.Input<String> protocolName;

  /// Creates a new [GetHostsHostProtocol].
  /// [hostFingerPrint] Host fingerprint information, it is possible to uniquely identify a host.
  /// [port] Host the service port of the RDS.
  /// [protocolName] The host uses the protocol name.
  GetHostsHostProtocol({
    required this.hostFingerPrint,
    required this.port,
    required this.protocolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostFingerPrint': hostFingerPrint,
      'port': port,
      'protocolName': protocolName,
    };
  }

  factory GetHostsHostProtocol.fromMap(Map<String, dynamic> map) {
    return GetHostsHostProtocol(
      hostFingerPrint: pulumi.Input.fromValue(map['hostFingerPrint'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      protocolName: pulumi.Input.fromValue(map['protocolName'] as String),
    );
  }
}

