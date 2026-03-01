// ignore_for_file: unused_element, unnecessary_cast


class DeploymentStreamingResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec {
  final double? cpu;
  final String? memory;

  /// Creates a new [DeploymentStreamingResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec].
  /// [cpu] Optional.
  /// [memory] Optional.
  DeploymentStreamingResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory DeploymentStreamingResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec.fromMap(Map<String, dynamic> map) {
    return DeploymentStreamingResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec(
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}

