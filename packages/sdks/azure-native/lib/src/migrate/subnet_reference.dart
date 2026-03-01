// ignore_for_file: unused_element, unnecessary_cast


/// Defines reference to subnet.
class SubnetReference {
  /// Gets the name of the proxy resource on the target side.
  final String? name;
  /// Gets the ARM resource ID of the tracked resource being referenced.
  final String sourceArmResourceId;

  /// Creates a new [SubnetReference].
  /// [name] Gets the name of the proxy resource on the target side.
  /// [sourceArmResourceId] Gets the ARM resource ID of the tracked resource being referenced.
  SubnetReference({
    this.name,
    required this.sourceArmResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sourceArmResourceId': sourceArmResourceId,
    };
  }

  factory SubnetReference.fromMap(Map<String, dynamic> map) {
    return SubnetReference(
      name: map['name'] == null ? null : map['name'] as String,
      sourceArmResourceId: map['sourceArmResourceId'] as String,
    );
  }
}

