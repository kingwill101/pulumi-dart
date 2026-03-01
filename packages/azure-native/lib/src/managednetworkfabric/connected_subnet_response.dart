// ignore_for_file: unused_element, unnecessary_cast


/// Connected Subnet properties.
class ConnectedSubnetResponse {
  /// Switch configuration description.
  final String? annotation;
  /// Prefix of the Connected Subnet.
  final String prefix;

  /// Creates a new [ConnectedSubnetResponse].
  /// [annotation] Switch configuration description.
  /// [prefix] Prefix of the Connected Subnet.
  ConnectedSubnetResponse({
    this.annotation,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'prefix': prefix,
    };
  }

  factory ConnectedSubnetResponse.fromMap(Map<String, dynamic> map) {
    return ConnectedSubnetResponse(
      annotation: map['annotation'] == null ? null : map['annotation'] as String,
      prefix: map['prefix'] as String,
    );
  }
}

