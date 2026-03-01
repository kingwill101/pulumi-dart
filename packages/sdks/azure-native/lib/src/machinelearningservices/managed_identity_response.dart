// ignore_for_file: unused_element, unnecessary_cast


/// Managed identity configuration.
class ManagedIdentityResponse {
  /// Specifies a user-assigned identity by client ID. For system-assigned, do not set this field.
  final String? clientId;
  /// Enum to determine identity framework.
  /// Expected value is 'Managed'.
  final String identityType;
  /// Specifies a user-assigned identity by object ID. For system-assigned, do not set this field.
  final String? objectId;
  /// Specifies a user-assigned identity by ARM resource ID. For system-assigned, do not set this field.
  final String? resourceId;

  /// Creates a new [ManagedIdentityResponse].
  /// [clientId] Specifies a user-assigned identity by client ID. For system-assigned, do not set this field.
  /// [identityType] Enum to determine identity framework.
  /// [objectId] Specifies a user-assigned identity by object ID. For system-assigned, do not set this field.
  /// [resourceId] Specifies a user-assigned identity by ARM resource ID. For system-assigned, do not set this field.
  ManagedIdentityResponse({
    this.clientId,
    required this.identityType,
    this.objectId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'identityType': identityType,
      'objectId': ?objectId,
      'resourceId': ?resourceId,
    };
  }

  factory ManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityResponse(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      identityType: map['identityType'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

