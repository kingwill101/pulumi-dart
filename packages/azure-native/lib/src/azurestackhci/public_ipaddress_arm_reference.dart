// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Resource ID of a Public IP resource
class PublicIPAddressArmReference {
  /// The Azure Resource ID of a Public IP resource
  final String? resourceId;

  /// Creates a new [PublicIPAddressArmReference].
  /// [resourceId] The Azure Resource ID of a Public IP resource
  PublicIPAddressArmReference({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory PublicIPAddressArmReference.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressArmReference(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

