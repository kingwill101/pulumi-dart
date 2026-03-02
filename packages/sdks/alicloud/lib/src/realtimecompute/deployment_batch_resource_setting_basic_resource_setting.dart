// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_batch_resource_setting_basic_resource_setting_jobmanager_resource_setting_spec.dart';
import 'deployment_batch_resource_setting_basic_resource_setting_taskmanager_resource_setting_spec.dart';

class DeploymentBatchResourceSettingBasicResourceSetting {
  final pulumi.Input<DeploymentBatchResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec>? jobmanagerResourceSettingSpec;
  final pulumi.Input<int>? parallelism;
  final pulumi.Input<DeploymentBatchResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec>? taskmanagerResourceSettingSpec;

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
      'jobmanagerResourceSettingSpec': ?pulumi.Input.mapOptionalInputValue<DeploymentBatchResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec, Map<String, dynamic>>(jobmanagerResourceSettingSpec, (value) => value.toMap()),
      'parallelism': ?parallelism,
      'taskmanagerResourceSettingSpec': ?pulumi.Input.mapOptionalInputValue<DeploymentBatchResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec, Map<String, dynamic>>(taskmanagerResourceSettingSpec, (value) => value.toMap()),
    };
  }

  factory DeploymentBatchResourceSettingBasicResourceSetting.fromMap(Map<String, dynamic> map) {
    return DeploymentBatchResourceSettingBasicResourceSetting(
      jobmanagerResourceSettingSpec: map['jobmanagerResourceSettingSpec'] == null ? null : (DeploymentBatchResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec.fromMap((map['jobmanagerResourceSettingSpec'] as Map).cast<String, dynamic>())).input(),
      parallelism: map['parallelism'] == null ? null : (map['parallelism'] as int).input(),
      taskmanagerResourceSettingSpec: map['taskmanagerResourceSettingSpec'] == null ? null : (DeploymentBatchResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec.fromMap((map['taskmanagerResourceSettingSpec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

