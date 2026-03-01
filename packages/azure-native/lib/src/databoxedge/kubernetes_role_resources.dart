// ignore_for_file: unused_element, unnecessary_cast

import 'kubernetes_role_compute.dart';
import 'kubernetes_role_storage.dart';

/// Kubernetes role resources
class KubernetesRoleResources {
  /// Kubernetes role compute resource
  final KubernetesRoleCompute compute;
  /// Kubernetes role storage resource
  final KubernetesRoleStorage? storage;

  /// Creates a new [KubernetesRoleResources].
  /// [compute] Kubernetes role compute resource
  /// [storage] Kubernetes role storage resource
  KubernetesRoleResources({
    required this.compute,
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compute': compute.toMap(),
      'storage': ?storage == null ? null : storage!.toMap(),
    };
  }

  factory KubernetesRoleResources.fromMap(Map<String, dynamic> map) {
    return KubernetesRoleResources(
      compute: KubernetesRoleCompute.fromMap((map['compute'] as Map).cast<String, dynamic>()),
      storage: map['storage'] == null ? null : KubernetesRoleStorage.fromMap((map['storage'] as Map).cast<String, dynamic>()),
    );
  }
}

