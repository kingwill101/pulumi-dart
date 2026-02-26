// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'basic_autoscaling_algorithm2.dart';
import 'instance_group_autoscaling_policy_config2.dart';

/// The set of arguments for AutoscalingPolicy.
class AutoscalingPolicyArgs2 {
  final Input<BasicAutoscalingAlgorithm2>? basicAlgorithm;

  /// The policy id.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  final Input<String> id;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. Describes how the autoscaler will operate for secondary workers.
  final Input<InstanceGroupAutoscalingPolicyConfig2>? secondaryWorkerConfig;

  /// Describes how the autoscaler will operate for primary workers.
  final Input<InstanceGroupAutoscalingPolicyConfig2> workerConfig;

  AutoscalingPolicyArgs2({
    this.basicAlgorithm,
    required this.id,
    this.location,
    this.project,
    this.secondaryWorkerConfig,
    required this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basicAlgorithmValue = basicAlgorithm;
    if (basicAlgorithmValue != null) {
      map['basicAlgorithm'] = Input.mapOptionalInputValue<
          BasicAutoscalingAlgorithm2,
          Map<String, dynamic>>(basicAlgorithmValue, (value) => value.toMap());
    }
    map['id'] = id;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final secondaryWorkerConfigValue = secondaryWorkerConfig;
    if (secondaryWorkerConfigValue != null) {
      map['secondaryWorkerConfig'] = Input.mapOptionalInputValue<
              InstanceGroupAutoscalingPolicyConfig2, Map<String, dynamic>>(
          secondaryWorkerConfigValue, (value) => value.toMap());
    }
    map['workerConfig'] = Input.mapInputValue<
        InstanceGroupAutoscalingPolicyConfig2,
        Map<String, dynamic>>(workerConfig, (value) => value.toMap());
    return map;
  }

  factory AutoscalingPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyArgs2(
      basicAlgorithm: Input.asOptionalInput<BasicAutoscalingAlgorithm2>(
          map['basicAlgorithm']),
      id: Input.asInput<String>(map['id']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      secondaryWorkerConfig:
          Input.asOptionalInput<InstanceGroupAutoscalingPolicyConfig2>(
              map['secondaryWorkerConfig']),
      workerConfig: Input.asInput<InstanceGroupAutoscalingPolicyConfig2>(
          map['workerConfig']),
    );
  }
}
