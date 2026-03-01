// ignore_for_file: unused_element, unnecessary_cast


class DeploymentBatchResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec {
  final double? cpu;
  final String? memory;

  /// Creates a new [DeploymentBatchResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec].
  /// [cpu] Optional.
  /// [memory] Optional.
  DeploymentBatchResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory DeploymentBatchResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec.fromMap(Map<String, dynamic> map) {
    return DeploymentBatchResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec(
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}

