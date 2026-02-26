// ignore_for_file: unused_element, unnecessary_cast

class RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying {
  /// API Group of a Kubernetes resource, e.g.
  /// "apiextensions.k8s.io", "storage.k8s.io", etc.
  /// Use empty string for core group.
  final String? resourceGroup;

  /// Kind of a Kubernetes resource, e.g.
  /// "CustomResourceDefinition", "StorageClass", etc.
  final String? resourceKind;

  RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying({
    this.resourceGroup,
    this.resourceKind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resourceGroupValue = resourceGroup;
    if (resourceGroupValue != null) {
      map['resourceGroup'] = resourceGroupValue;
    }
    final resourceKindValue = resourceKind;
    if (resourceKindValue != null) {
      map['resourceKind'] = resourceKindValue;
    }
    return map;
  }

  factory RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying.fromMap(
      Map<String, dynamic> map) {
    return RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying(
      resourceGroup:
          map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      resourceKind:
          map['resourceKind'] == null ? null : map['resourceKind'] as String,
    );
  }
}
