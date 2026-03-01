// ignore_for_file: unused_element, unnecessary_cast


/// Non secret deployment resource id reference.
class OpenDeploymentResourceReference {
  /// Resource ID.
  final String? id;
  /// The resource reference arm id type.
  /// Expected value is 'Open'.
  final String idType;

  /// Creates a new [OpenDeploymentResourceReference].
  /// [id] Resource ID.
  /// [idType] The resource reference arm id type.
  OpenDeploymentResourceReference({
    this.id,
    required this.idType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'idType': idType,
    };
  }

  factory OpenDeploymentResourceReference.fromMap(Map<String, dynamic> map) {
    return OpenDeploymentResourceReference(
      id: map['id'] == null ? null : map['id'] as String,
      idType: map['idType'] as String,
    );
  }
}

