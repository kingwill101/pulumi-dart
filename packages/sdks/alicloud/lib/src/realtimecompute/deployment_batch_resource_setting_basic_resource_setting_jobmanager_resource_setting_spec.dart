// ignore_for_file: unused_element, unnecessary_cast


class DeploymentBatchResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec {
  final double? cpu;
  final String? memory;

  /// Creates a new [DeploymentBatchResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec].
  /// [cpu] Optional.
  /// [memory] Optional.
  DeploymentBatchResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory DeploymentBatchResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec.fromMap(Map<String, dynamic> map) {
    return DeploymentBatchResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec(
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}

