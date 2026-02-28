// ignore_for_file: unused_element, unnecessary_cast

/// A GKE Workload (Deployment, StatefulSet, etc). The field names correspond to the metadata labels on monitored resources that fall under a workload (for example, k8s_container or k8s_pod).
class GkeWorkloadResponse {
  /// The name of the parent cluster.
  final String clusterName;

  /// The location of the parent cluster. This may be a zone or region.
  final String location;

  /// The name of the parent namespace.
  final String namespaceName;

  /// The project this resource lives in. For legacy services migrated from the Custom type, this may be a distinct project from the one parenting the service itself.
  final String project;

  /// The name of this workload.
  final String topLevelControllerName;

  /// The type of this workload (for example, "Deployment" or "DaemonSet")
  final String topLevelControllerType;

  /// Creates a new [GkeWorkloadResponse].
  /// [clusterName] The name of the parent cluster.
  /// [location] The location of the parent cluster. This may be a zone or region.
  /// [namespaceName] The name of the parent namespace.
  /// [project] The project this resource lives in. For legacy services migrated from the Custom type, this may be a distinct project from the one parenting the service itself.
  /// [topLevelControllerName] The name of this workload.
  /// [topLevelControllerType] The type of this workload (for example, "Deployment" or "DaemonSet")
  GkeWorkloadResponse({
    required this.clusterName,
    required this.location,
    required this.namespaceName,
    required this.project,
    required this.topLevelControllerName,
    required this.topLevelControllerType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    map['location'] = location;
    map['namespaceName'] = namespaceName;
    map['project'] = project;
    map['topLevelControllerName'] = topLevelControllerName;
    map['topLevelControllerType'] = topLevelControllerType;
    return map;
  }

  factory GkeWorkloadResponse.fromMap(Map<String, dynamic> map) {
    return GkeWorkloadResponse(
      clusterName: map['clusterName'] as String,
      location: map['location'] as String,
      namespaceName: map['namespaceName'] as String,
      project: map['project'] as String,
      topLevelControllerName: map['topLevelControllerName'] as String,
      topLevelControllerType: map['topLevelControllerType'] as String,
    );
  }
}
