// ignore_for_file: unused_element, unnecessary_cast


/// Non secret deployment resource id reference.
class OpenDeploymentResourceReferenceResponse {
  /// Resource ID.
  final String? id;
  /// The resource reference arm id type.
  /// Expected value is 'Open'.
  final String idType;

  /// Creates a new [OpenDeploymentResourceReferenceResponse].
  /// [id] Resource ID.
  /// [idType] The resource reference arm id type.
  OpenDeploymentResourceReferenceResponse({
    this.id,
    required this.idType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'idType': idType,
    };
  }

  factory OpenDeploymentResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return OpenDeploymentResourceReferenceResponse(
      id: map['id'] == null ? null : map['id'] as String,
      idType: map['idType'] as String,
    );
  }
}

