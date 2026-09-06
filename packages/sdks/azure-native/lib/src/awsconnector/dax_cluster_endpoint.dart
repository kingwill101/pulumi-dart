// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Endpoint
class DaxClusterEndpoint {
  /// &lt;p&gt;The DNS hostname of the endpoint.&lt;/p&gt;
  final pulumi.Input<String?>? address;
  /// &lt;p&gt;The port number that applications should use to connect to the endpoint.&lt;/p&gt;
  final pulumi.Input<int?>? port;
  /// &lt;p&gt;The URL that applications should use to connect to the endpoint. The default ports are 8111 for the 'dax' protocol and 9111 for the 'daxs' protocol.&lt;/p&gt;
  final pulumi.Input<String?>? url;

  /// Creates a new [DaxClusterEndpoint].
  /// [address] &lt;p&gt;The DNS hostname of the endpoint.&lt;/p&gt;
  /// [port] &lt;p&gt;The port number that applications should use to connect to the endpoint.&lt;/p&gt;
  /// [url] &lt;p&gt;The URL that applications should use to connect to the endpoint. The default ports are 8111 for the 'dax' protocol and 9111 for the 'daxs' protocol.&lt;/p&gt;
  const DaxClusterEndpoint({
    this.address,
    this.port,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
      'url': ?url,
    };
  }

  factory DaxClusterEndpoint.fromMap(Map<String, dynamic> map) {
    return DaxClusterEndpoint(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
