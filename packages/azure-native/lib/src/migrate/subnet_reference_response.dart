// ignore_for_file: unused_element, unnecessary_cast


/// Defines reference to subnet.
class SubnetReferenceResponse {
  /// Gets the name of the proxy resource on the target side.
  final String? name;
  /// Gets the ARM resource ID of the tracked resource being referenced.
  final String sourceArmResourceId;

  /// Creates a new [SubnetReferenceResponse].
  /// [name] Gets the name of the proxy resource on the target side.
  /// [sourceArmResourceId] Gets the ARM resource ID of the tracked resource being referenced.
  SubnetReferenceResponse({
    this.name,
    required this.sourceArmResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sourceArmResourceId': sourceArmResourceId,
    };
  }

  factory SubnetReferenceResponse.fromMap(Map<String, dynamic> map) {
    return SubnetReferenceResponse(
      name: map['name'] == null ? null : map['name'] as String,
      sourceArmResourceId: map['sourceArmResourceId'] as String,
    );
  }
}

