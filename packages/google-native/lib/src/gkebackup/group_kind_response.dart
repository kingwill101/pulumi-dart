// ignore_for_file: unused_element, unnecessary_cast

/// This is a direct map to the Kubernetes GroupKind type [GroupKind](https://godoc.org/k8s.io/apimachinery/pkg/runtime/schema#GroupKind) and is used for identifying specific "types" of resources to restore.
class GroupKindResponse {
  /// Optional. API group string of a Kubernetes resource, e.g. "apiextensions.k8s.io", "storage.k8s.io", etc. Note: use empty string for core API group
  final String resourceGroup;

  /// Optional. Kind of a Kubernetes resource, must be in UpperCamelCase (PascalCase) and singular form. E.g. "CustomResourceDefinition", "StorageClass", etc.
  final String resourceKind;

  /// Creates a new [GroupKindResponse].
  /// [resourceGroup] Optional. API group string of a Kubernetes resource, e.g. "apiextensions.k8s.io", "storage.k8s.io", etc. Note: use empty string for core API group
  /// [resourceKind] Optional. Kind of a Kubernetes resource, must be in UpperCamelCase (PascalCase) and singular form. E.g. "CustomResourceDefinition", "StorageClass", etc.
  GroupKindResponse({required this.resourceGroup, required this.resourceKind});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroup': resourceGroup,
      'resourceKind': resourceKind,
    };
  }

  factory GroupKindResponse.fromMap(Map<String, dynamic> map) {
    return GroupKindResponse(
      resourceGroup: map['resourceGroup'] as String,
      resourceKind: map['resourceKind'] as String,
    );
  }
}
