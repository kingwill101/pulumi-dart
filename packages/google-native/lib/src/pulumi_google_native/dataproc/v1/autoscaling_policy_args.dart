// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'basic_autoscaling_algorithm.dart';
import 'instance_group_autoscaling_policy_config.dart';

/// The set of arguments for AutoscalingPolicy.
class AutoscalingPolicyArgs {
  final Input<BasicAutoscalingAlgorithm>? basicAlgorithm;

  /// The policy id.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  final Input<String> id;

  /// Optional. The labels to associate with this autoscaling policy. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with an autoscaling policy.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. Describes how the autoscaler will operate for secondary workers.
  final Input<InstanceGroupAutoscalingPolicyConfig>? secondaryWorkerConfig;

  /// Describes how the autoscaler will operate for primary workers.
  final Input<InstanceGroupAutoscalingPolicyConfig> workerConfig;

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
      map['basicAlgorithm'] = Input.mapOptionalInputValue<
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
      map['secondaryWorkerConfig'] = Input.mapOptionalInputValue<
              InstanceGroupAutoscalingPolicyConfig, Map<String, dynamic>>(
          secondaryWorkerConfigValue, (value) => value.toMap());
    }
    map['workerConfig'] = Input.mapInputValue<
        InstanceGroupAutoscalingPolicyConfig,
        Map<String, dynamic>>(workerConfig, (value) => value.toMap());
    return map;
  }

  factory AutoscalingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyArgs(
      basicAlgorithm: Input.asOptionalInput<BasicAutoscalingAlgorithm>(
          map['basicAlgorithm']),
      id: Input.asInput<String>(map['id']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      secondaryWorkerConfig:
          Input.asOptionalInput<InstanceGroupAutoscalingPolicyConfig>(
              map['secondaryWorkerConfig']),
      workerConfig: Input.asInput<InstanceGroupAutoscalingPolicyConfig>(
          map['workerConfig']),
    );
  }
}
