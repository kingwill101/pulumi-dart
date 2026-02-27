// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_autoscaling_algorithm_dataproc_v1beta2.dart';
import 'instance_group_autoscaling_policy_config_dataproc_v1beta2.dart';

/// The set of arguments for AutoscalingPolicy.
class AutoscalingPolicyDataprocV1beta2Args {
  final pulumi.Input<BasicAutoscalingAlgorithmDataprocV1beta2>? basicAlgorithm;

  /// The policy id.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  final pulumi.Input<String> id;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Optional. Describes how the autoscaler will operate for secondary workers.
  final pulumi.Input<InstanceGroupAutoscalingPolicyConfigDataprocV1beta2>?
      secondaryWorkerConfig;

  /// Describes how the autoscaler will operate for primary workers.
  final pulumi.Input<InstanceGroupAutoscalingPolicyConfigDataprocV1beta2>
      workerConfig;

  AutoscalingPolicyDataprocV1beta2Args({
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
      map['basicAlgorithm'] = pulumi.Input.mapOptionalInputValue<
          BasicAutoscalingAlgorithmDataprocV1beta2,
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
      map['secondaryWorkerConfig'] = pulumi.Input.mapOptionalInputValue<
              InstanceGroupAutoscalingPolicyConfigDataprocV1beta2,
              Map<String, dynamic>>(
          secondaryWorkerConfigValue, (value) => value.toMap());
    }
    map['workerConfig'] = pulumi.Input.mapInputValue<
        InstanceGroupAutoscalingPolicyConfigDataprocV1beta2,
        Map<String, dynamic>>(workerConfig, (value) => value.toMap());
    return map;
  }

  factory AutoscalingPolicyDataprocV1beta2Args.fromMap(
      Map<String, dynamic> map) {
    return AutoscalingPolicyDataprocV1beta2Args(
      basicAlgorithm: pulumi.Input.asOptionalInput<
          BasicAutoscalingAlgorithmDataprocV1beta2>(map['basicAlgorithm']),
      id: pulumi.Input.asInput<String>(map['id']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      secondaryWorkerConfig: pulumi.Input.asOptionalInput<
              InstanceGroupAutoscalingPolicyConfigDataprocV1beta2>(
          map['secondaryWorkerConfig']),
      workerConfig: pulumi.Input.asInput<
              InstanceGroupAutoscalingPolicyConfigDataprocV1beta2>(
          map['workerConfig']),
    );
  }
}
