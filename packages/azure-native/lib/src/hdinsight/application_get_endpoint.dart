// ignore_for_file: unused_element, unnecessary_cast


/// Gets the application SSH endpoint
class ApplicationGetEndpoint {
  /// The destination port to connect to.
  final int? destinationPort;
  /// The location of the endpoint.
  final String? location;
  /// The private ip address of the endpoint.
  final String? privateIPAddress;
  /// The public port to connect to.
  final int? publicPort;

  /// Creates a new [ApplicationGetEndpoint].
  /// [destinationPort] The destination port to connect to.
  /// [location] The location of the endpoint.
  /// [privateIPAddress] The private ip address of the endpoint.
  /// [publicPort] The public port to connect to.
  ApplicationGetEndpoint({
    this.destinationPort,
    this.location,
    this.privateIPAddress,
    this.publicPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPort': ?destinationPort,
      'location': ?location,
      'privateIPAddress': ?privateIPAddress,
      'publicPort': ?publicPort,
    };
  }

  factory ApplicationGetEndpoint.fromMap(Map<String, dynamic> map) {
    return ApplicationGetEndpoint(
      destinationPort: map['destinationPort'] == null ? null : map['destinationPort'] as int,
      location: map['location'] == null ? null : map['location'] as String,
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      publicPort: map['publicPort'] == null ? null : map['publicPort'] as int,
    );
  }
}

