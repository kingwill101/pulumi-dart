// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CircuitMetadataMapResponse {
  /// Link to the Express Route circuit
  final pulumi.Input<String>? link;
  /// Peering location of the Express Route Circuit
  final pulumi.Input<String>? location;
  /// Express Route Circuit Name
  final pulumi.Input<String>? name;

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
      link: map['link'] == null ? null : (map['link'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

