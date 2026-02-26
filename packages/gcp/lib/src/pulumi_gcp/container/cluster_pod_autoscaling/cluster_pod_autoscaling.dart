// ignore_for_file: unused_element, unnecessary_cast

class ClusterPodAutoscaling {
  /// Enable the Horizontal Pod Autoscaling profile for this cluster.
  /// Acceptable values are:
  /// * `"NONE"`: Customers explicitly opt-out of HPA profiles.
  /// * `"PERFORMANCE"`: PERFORMANCE is used when customers opt-in to the performance HPA profile. In this profile we support a higher number of HPAs per cluster and faster metrics collection for workload autoscaling.
  /// See [HPAProfile](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#hpaprofile) for more details.
  final String hpaProfile;

  ClusterPodAutoscaling({
    required this.hpaProfile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hpaProfile'] = hpaProfile;
    return map;
  }

  factory ClusterPodAutoscaling.fromMap(Map<String, dynamic> map) {
    return ClusterPodAutoscaling(
      hpaProfile: map['hpaProfile'] as String,
    );
  }
}
