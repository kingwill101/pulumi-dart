// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kubernetes storage class info.
class KubernetesRoleStorageClassInfoResponse {
  /// Storage class name.
  final pulumi.Input<String> name;
  /// If provisioned storage is posix compliant.
  final pulumi.Input<String> posixCompliant;
  /// Storage class type.
  final pulumi.Input<String> type;

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
      name: (map['name'] as String).input(),
      posixCompliant: (map['posixCompliant'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

