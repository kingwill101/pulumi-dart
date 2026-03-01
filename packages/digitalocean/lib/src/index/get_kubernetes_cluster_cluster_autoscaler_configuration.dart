// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClusterClusterAutoscalerConfiguration {
  final List<String>? expanders;
  final String? scaleDownUnneededTime;
  final double? scaleDownUtilizationThreshold;

  /// Creates a new [GetKubernetesClusterClusterAutoscalerConfiguration].
  /// [expanders] Optional.
  /// [scaleDownUnneededTime] Optional.
  /// [scaleDownUtilizationThreshold] Optional.
  GetKubernetesClusterClusterAutoscalerConfiguration({
    this.expanders,
    this.scaleDownUnneededTime,
    this.scaleDownUtilizationThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expanders': ?expanders,
      'scaleDownUnneededTime': ?scaleDownUnneededTime,
      'scaleDownUtilizationThreshold': ?scaleDownUtilizationThreshold,
    };
  }

  factory GetKubernetesClusterClusterAutoscalerConfiguration.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterClusterAutoscalerConfiguration(
      expanders: map['expanders'] == null ? null : (map['expanders'] as List).cast<String>(),
      scaleDownUnneededTime: map['scaleDownUnneededTime'] == null ? null : map['scaleDownUnneededTime'] as String,
      scaleDownUtilizationThreshold: map['scaleDownUtilizationThreshold'] == null ? null : map['scaleDownUtilizationThreshold'] as double,
    );
  }
}

