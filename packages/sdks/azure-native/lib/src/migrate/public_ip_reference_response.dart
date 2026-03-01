// ignore_for_file: unused_element, unnecessary_cast


/// Defines reference to a public IP.
class PublicIpReferenceResponse {
  /// Gets the ARM resource ID of the tracked resource being referenced.
  final String sourceArmResourceId;

  /// Creates a new [PublicIpReferenceResponse].
  /// [sourceArmResourceId] Gets the ARM resource ID of the tracked resource being referenced.
  PublicIpReferenceResponse({
    required this.sourceArmResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceArmResourceId': sourceArmResourceId,
    };
  }

  factory PublicIpReferenceResponse.fromMap(Map<String, dynamic> map) {
    return PublicIpReferenceResponse(
      sourceArmResourceId: map['sourceArmResourceId'] as String,
    );
  }
}

