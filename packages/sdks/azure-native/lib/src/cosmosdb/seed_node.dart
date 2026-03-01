// ignore_for_file: unused_element, unnecessary_cast


class SeedNode {
  /// IP address of this seed node.
  final String? ipAddress;

  /// Creates a new [SeedNode].
  /// [ipAddress] IP address of this seed node.
  SeedNode({
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
    };
  }

  factory SeedNode.fromMap(Map<String, dynamic> map) {
    return SeedNode(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
    );
  }
}

