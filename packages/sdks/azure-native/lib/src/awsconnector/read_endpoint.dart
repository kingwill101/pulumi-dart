// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ReadEndpoint
class ReadEndpoint {
  /// The reader endpoint for the DB cluster.
  final String? address;

  /// Creates a new [ReadEndpoint].
  /// [address] The reader endpoint for the DB cluster.
  ReadEndpoint({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory ReadEndpoint.fromMap(Map<String, dynamic> map) {
    return ReadEndpoint(
      address: map['address'] == null ? null : map['address'] as String,
    );
  }
}

