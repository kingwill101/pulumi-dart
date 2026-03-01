// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Resource ID for a Network Security Group.
class NetworkSecurityGroupArmReferenceResponse {
  /// The Azure Resource ID for a Network Security Group.
  final String? id;

  /// Creates a new [NetworkSecurityGroupArmReferenceResponse].
  /// [id] The Azure Resource ID for a Network Security Group.
  NetworkSecurityGroupArmReferenceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory NetworkSecurityGroupArmReferenceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupArmReferenceResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

