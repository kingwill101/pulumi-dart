// ignore_for_file: unused_element, unnecessary_cast

/// This is a direct map to the Kubernetes GroupKind type [GroupKind](https://godoc.org/k8s.io/apimachinery/pkg/runtime/schema#GroupKind) and is used for identifying specific "types" of resources to restore.
class GroupKind {
  /// Optional. API group string of a Kubernetes resource, e.g. "apiextensions.k8s.io", "storage.k8s.io", etc. Note: use empty string for core API group
  final String? resourceGroup;

  /// Optional. Kind of a Kubernetes resource, must be in UpperCamelCase (PascalCase) and singular form. E.g. "CustomResourceDefinition", "StorageClass", etc.
  final String? resourceKind;

  GroupKind({
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

  factory GroupKind.fromMap(Map<String, dynamic> map) {
    return GroupKind(
      resourceGroup:
          map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      resourceKind:
          map['resourceKind'] == null ? null : map['resourceKind'] as String,
    );
  }
}
