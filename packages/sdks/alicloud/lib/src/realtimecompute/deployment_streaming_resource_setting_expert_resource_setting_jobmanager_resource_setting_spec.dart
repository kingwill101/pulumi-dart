// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentStreamingResourceSettingExpertResourceSettingJobmanagerResourceSettingSpec {
  final pulumi.Input<double>? cpu;
  final pulumi.Input<String>? memory;

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
      cpu: map['cpu'] == null ? null : (map['cpu']! as double).input(),
      memory: map['memory'] == null ? null : (map['memory']! as String).input(),
    );
  }
}

