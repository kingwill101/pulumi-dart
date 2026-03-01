// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Header
class HeaderResponse {
  /// Property destination
  final String? destination;
  /// Property destinationPort
  final String? destinationPort;
  /// Property direction
  final String? direction;
  /// Property protocol
  final String? protocol;
  /// Property source
  final String? source;
  /// Property sourcePort
  final String? sourcePort;

  /// Creates a new [HeaderResponse].
  /// [destination] Property destination
  /// [destinationPort] Property destinationPort
  /// [direction] Property direction
  /// [protocol] Property protocol
  /// [source] Property source
  /// [sourcePort] Property sourcePort
  HeaderResponse({
    this.destination,
    this.destinationPort,
    this.direction,
    this.protocol,
    this.source,
    this.sourcePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'destinationPort': ?destinationPort,
      'direction': ?direction,
      'protocol': ?protocol,
      'source': ?source,
      'sourcePort': ?sourcePort,
    };
  }

  factory HeaderResponse.fromMap(Map<String, dynamic> map) {
    return HeaderResponse(
      destination: map['destination'] == null ? null : map['destination'] as String,
      destinationPort: map['destinationPort'] == null ? null : map['destinationPort'] as String,
      direction: map['direction'] == null ? null : map['direction'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      sourcePort: map['sourcePort'] == null ? null : map['sourcePort'] as String,
    );
  }
}

