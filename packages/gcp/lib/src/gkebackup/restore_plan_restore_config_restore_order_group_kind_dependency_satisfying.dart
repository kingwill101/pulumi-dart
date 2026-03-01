// ignore_for_file: unused_element, unnecessary_cast

class RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying {
  /// API Group of a Kubernetes resource, e.g.
  /// "apiextensions.k8s.io", "storage.k8s.io", etc.
  /// Use empty string for core group.
  final String? resourceGroup;

  /// Kind of a Kubernetes resource, e.g.
  /// "CustomResourceDefinition", "StorageClass", etc.
  final String? resourceKind;

  /// Creates a new [RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying].
  /// [resourceGroup] API Group of a Kubernetes resource, e.g.
  /// [resourceKind] Kind of a Kubernetes resource, e.g.
  RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying({
    this.resourceGroup,
    this.resourceKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroup': ?resourceGroup,
      'resourceKind': ?resourceKind,
    };
  }

  factory RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying(
      resourceGroup: map['resourceGroup'] == null
          ? null
          : map['resourceGroup'] as String,
      resourceKind: map['resourceKind'] == null
          ? null
          : map['resourceKind'] as String,
    );
  }
}
