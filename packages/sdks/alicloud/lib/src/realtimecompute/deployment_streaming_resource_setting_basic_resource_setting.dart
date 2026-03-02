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
      jobmanagerResourceSettingSpec: map['jobmanagerResourceSettingSpec'] == null ? null : (DeploymentStreamingResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec.fromMap((map['jobmanagerResourceSettingSpec'] as Map).cast<String, dynamic>())).input(),
      parallelism: map['parallelism'] == null ? null : (map['parallelism'] as int).input(),
      taskmanagerResourceSettingSpec: map['taskmanagerResourceSettingSpec'] == null ? null : (DeploymentStreamingResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec.fromMap((map['taskmanagerResourceSettingSpec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

