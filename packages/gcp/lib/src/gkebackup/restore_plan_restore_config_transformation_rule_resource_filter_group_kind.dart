// ignore_for_file: unused_element, unnecessary_cast

class RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind {
  /// API Group string of a Kubernetes resource, e.g.
  /// "apiextensions.k8s.io", "storage.k8s.io", etc.
  /// Use empty string for core group.
  final String? resourceGroup;

  /// Kind of a Kubernetes resource, e.g.
  /// "CustomResourceDefinition", "StorageClass", etc.
  final String? resourceKind;

  /// Creates a new [RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind].
  /// [resourceGroup] API Group string of a Kubernetes resource, e.g.
  /// [resourceKind] Kind of a Kubernetes resource, e.g.
  RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind({
    this.resourceGroup,
    this.resourceKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroup': ?resourceGroup,
      'resourceKind': ?resourceKind,
    };
  }

  factory RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind(
      resourceGroup: map['resourceGroup'] == null
          ? null
          : map['resourceGroup'] as String,
      resourceKind: map['resourceKind'] == null
          ? null
          : map['resourceKind'] as String,
    );
  }
}
