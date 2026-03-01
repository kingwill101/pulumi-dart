// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Resource ID for a Network Security Group.
class NetworkSecurityGroupArmReference {
  /// The Azure Resource ID for a Network Security Group.
  final String? id;

  /// Creates a new [NetworkSecurityGroupArmReference].
  /// [id] The Azure Resource ID for a Network Security Group.
  NetworkSecurityGroupArmReference({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory NetworkSecurityGroupArmReference.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupArmReference(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

