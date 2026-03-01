// ignore_for_file: unused_element, unnecessary_cast


/// Secret deployment resource id reference.
class SecretDeploymentResourceReference {
  /// Resource ID.
  final String? id;
  /// The resource reference arm id type.
  /// Expected value is 'Secret'.
  final String idType;

  /// Creates a new [SecretDeploymentResourceReference].
  /// [id] Resource ID.
  /// [idType] The resource reference arm id type.
  SecretDeploymentResourceReference({
    this.id,
    required this.idType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'idType': idType,
    };
  }

  factory SecretDeploymentResourceReference.fromMap(Map<String, dynamic> map) {
    return SecretDeploymentResourceReference(
      id: map['id'] == null ? null : map['id'] as String,
      idType: map['idType'] as String,
    );
  }
}

