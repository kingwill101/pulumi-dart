// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_role_compute.dart';
import 'kubernetes_role_storage.dart';

/// Kubernetes role resources
class KubernetesRoleResources {
  /// Kubernetes role compute resource
  final pulumi.Input<KubernetesRoleCompute> compute;
  /// Kubernetes role storage resource
  final pulumi.Input<KubernetesRoleStorage>? storage;

  /// Creates a new [KubernetesRoleResources].
  /// [compute] Kubernetes role compute resource
  /// [storage] Kubernetes role storage resource
  const KubernetesRoleResources({
    required this.compute,
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compute': pulumi.Input.mapInputValue<KubernetesRoleCompute, Map<String, dynamic>>(compute, (value) => value.toMap()),
      'storage': ?pulumi.Input.mapOptionalInputValue<KubernetesRoleStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
    };
  }

  factory KubernetesRoleResources.fromMap(Map<String, dynamic> map) {
    return KubernetesRoleResources(
      compute: pulumi.Input.fromValue(KubernetesRoleCompute.fromMap((map['compute']! as Map).cast<String, dynamic>())),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesRoleStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
