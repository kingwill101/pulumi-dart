// ignore_for_file: unused_element, unnecessary_cast


class CircuitMetadataMapResponse {
  /// Link to the Express Route circuit
  final String? link;
  /// Peering location of the Express Route Circuit
  final String? location;
  /// Express Route Circuit Name
  final String? name;

  /// Creates a new [CircuitMetadataMapResponse].
  /// [link] Link to the Express Route circuit
  /// [location] Peering location of the Express Route Circuit
  /// [name] Express Route Circuit Name
  CircuitMetadataMapResponse({
    this.link,
    this.location,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'link': ?link,
      'location': ?location,
      'name': ?name,
    };
  }

  factory CircuitMetadataMapResponse.fromMap(Map<String, dynamic> map) {
    return CircuitMetadataMapResponse(
      link: map['link'] == null ? null : map['link'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

