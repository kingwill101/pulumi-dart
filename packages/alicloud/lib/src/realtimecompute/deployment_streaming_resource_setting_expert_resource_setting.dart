// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_streaming_resource_setting_expert_resource_setting_jobmanager_resource_setting_spec.dart';

class DeploymentStreamingResourceSettingExpertResourceSetting {
  final DeploymentStreamingResourceSettingExpertResourceSettingJobmanagerResourceSettingSpec? jobmanagerResourceSettingSpec;
  /// Resource plan for expert mode
  final String? resourcePlan;

  /// Creates a new [DeploymentStreamingResourceSettingExpertResourceSetting].
  /// [jobmanagerResourceSettingSpec] Optional.
  /// [resourcePlan] Resource plan for expert mode
  DeploymentStreamingResourceSettingExpertResourceSetting({
    this.jobmanagerResourceSettingSpec,
    this.resourcePlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobmanagerResourceSettingSpec': ?jobmanagerResourceSettingSpec == null ? null : jobmanagerResourceSettingSpec!.toMap(),
      'resourcePlan': ?resourcePlan,
    };
  }

  factory DeploymentStreamingResourceSettingExpertResourceSetting.fromMap(Map<String, dynamic> map) {
    return DeploymentStreamingResourceSettingExpertResourceSetting(
      jobmanagerResourceSettingSpec: map['jobmanagerResourceSettingSpec'] == null ? null : DeploymentStreamingResourceSettingExpertResourceSettingJobmanagerResourceSettingSpec.fromMap((map['jobmanagerResourceSettingSpec'] as Map).cast<String, dynamic>()),
      resourcePlan: map['resourcePlan'] == null ? null : map['resourcePlan'] as String,
    );
  }
}

