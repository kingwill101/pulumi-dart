// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_autoscaling_algorithm.dart';
import 'instance_group_autoscaling_policy_config.dart';

/// {@template pulumi_dataproc_v1_autoscaling_policy_args_doc}
/// The set of arguments for AutoscalingPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_autoscaling_policy_args_doc}
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

  /// Creates a new [AutoscalingPolicyArgs].
  /// [basicAlgorithm] Optional.
  /// [id] The policy id.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  /// [labels] Optional. The labels to associate with this autoscaling policy. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with an autoscaling policy.
  /// [location] Optional.
  /// [project] Optional.
  /// [secondaryWorkerConfig] Optional. Describes how the autoscaler will operate for secondary workers.
  /// [workerConfig] Describes how the autoscaler will operate for primary workers.
  AutoscalingPolicyArgs({
    BasicAutoscalingAlgorithm? basicAlgorithm,
    required String id,
    Map<String, String>? labels,
    String? location,
    String? project,
    InstanceGroupAutoscalingPolicyConfig? secondaryWorkerConfig,
    required InstanceGroupAutoscalingPolicyConfig workerConfig,
  })  : basicAlgorithm =
            pulumi.Input.asOptionalInput<BasicAutoscalingAlgorithm>(
                basicAlgorithm),
        id = pulumi.Input.asInput<String>(id),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        secondaryWorkerConfig =
            pulumi.Input.asOptionalInput<InstanceGroupAutoscalingPolicyConfig>(
                secondaryWorkerConfig),
        workerConfig =
            pulumi.Input.asInput<InstanceGroupAutoscalingPolicyConfig>(
                workerConfig);

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
      basicAlgorithm: map['basicAlgorithm'] == null
          ? null
          : BasicAutoscalingAlgorithm.fromMap(
              (map['basicAlgorithm'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      secondaryWorkerConfig: map['secondaryWorkerConfig'] == null
          ? null
          : InstanceGroupAutoscalingPolicyConfig.fromMap(
              (map['secondaryWorkerConfig'] as Map).cast<String, dynamic>()),
      workerConfig: InstanceGroupAutoscalingPolicyConfig.fromMap(
          (map['workerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
