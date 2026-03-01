// ignore_for_file: unused_element, unnecessary_cast

class InstanceListenerEndpoint {
  /// Specifies the DNS address of the DB instance.
  final String? address;

  /// Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.
  final String? hostedZoneId;

  /// The port on which the DB accepts connections.
  final int? port;

  /// Creates a new [InstanceListenerEndpoint].
  /// [address] Specifies the DNS address of the DB instance.
  /// [hostedZoneId] Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.
  /// [port] The port on which the DB accepts connections.
  InstanceListenerEndpoint({this.address, this.hostedZoneId, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'hostedZoneId': ?hostedZoneId,
      'port': ?port,
    };
  }

  factory InstanceListenerEndpoint.fromMap(Map<String, dynamic> map) {
    return InstanceListenerEndpoint(
      address: map['address'] == null ? null : map['address'] as String,
      hostedZoneId: map['hostedZoneId'] == null
          ? null
          : map['hostedZoneId'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
