// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClusterMaintenancePolicy {
  /// The day for the service window of the Kubernetes cluster.
  final String day;
  /// The duration of the operation.
  final String duration;
  /// The start time of the upgrade operation.
  final String startTime;

  /// Creates a new [GetKubernetesClusterMaintenancePolicy].
  /// [day] The day for the service window of the Kubernetes cluster.
  /// [duration] The duration of the operation.
  /// [startTime] The start time of the upgrade operation.
  GetKubernetesClusterMaintenancePolicy({
    required this.day,
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'duration': duration,
      'startTime': startTime,
    };
  }

  factory GetKubernetesClusterMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterMaintenancePolicy(
      day: map['day'] as String,
      duration: map['duration'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

