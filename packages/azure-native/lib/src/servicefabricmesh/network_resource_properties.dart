// ignore_for_file: unused_element, unnecessary_cast


/// Describes properties of a network resource.
class NetworkResourceProperties {
  /// User readable description of the network.
  final String? description;
  /// The type of a Service Fabric container network.
  /// Expected value is 'NetworkResourceProperties'.
  final String kind;

  /// Creates a new [NetworkResourceProperties].
  /// [description] User readable description of the network.
  /// [kind] The type of a Service Fabric container network.
  NetworkResourceProperties({
    this.description,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'kind': kind,
    };
  }

  factory NetworkResourceProperties.fromMap(Map<String, dynamic> map) {
    return NetworkResourceProperties(
      description: map['description'] == null ? null : map['description'] as String,
      kind: map['kind'] as String,
    );
  }
}

