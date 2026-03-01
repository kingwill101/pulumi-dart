// ignore_for_file: unused_element, unnecessary_cast


/// Describes the properties of a secret resource.
class SecretResourcePropertiesResponse {
  /// The type of the content stored in the secret value. The value of this property is opaque to Service Fabric. Once set, the value of this property cannot be changed.
  final String? contentType;
  /// User readable description of the secret.
  final String? description;
  /// Describes the kind of secret.
  /// Expected value is 'SecretResourceProperties'.
  final String kind;
  /// State of the resource.
  final String provisioningState;
  /// Status of the resource.
  final String status;
  /// Gives additional information about the current status of the secret.
  final String statusDetails;

  /// Creates a new [SecretResourcePropertiesResponse].
  /// [contentType] The type of the content stored in the secret value. The value of this property is opaque to Service Fabric. Once set, the value of this property cannot be changed.
  /// [description] User readable description of the secret.
  /// [kind] Describes the kind of secret.
  /// [provisioningState] State of the resource.
  /// [status] Status of the resource.
  /// [statusDetails] Gives additional information about the current status of the secret.
  SecretResourcePropertiesResponse({
    this.contentType,
    this.description,
    required this.kind,
    required this.provisioningState,
    required this.status,
    required this.statusDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'description': ?description,
      'kind': kind,
      'provisioningState': provisioningState,
      'status': status,
      'statusDetails': statusDetails,
    };
  }

  factory SecretResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SecretResourcePropertiesResponse(
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      kind: map['kind'] as String,
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      statusDetails: map['statusDetails'] as String,
    );
  }
}

