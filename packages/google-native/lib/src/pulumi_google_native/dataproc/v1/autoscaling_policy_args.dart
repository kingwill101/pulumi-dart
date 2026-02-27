// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_autoscaling_algorithm.dart';
import 'instance_group_autoscaling_policy_config.dart';

/// The set of arguments for AutoscalingPolicy.
class AutoscalingPolicyArgs {
  final pulumi.Input<BasicAutoscalingAlgorithm>? basicAlgorithm;

  /// The policy id.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  final pulumi.Input<String> id;

  /// Optional. The labels to associate with this autoscaling policy. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with an autoscaling policy.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Optional. Describes how the autoscaler will operate for secondary workers.
  final pulumi.Input<InstanceGroupAutoscalingPolicyConfig>?
      secondaryWorkerConfig;

  /// Describes how the autoscaler will operate for primary workers.
  final pulumi.Input<InstanceGroupAutoscalingPolicyConfig> workerConfig;

  AutoscalingPolicyArgs({
    this.basicAlgorithm,
    required this.id,
    this.labels,
    this.location,
    this.project,
    this.secondaryWorkerConfig,
    required this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basicAlgorithmValue = basicAlgorithm;
    if (basicAlgorithmValue != null) {
      map['basicAlgorithm'] = pulumi.Input.mapOptionalInputValue<
          BasicAutoscalingAlgorithm,
          Map<String, dynamic>>(basicAlgorithmValue, (value) => value.toMap());
    }
    map['id'] = id;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
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
      map['secondaryWorkerConfig'] = pulumi.Input.mapOptionalInputValue<
              InstanceGroupAutoscalingPolicyConfig, Map<String, dynamic>>(
          secondaryWorkerConfigValue, (value) => value.toMap());
    }
    map['workerConfig'] = pulumi.Input.mapInputValue<
        InstanceGroupAutoscalingPolicyConfig,
        Map<String, dynamic>>(workerConfig, (value) => value.toMap());
    return map;
  }

  factory AutoscalingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyArgs(
      basicAlgorithm: pulumi.Input.asOptionalInput<BasicAutoscalingAlgorithm>(
          map['basicAlgorithm']),
      id: pulumi.Input.asInput<String>(map['id']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      secondaryWorkerConfig:
          pulumi.Input.asOptionalInput<InstanceGroupAutoscalingPolicyConfig>(
              map['secondaryWorkerConfig']),
      workerConfig: pulumi.Input.asInput<InstanceGroupAutoscalingPolicyConfig>(
          map['workerConfig']),
    );
  }
}
