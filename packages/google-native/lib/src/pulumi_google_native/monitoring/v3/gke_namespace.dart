// ignore_for_file: unused_element, unnecessary_cast

/// GKE Namespace. The field names correspond to the resource metadata labels on monitored resources that fall under a namespace (for example, k8s_container or k8s_pod).
class GkeNamespace {
  /// The name of the parent cluster.
  final String? clusterName;

  /// The location of the parent cluster. This may be a zone or region.
  final String? location;

  /// The name of this namespace.
  final String? namespaceName;

  GkeNamespace({
    this.clusterName,
    this.location,
    this.namespaceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterNameValue = clusterName;
    if (clusterNameValue != null) {
      map['clusterName'] = clusterNameValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final namespaceNameValue = namespaceName;
    if (namespaceNameValue != null) {
      map['namespaceName'] = namespaceNameValue;
    }
    return map;
  }

  factory GkeNamespace.fromMap(Map<String, dynamic> map) {
    return GkeNamespace(
      clusterName:
          map['clusterName'] == null ? null : map['clusterName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      namespaceName:
          map['namespaceName'] == null ? null : map['namespaceName'] as String,
    );
  }
}
