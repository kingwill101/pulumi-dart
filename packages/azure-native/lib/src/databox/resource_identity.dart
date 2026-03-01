// ignore_for_file: unused_element, unnecessary_cast


/// Msi identity details of the resource
class ResourceIdentity {
  /// Identity type
  final String? type;
  /// User Assigned Identities
  final List<String>? userAssignedIdentities;

  /// Creates a new [ResourceIdentity].
  /// [type] Identity type
  /// [userAssignedIdentities] User Assigned Identities
  ResourceIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ResourceIdentity.fromMap(Map<String, dynamic> map) {
    return ResourceIdentity(
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

