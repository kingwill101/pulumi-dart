// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_streaming_resource_setting_expert_resource_setting_jobmanager_resource_setting_spec.dart';

class DeploymentStreamingResourceSettingExpertResourceSetting {
  final pulumi.Input<DeploymentStreamingResourceSettingExpertResourceSettingJobmanagerResourceSettingSpec>? jobmanagerResourceSettingSpec;
  /// Resource plan for expert mode
  final pulumi.Input<String>? resourcePlan;

  /// Creates a new [DeploymentStreamingResourceSettingExpertResourceSetting].
  /// [jobmanagerResourceSettingSpec] Optional.
  /// [resourcePlan] Resource plan for expert mode
  const DeploymentStreamingResourceSettingExpertResourceSetting({
    this.jobmanagerResourceSettingSpec,
    this.resourcePlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobmanagerResourceSettingSpec': ?pulumi.Input.mapOptionalInputValue<DeploymentStreamingResourceSettingExpertResourceSettingJobmanagerResourceSettingSpec, Map<String, dynamic>>(jobmanagerResourceSettingSpec, (value) => value.toMap()),
      'resourcePlan': ?resourcePlan,
    };
  }

  factory DeploymentStreamingResourceSettingExpertResourceSetting.fromMap(Map<String, dynamic> map) {
    return DeploymentStreamingResourceSettingExpertResourceSetting(
      jobmanagerResourceSettingSpec: (() { final guardedValue = map['jobmanagerResourceSettingSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStreamingResourceSettingExpertResourceSettingJobmanagerResourceSettingSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourcePlan: (() { final guardedValue = map['resourcePlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

