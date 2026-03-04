// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentStreamingResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec {
  final pulumi.Input<double>? cpu;
  final pulumi.Input<String>? memory;

  /// Creates a new [DeploymentStreamingResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec].
  /// [cpu] Optional.
  /// [memory] Optional.
  DeploymentStreamingResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpu': ?cpu, 'memory': ?memory};
  }

  factory DeploymentStreamingResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentStreamingResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec(
      cpu: (() {
        final guardedValue = map['cpu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      memory: (() {
        final guardedValue = map['memory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
