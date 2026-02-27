// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../autoscaling_policy_basic_algorithm/autoscaling_policy_basic_algorithm.dart';
import '../autoscaling_policy_secondary_worker_config/autoscaling_policy_secondary_worker_config.dart';
import '../autoscaling_policy_worker_config/autoscaling_policy_worker_config.dart';

/// The set of arguments for AutoscalingPolicy.
class AutoscalingPolicyArgs {
  /// Basic algorithm for autoscaling.
  /// Structure is documented below.
  final pulumi.Input<AutoscalingPolicyBasicAlgorithm>? basicAlgorithm;

  /// The  location where the autoscaling policy should reside.
  /// The default value is `global`.
  final pulumi.Input<String>? location;

  /// The policy id. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
  /// 3 and 50 characters.
  final pulumi.Input<String> policyId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Describes how the autoscaler will operate for secondary workers.
  /// Structure is documented below.
  final pulumi.Input<AutoscalingPolicySecondaryWorkerConfig>?
      secondaryWorkerConfig;

  /// Describes how the autoscaler will operate for primary workers.
  /// Structure is documented below.
  final pulumi.Input<AutoscalingPolicyWorkerConfig>? workerConfig;

  AutoscalingPolicyArgs({
    this.basicAlgorithm,
    this.location,
    required this.policyId,
    this.project,
    this.secondaryWorkerConfig,
    this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basicAlgorithmValue = basicAlgorithm;
    if (basicAlgorithmValue != null) {
      map['basicAlgorithm'] = pulumi.Input.mapOptionalInputValue<
          AutoscalingPolicyBasicAlgorithm,
          Map<String, dynamic>>(basicAlgorithmValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['policyId'] = policyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final secondaryWorkerConfigValue = secondaryWorkerConfig;
    if (secondaryWorkerConfigValue != null) {
      map['secondaryWorkerConfig'] = pulumi.Input.mapOptionalInputValue<
              AutoscalingPolicySecondaryWorkerConfig, Map<String, dynamic>>(
          secondaryWorkerConfigValue, (value) => value.toMap());
    }
    final workerConfigValue = workerConfig;
    if (workerConfigValue != null) {
      map['workerConfig'] = pulumi.Input.mapOptionalInputValue<
          AutoscalingPolicyWorkerConfig,
          Map<String, dynamic>>(workerConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory AutoscalingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyArgs(
      basicAlgorithm:
          pulumi.Input.asOptionalInput<AutoscalingPolicyBasicAlgorithm>(
              map['basicAlgorithm']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      policyId: pulumi.Input.asInput<String>(map['policyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      secondaryWorkerConfig:
          pulumi.Input.asOptionalInput<AutoscalingPolicySecondaryWorkerConfig>(
              map['secondaryWorkerConfig']),
      workerConfig: pulumi.Input.asOptionalInput<AutoscalingPolicyWorkerConfig>(
          map['workerConfig']),
    );
  }
}
