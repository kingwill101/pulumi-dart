// ignore_for_file: unused_element, unnecessary_cast


/// The identity management.
class ResourceTypeRegistrationPropertiesIdentityManagementResponse {
  /// The application id.
  final String? applicationId;
  /// The application ids.
  final List<String>? applicationIds;
  /// The delegation app ids.
  final List<String>? delegationAppIds;
  /// The type.
  final String? type;

  /// Creates a new [ResourceTypeRegistrationPropertiesIdentityManagementResponse].
  /// [applicationId] The application id.
  /// [applicationIds] The application ids.
  /// [delegationAppIds] The delegation app ids.
  /// [type] The type.
  ResourceTypeRegistrationPropertiesIdentityManagementResponse({
    this.applicationId,
    this.applicationIds,
    this.delegationAppIds,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'applicationIds': ?applicationIds,
      'delegationAppIds': ?delegationAppIds,
      'type': ?type,
    };
  }

  factory ResourceTypeRegistrationPropertiesIdentityManagementResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesIdentityManagementResponse(
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      applicationIds: map['applicationIds'] == null ? null : (map['applicationIds'] as List).cast<String>(),
      delegationAppIds: map['delegationAppIds'] == null ? null : (map['delegationAppIds'] as List).cast<String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

