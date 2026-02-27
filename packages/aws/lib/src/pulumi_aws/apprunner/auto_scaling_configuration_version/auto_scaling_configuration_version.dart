import 'package:pulumi/pulumi.dart';
import 'auto_scaling_configuration_version_args.dart';

/// Manages an App Runner AutoScaling Configuration Version.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the App Runner auto scaling configuration version.
///
///
/// Using `pulumi import`, import App Runner AutoScaling Configuration Versions using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/autoScalingConfigurationVersion:AutoScalingConfigurationVersion example "arn:aws:apprunner:us-east-1:1234567890:autoscalingconfiguration/example/1/69bdfe0115224b0db49398b7beb68e0f
/// ```
class AutoScalingConfigurationVersion extends CustomResource {
  /// ARN of this auto scaling configuration version.
  late final Output<String> arn;

  /// Name of the auto scaling configuration.
  late final Output<String> autoScalingConfigurationName;

  /// The revision of this auto scaling configuration.
  late final Output<int> autoScalingConfigurationRevision;
  late final Output<bool> hasAssociatedService;
  late final Output<bool> isDefault;

  /// Whether the auto scaling configuration has the highest `auto_scaling_configuration_revision` among all configurations that share the same `auto_scaling_configuration_name`.
  late final Output<bool> latest;

  /// Maximal number of concurrent requests that you want an instance to process. When the number of concurrent requests goes over this limit, App Runner scales up your service.
  late final Output<int?> maxConcurrency;

  /// Maximal number of instances that App Runner provisions for your service.
  late final Output<int?> maxSize;

  /// Minimal number of instances that App Runner provisions for your service.
  late final Output<int?> minSize;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Current state of the auto scaling configuration. An INACTIVE configuration revision has been deleted and can't be used. It is permanently removed some time after deletion.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  AutoScalingConfigurationVersion(
    String name, {
    AutoScalingConfigurationVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/autoScalingConfigurationVersion:AutoScalingConfigurationVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoScalingConfigurationName =
        registerOutput<String>('autoScalingConfigurationName');
    this.autoScalingConfigurationRevision =
        registerOutput<int>('autoScalingConfigurationRevision');
    this.hasAssociatedService = registerOutput<bool>('hasAssociatedService');
    this.isDefault = registerOutput<bool>('isDefault');
    this.latest = registerOutput<bool>('latest');
    this.maxConcurrency = registerOutput<int?>('maxConcurrency');
    this.maxSize = registerOutput<int?>('maxSize');
    this.minSize = registerOutput<int?>('minSize');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
