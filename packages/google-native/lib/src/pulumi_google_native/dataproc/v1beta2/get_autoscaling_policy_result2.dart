// ignore_for_file: unused_element, unnecessary_cast

import 'basic_autoscaling_algorithm_response2.dart';
import 'instance_group_autoscaling_policy_config_response2.dart';

/// Result data returned by getAutoscalingPolicy.
class GetAutoscalingPolicyResult2 {
  final BasicAutoscalingAlgorithmResponse2 basicAlgorithm;

  /// The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  final String name;

  /// Optional. Describes how the autoscaler will operate for secondary workers.
  final InstanceGroupAutoscalingPolicyConfigResponse2 secondaryWorkerConfig;

  /// Describes how the autoscaler will operate for primary workers.
  final InstanceGroupAutoscalingPolicyConfigResponse2 workerConfig;

  GetAutoscalingPolicyResult2({
    required this.basicAlgorithm,
    required this.name,
    required this.secondaryWorkerConfig,
    required this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['basicAlgorithm'] = basicAlgorithm.toMap();
    map['name'] = name;
    map['secondaryWorkerConfig'] = secondaryWorkerConfig.toMap();
    map['workerConfig'] = workerConfig.toMap();
    return map;
  }

  factory GetAutoscalingPolicyResult2.fromMap(Map<String, dynamic> map) {
    return GetAutoscalingPolicyResult2(
      basicAlgorithm: BasicAutoscalingAlgorithmResponse2.fromMap(
          (map['basicAlgorithm'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      secondaryWorkerConfig:
          InstanceGroupAutoscalingPolicyConfigResponse2.fromMap(
              (map['secondaryWorkerConfig'] as Map).cast<String, dynamic>()),
      workerConfig: InstanceGroupAutoscalingPolicyConfigResponse2.fromMap(
          (map['workerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
