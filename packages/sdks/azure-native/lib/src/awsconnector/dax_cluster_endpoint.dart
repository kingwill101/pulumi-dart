// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Endpoint
class DaxClusterEndpoint {
  /// <p>The DNS hostname of the endpoint.</p>
  final String? address;
  /// <p>The port number that applications should use to connect to the endpoint.</p>
  final int? port;
  /// <p>The URL that applications should use to connect to the endpoint. The default ports are 8111 for the 'dax' protocol and 9111 for the 'daxs' protocol.</p>
  final String? url;

  /// Creates a new [DaxClusterEndpoint].
  /// [address] <p>The DNS hostname of the endpoint.</p>
  /// [port] <p>The port number that applications should use to connect to the endpoint.</p>
  /// [url] <p>The URL that applications should use to connect to the endpoint. The default ports are 8111 for the 'dax' protocol and 9111 for the 'daxs' protocol.</p>
  DaxClusterEndpoint({
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
      address: map['address'] == null ? null : map['address'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

