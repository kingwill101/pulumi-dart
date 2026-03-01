// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_batch_resource_setting_basic_resource_setting_jobmanager_resource_setting_spec.dart';
import 'deployment_batch_resource_setting_basic_resource_setting_taskmanager_resource_setting_spec.dart';

class DeploymentBatchResourceSettingBasicResourceSetting {
  final DeploymentBatchResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec? jobmanagerResourceSettingSpec;
  final int? parallelism;
  final DeploymentBatchResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec? taskmanagerResourceSettingSpec;

  /// Creates a new [DeploymentBatchResourceSettingBasicResourceSetting].
  /// [jobmanagerResourceSettingSpec] Optional.
  /// [parallelism] Optional.
  /// [taskmanagerResourceSettingSpec] Optional.
  DeploymentBatchResourceSettingBasicResourceSetting({
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

  factory DeploymentBatchResourceSettingBasicResourceSetting.fromMap(Map<String, dynamic> map) {
    return DeploymentBatchResourceSettingBasicResourceSetting(
      jobmanagerResourceSettingSpec: map['jobmanagerResourceSettingSpec'] == null ? null : DeploymentBatchResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec.fromMap((map['jobmanagerResourceSettingSpec'] as Map).cast<String, dynamic>()),
      parallelism: map['parallelism'] == null ? null : map['parallelism'] as int,
      taskmanagerResourceSettingSpec: map['taskmanagerResourceSettingSpec'] == null ? null : DeploymentBatchResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec.fromMap((map['taskmanagerResourceSettingSpec'] as Map).cast<String, dynamic>()),
    );
  }
}

