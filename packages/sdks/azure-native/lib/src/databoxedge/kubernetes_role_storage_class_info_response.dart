// ignore_for_file: unused_element, unnecessary_cast


/// Kubernetes storage class info.
class KubernetesRoleStorageClassInfoResponse {
  /// Storage class name.
  final String name;
  /// If provisioned storage is posix compliant.
  final String posixCompliant;
  /// Storage class type.
  final String type;

  /// Creates a new [KubernetesRoleStorageClassInfoResponse].
  /// [name] Storage class name.
  /// [posixCompliant] If provisioned storage is posix compliant.
  /// [type] Storage class type.
  KubernetesRoleStorageClassInfoResponse({
    required this.name,
    required this.posixCompliant,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'posixCompliant': posixCompliant,
      'type': type,
    };
  }

  factory KubernetesRoleStorageClassInfoResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesRoleStorageClassInfoResponse(
      name: map['name'] as String,
      posixCompliant: map['posixCompliant'] as String,
      type: map['type'] as String,
    );
  }
}

