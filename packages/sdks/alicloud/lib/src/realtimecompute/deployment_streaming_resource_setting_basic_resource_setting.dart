// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_streaming_resource_setting_basic_resource_setting_jobmanager_resource_setting_spec.dart';
import 'deployment_streaming_resource_setting_basic_resource_setting_taskmanager_resource_setting_spec.dart';

class DeploymentStreamingResourceSettingBasicResourceSetting {
  final pulumi.Input<DeploymentStreamingResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec>? jobmanagerResourceSettingSpec;
  final pulumi.Input<int>? parallelism;
  final pulumi.Input<DeploymentStreamingResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec>? taskmanagerResourceSettingSpec;

  /// Creates a new [DeploymentStreamingResourceSettingBasicResourceSetting].
  /// [jobmanagerResourceSettingSpec] Optional.
  /// [parallelism] Optional.
  /// [taskmanagerResourceSettingSpec] Optional.
  DeploymentStreamingResourceSettingBasicResourceSetting({
    this.jobmanagerResourceSettingSpec,
    this.parallelism,
    this.taskmanagerResourceSettingSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobmanagerResourceSettingSpec': ?pulumi.Input.mapOptionalInputValue<DeploymentStreamingResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec, Map<String, dynamic>>(jobmanagerResourceSettingSpec, (value) => value.toMap()),
      'parallelism': ?parallelism,
      'taskmanagerResourceSettingSpec': ?pulumi.Input.mapOptionalInputValue<DeploymentStreamingResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec, Map<String, dynamic>>(taskmanagerResourceSettingSpec, (value) => value.toMap()),
    };
  }

  factory DeploymentStreamingResourceSettingBasicResourceSetting.fromMap(Map<String, dynamic> map) {
    return DeploymentStreamingResourceSettingBasicResourceSetting(
      jobmanagerResourceSettingSpec: (() { final guardedValue = map['jobmanagerResourceSettingSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStreamingResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parallelism: (() { final guardedValue = map['parallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      taskmanagerResourceSettingSpec: (() { final guardedValue = map['taskmanagerResourceSettingSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStreamingResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

