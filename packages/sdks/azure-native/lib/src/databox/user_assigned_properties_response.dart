// ignore_for_file: unused_element, unnecessary_cast


/// User assigned identity properties.
class UserAssignedPropertiesResponse {
  /// Arm resource id for user assigned identity to be used to fetch MSI token.
  final String? resourceId;

  /// Creates a new [UserAssignedPropertiesResponse].
  /// [resourceId] Arm resource id for user assigned identity to be used to fetch MSI token.
  UserAssignedPropertiesResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory UserAssignedPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedPropertiesResponse(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

