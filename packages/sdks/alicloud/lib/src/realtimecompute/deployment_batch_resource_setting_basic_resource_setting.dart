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
      jobmanagerResourceSettingSpec: (() { final guardedValue = map['jobmanagerResourceSettingSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentBatchResourceSettingBasicResourceSettingJobmanagerResourceSettingSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parallelism: (() { final guardedValue = map['parallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      taskmanagerResourceSettingSpec: (() { final guardedValue = map['taskmanagerResourceSettingSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentBatchResourceSettingBasicResourceSettingTaskmanagerResourceSettingSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

