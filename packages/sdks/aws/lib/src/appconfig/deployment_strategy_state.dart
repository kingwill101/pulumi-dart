// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DeploymentStrategy resources.
class DeploymentStrategyState {
  /// ARN of the AppConfig Deployment Strategy.
  final pulumi.Input<String>? arn;
  /// Total amount of time for a deployment to last. Minimum value of 0, maximum value of 1440.
  final pulumi.Input<int>? deploymentDurationInMinutes;
  /// Description of the deployment strategy. Can be at most 1024 characters.
  final pulumi.Input<String>? description;
  /// Amount of time AWS AppConfig monitors for alarms before considering the deployment to be complete and no longer eligible for automatic roll back. Minimum value of 0, maximum value of 1440.
  final pulumi.Input<int>? finalBakeTimeInMinutes;
  /// Percentage of targets to receive a deployed configuration during each interval. Minimum value of 1.0, maximum value of 100.0.
  final pulumi.Input<double>? growthFactor;
  /// Algorithm used to define how percentage grows over time. Valid value: `LINEAR` and `EXPONENTIAL`. Defaults to `LINEAR`.
  final pulumi.Input<String>? growthType;
  /// Name for the deployment strategy. Must be between 1 and 64 characters in length.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Where to save the deployment strategy. Valid values: `NONE` and `SSM_DOCUMENT`.
  final pulumi.Input<String>? replicateTo;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DeploymentStrategyState].
  /// [arn] ARN of the AppConfig Deployment Strategy.
  /// [deploymentDurationInMinutes] Total amount of time for a deployment to last. Minimum value of 0, maximum value of 1440.
  /// [description] Description of the deployment strategy. Can be at most 1024 characters.
  /// [finalBakeTimeInMinutes] Amount of time AWS AppConfig monitors for alarms before considering the deployment to be complete and no longer eligible for automatic roll back. Minimum value of 0, maximum value of 1440.
  /// [growthFactor] Percentage of targets to receive a deployed configuration during each interval. Minimum value of 1.0, maximum value of 100.0.
  /// [growthType] Algorithm used to define how percentage grows over time. Valid value: `LINEAR` and `EXPONENTIAL`. Defaults to `LINEAR`.
  /// [name] Name for the deployment strategy. Must be between 1 and 64 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicateTo] Where to save the deployment strategy. Valid values: `NONE` and `SSM_DOCUMENT`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  const DeploymentStrategyState({
    this.arn,
    this.deploymentDurationInMinutes,
    this.description,
    this.finalBakeTimeInMinutes,
    this.growthFactor,
    this.growthType,
    this.name,
    this.region,
    this.replicateTo,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deploymentDurationInMinutes': ?deploymentDurationInMinutes,
      'description': ?description,
      'finalBakeTimeInMinutes': ?finalBakeTimeInMinutes,
      'growthFactor': ?growthFactor,
      'growthType': ?growthType,
      'name': ?name,
      'region': ?region,
      'replicateTo': ?replicateTo,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DeploymentStrategyState.fromMap(Map<String, dynamic> map) {
    return DeploymentStrategyState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentDurationInMinutes: (() { final guardedValue = map['deploymentDurationInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      finalBakeTimeInMinutes: (() { final guardedValue = map['finalBakeTimeInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      growthFactor: (() { final guardedValue = map['growthFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      growthType: (() { final guardedValue = map['growthType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicateTo: (() { final guardedValue = map['replicateTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

