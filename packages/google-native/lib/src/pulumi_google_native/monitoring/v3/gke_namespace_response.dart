// ignore_for_file: unused_element, unnecessary_cast

/// GKE Namespace. The field names correspond to the resource metadata labels on monitored resources that fall under a namespace (for example, k8s_container or k8s_pod).
class GkeNamespaceResponse {
  /// The name of the parent cluster.
  final String clusterName;

  /// The location of the parent cluster. This may be a zone or region.
  final String location;

  /// The name of this namespace.
  final String namespaceName;

  /// The project this resource lives in. For legacy services migrated from the Custom type, this may be a distinct project from the one parenting the service itself.
  final String project;

  GkeNamespaceResponse({
    required this.clusterName,
    required this.location,
    required this.namespaceName,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    map['location'] = location;
    map['namespaceName'] = namespaceName;
    map['project'] = project;
    return map;
  }

  factory GkeNamespaceResponse.fromMap(Map<String, dynamic> map) {
    return GkeNamespaceResponse(
      clusterName: map['clusterName'] as String,
      location: map['location'] as String,
      namespaceName: map['namespaceName'] as String,
      project: map['project'] as String,
    );
  }
}
