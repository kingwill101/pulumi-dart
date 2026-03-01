// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_streaming_resource_setting_basic_resource_setting_jobmanager_resource_setting_spec.dart';
import 'deployment_streaming_resource_setting_basic_resource_setting_taskmanager_resource_setting_spec.dart';

class DeploymentStreamingResourceSettingBasicResourceSetting {
  final DeploymentStreamingResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec? jobmanagerResourceSettingSpec;
  final int? parallelism;
  final DeploymentStreamingResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec? taskmanagerResourceSettingSpec;

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
      'jobmanagerResourceSettingSpec': ?jobmanagerResourceSettingSpec == null ? null : jobmanagerResourceSettingSpec!.toMap(),
      'parallelism': ?parallelism,
      'taskmanagerResourceSettingSpec': ?taskmanagerResourceSettingSpec == null ? null : taskmanagerResourceSettingSpec!.toMap(),
    };
  }

  factory DeploymentStreamingResourceSettingBasicResourceSetting.fromMap(Map<String, dynamic> map) {
    return DeploymentStreamingResourceSettingBasicResourceSetting(
      jobmanagerResourceSettingSpec: map['jobmanagerResourceSettingSpec'] == null ? null : DeploymentStreamingResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec.fromMap((map['jobmanagerResourceSettingSpec'] as Map).cast<String, dynamic>()),
      parallelism: map['parallelism'] == null ? null : map['parallelism'] as int,
      taskmanagerResourceSettingSpec: map['taskmanagerResourceSettingSpec'] == null ? null : DeploymentStreamingResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec.fromMap((map['taskmanagerResourceSettingSpec'] as Map).cast<String, dynamic>()),
    );
  }
}

