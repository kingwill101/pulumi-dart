// ignore_for_file: unused_element, unnecessary_cast


/// Connected Subnet properties.
class ConnectedSubnet {
  /// Switch configuration description.
  final String? annotation;
  /// Prefix of the Connected Subnet.
  final String prefix;

  /// Creates a new [ConnectedSubnet].
  /// [annotation] Switch configuration description.
  /// [prefix] Prefix of the Connected Subnet.
  ConnectedSubnet({
    this.annotation,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'prefix': prefix,
    };
  }

  factory ConnectedSubnet.fromMap(Map<String, dynamic> map) {
    return ConnectedSubnet(
      annotation: map['annotation'] == null ? null : map['annotation'] as String,
      prefix: map['prefix'] as String,
    );
  }
}

