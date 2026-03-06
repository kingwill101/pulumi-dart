// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Endpoint
class DaxClusterEndpointResponse {
  /// &lt;p&gt;The DNS hostname of the endpoint.&lt;/p&gt;
  final pulumi.Input<String>? address;
  /// &lt;p&gt;The port number that applications should use to connect to the endpoint.&lt;/p&gt;
  final pulumi.Input<int>? port;
  /// &lt;p&gt;The URL that applications should use to connect to the endpoint. The default ports are 8111 for the 'dax' protocol and 9111 for the 'daxs' protocol.&lt;/p&gt;
  final pulumi.Input<String>? url;

  /// Creates a new [DaxClusterEndpointResponse].
  /// [address] &lt;p&gt;The DNS hostname of the endpoint.&lt;/p&gt;
  /// [port] &lt;p&gt;The port number that applications should use to connect to the endpoint.&lt;/p&gt;
  /// [url] &lt;p&gt;The URL that applications should use to connect to the endpoint. The default ports are 8111 for the 'dax' protocol and 9111 for the 'daxs' protocol.&lt;/p&gt;
  const DaxClusterEndpointResponse({
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

  factory DaxClusterEndpointResponse.fromMap(Map<String, dynamic> map) {
    return DaxClusterEndpointResponse(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

