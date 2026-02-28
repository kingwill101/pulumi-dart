// ignore_for_file: unused_element, unnecessary_cast

/// A GKE Workload (Deployment, StatefulSet, etc). The field names correspond to the metadata labels on monitored resources that fall under a workload (for example, k8s_container or k8s_pod).
class GkeWorkload {
  /// The name of the parent cluster.
  final String? clusterName;

  /// The location of the parent cluster. This may be a zone or region.
  final String? location;

  /// The name of the parent namespace.
  final String? namespaceName;

  /// The name of this workload.
  final String? topLevelControllerName;

  /// The type of this workload (for example, "Deployment" or "DaemonSet")
  final String? topLevelControllerType;

  /// Creates a new [GkeWorkload].
  /// [clusterName] The name of the parent cluster.
  /// [location] The location of the parent cluster. This may be a zone or region.
  /// [namespaceName] The name of the parent namespace.
  /// [topLevelControllerName] The name of this workload.
  /// [topLevelControllerType] The type of this workload (for example, "Deployment" or "DaemonSet")
  GkeWorkload({
    this.clusterName,
    this.location,
    this.namespaceName,
    this.topLevelControllerName,
    this.topLevelControllerType,
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
    final topLevelControllerNameValue = topLevelControllerName;
    if (topLevelControllerNameValue != null) {
      map['topLevelControllerName'] = topLevelControllerNameValue;
    }
    final topLevelControllerTypeValue = topLevelControllerType;
    if (topLevelControllerTypeValue != null) {
      map['topLevelControllerType'] = topLevelControllerTypeValue;
    }
    return map;
  }

  factory GkeWorkload.fromMap(Map<String, dynamic> map) {
    return GkeWorkload(
      clusterName:
          map['clusterName'] == null ? null : map['clusterName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      namespaceName:
          map['namespaceName'] == null ? null : map['namespaceName'] as String,
      topLevelControllerName: map['topLevelControllerName'] == null
          ? null
          : map['topLevelControllerName'] as String,
      topLevelControllerType: map['topLevelControllerType'] == null
          ? null
          : map['topLevelControllerType'] as String,
    );
  }
}
