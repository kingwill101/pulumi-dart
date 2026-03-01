// ignore_for_file: unused_element, unnecessary_cast


class DeploymentStreamingResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec {
  final double? cpu;
  final String? memory;

  /// Creates a new [DeploymentStreamingResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec].
  /// [cpu] Optional.
  /// [memory] Optional.
  DeploymentStreamingResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory DeploymentStreamingResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec.fromMap(Map<String, dynamic> map) {
    return DeploymentStreamingResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec(
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}

