// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DeploymentStrategy.
class DeploymentStrategyArgs {
  /// Total amount of time for a deployment to last. Minimum value of 0, maximum value of 1440.
  final Input<int> deploymentDurationInMinutes;

  /// Description of the deployment strategy. Can be at most 1024 characters.
  final Input<String>? description;

  /// Amount of time AWS AppConfig monitors for alarms before considering the deployment to be complete and no longer eligible for automatic roll back. Minimum value of 0, maximum value of 1440.
  final Input<int>? finalBakeTimeInMinutes;

  /// Percentage of targets to receive a deployed configuration during each interval. Minimum value of 1.0, maximum value of 100.0.
  final Input<double> growthFactor;

  /// Algorithm used to define how percentage grows over time. Valid value: `LINEAR` and `EXPONENTIAL`. Defaults to `LINEAR`.
  final Input<String>? growthType;

  /// Name for the deployment strategy. Must be between 1 and 64 characters in length.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Where to save the deployment strategy. Valid values: `NONE` and `SSM_DOCUMENT`.
  final Input<String> replicateTo;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DeploymentStrategyArgs({
    required this.deploymentDurationInMinutes,
    this.description,
    this.finalBakeTimeInMinutes,
    required this.growthFactor,
    this.growthType,
    this.name,
    this.region,
    required this.replicateTo,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deploymentDurationInMinutes'] = deploymentDurationInMinutes;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final finalBakeTimeInMinutesValue = finalBakeTimeInMinutes;
    if (finalBakeTimeInMinutesValue != null) {
      map['finalBakeTimeInMinutes'] = finalBakeTimeInMinutesValue;
    }
    map['growthFactor'] = growthFactor;
    final growthTypeValue = growthType;
    if (growthTypeValue != null) {
      map['growthType'] = growthTypeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicateTo'] = replicateTo;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DeploymentStrategyArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentStrategyArgs(
      deploymentDurationInMinutes:
          Input.asInput<int>(map['deploymentDurationInMinutes']),
      description: Input.asOptionalInput<String>(map['description']),
      finalBakeTimeInMinutes:
          Input.asOptionalInput<int>(map['finalBakeTimeInMinutes']),
      growthFactor: Input.asInput<double>(map['growthFactor']),
      growthType: Input.asOptionalInput<String>(map['growthType']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      replicateTo: Input.asInput<String>(map['replicateTo']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
