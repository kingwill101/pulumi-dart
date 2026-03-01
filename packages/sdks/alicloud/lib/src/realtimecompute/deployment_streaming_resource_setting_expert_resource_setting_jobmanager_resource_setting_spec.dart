// ignore_for_file: unused_element, unnecessary_cast


class DeploymentStreamingResourceSettingExpertResourceSettingJobmanagerResourceSettingSpec {
  final double? cpu;
  final String? memory;

  /// Creates a new [DeploymentStreamingResourceSettingExpertResourceSettingJobmanagerResourceSettingSpec].
  /// [cpu] Optional.
  /// [memory] Optional.
  DeploymentStreamingResourceSettingExpertResourceSettingJobmanagerResourceSettingSpec({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory DeploymentStreamingResourceSettingExpertResourceSettingJobmanagerResourceSettingSpec.fromMap(Map<String, dynamic> map) {
    return DeploymentStreamingResourceSettingExpertResourceSettingJobmanagerResourceSettingSpec(
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}

