import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_strategy_args.dart';

/// Provides an AppConfig Deployment Strategy resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Deployment Strategies using their deployment strategy ID. For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/deploymentStrategy:DeploymentStrategy example 11xxxxx
/// ```
class DeploymentStrategy extends pulumi.CustomResource {
  /// ARN of the AppConfig Deployment Strategy.
  late final pulumi.Output<String> arn;

  /// Total amount of time for a deployment to last. Minimum value of 0, maximum value of 1440.
  late final pulumi.Output<int> deploymentDurationInMinutes;

  /// Description of the deployment strategy. Can be at most 1024 characters.
  late final pulumi.Output<String?> description;

  /// Amount of time AWS AppConfig monitors for alarms before considering the deployment to be complete and no longer eligible for automatic roll back. Minimum value of 0, maximum value of 1440.
  late final pulumi.Output<int?> finalBakeTimeInMinutes;

  /// Percentage of targets to receive a deployed configuration during each interval. Minimum value of 1.0, maximum value of 100.0.
  late final pulumi.Output<double> growthFactor;

  /// Algorithm used to define how percentage grows over time. Valid value: `LINEAR` and `EXPONENTIAL`. Defaults to `LINEAR`.
  late final pulumi.Output<String?> growthType;

  /// Name for the deployment strategy. Must be between 1 and 64 characters in length.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Where to save the deployment strategy. Valid values: `NONE` and `SSM_DOCUMENT`.
  late final pulumi.Output<String> replicateTo;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  DeploymentStrategy(
    String name, {
    DeploymentStrategyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/deploymentStrategy:DeploymentStrategy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deploymentDurationInMinutes =
        registerOutput<int>('deploymentDurationInMinutes');
    this.description = registerOutput<String?>('description');
    this.finalBakeTimeInMinutes =
        registerOutput<int?>('finalBakeTimeInMinutes');
    this.growthFactor = registerOutput<double>('growthFactor');
    this.growthType = registerOutput<String?>('growthType');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.replicateTo = registerOutput<String>('replicateTo');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
