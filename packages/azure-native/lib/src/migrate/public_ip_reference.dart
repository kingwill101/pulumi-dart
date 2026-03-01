// ignore_for_file: unused_element, unnecessary_cast


/// Defines reference to a public IP.
class PublicIpReference {
  /// Gets the ARM resource ID of the tracked resource being referenced.
  final String sourceArmResourceId;

  /// Creates a new [PublicIpReference].
  /// [sourceArmResourceId] Gets the ARM resource ID of the tracked resource being referenced.
  PublicIpReference({
    required this.sourceArmResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceArmResourceId': sourceArmResourceId,
    };
  }

  factory PublicIpReference.fromMap(Map<String, dynamic> map) {
    return PublicIpReference(
      sourceArmResourceId: map['sourceArmResourceId'] as String,
    );
  }
}

