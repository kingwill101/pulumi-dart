// ignore_for_file: unused_element, unnecessary_cast


/// The properties of managed identity, specifically including type and resource ID.
class ManagedIdentityProperties {
  /// The type of managed identity.
  final String type;
  /// The resource id of the managed identity.
  final String? userAssignedIdentityResourceId;

  /// Creates a new [ManagedIdentityProperties].
  /// [type] The type of managed identity.
  /// [userAssignedIdentityResourceId] The resource id of the managed identity.
  ManagedIdentityProperties({
    required this.type,
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory ManagedIdentityProperties.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityProperties(
      type: map['type'] as String,
      userAssignedIdentityResourceId: map['userAssignedIdentityResourceId'] == null ? null : map['userAssignedIdentityResourceId'] as String,
    );
  }
}

