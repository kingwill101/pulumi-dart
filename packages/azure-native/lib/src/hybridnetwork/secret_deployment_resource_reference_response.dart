// ignore_for_file: unused_element, unnecessary_cast


/// Secret deployment resource id reference.
class SecretDeploymentResourceReferenceResponse {
  /// The resource reference arm id type.
  /// Expected value is 'Secret'.
  final String idType;

  /// Creates a new [SecretDeploymentResourceReferenceResponse].
  /// [idType] The resource reference arm id type.
  SecretDeploymentResourceReferenceResponse({
    required this.idType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idType': idType,
    };
  }

  factory SecretDeploymentResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return SecretDeploymentResourceReferenceResponse(
      idType: map['idType'] as String,
    );
  }
}

