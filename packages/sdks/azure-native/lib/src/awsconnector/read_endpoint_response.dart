// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ReadEndpoint
class ReadEndpointResponse {
  /// The reader endpoint for the DB cluster.
  final String? address;

  /// Creates a new [ReadEndpointResponse].
  /// [address] The reader endpoint for the DB cluster.
  ReadEndpointResponse({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory ReadEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ReadEndpointResponse(
      address: map['address'] == null ? null : map['address'] as String,
    );
  }
}

