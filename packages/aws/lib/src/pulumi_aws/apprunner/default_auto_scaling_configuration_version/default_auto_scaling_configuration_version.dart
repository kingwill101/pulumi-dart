import 'package:pulumi/pulumi.dart';
import 'default_auto_scaling_configuration_version_args.dart';

/// Manages the default App Runner auto scaling configuration.
/// When creating or updating this resource the existing default auto scaling configuration will be set to non-default automatically.
/// When creating or updating this resource the configuration is automatically assigned as the default to the new services you create in the future. The new default designation doesn't affect the associations that were previously set for existing services.
/// Each account can have only one default auto scaling configuration per Region.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import App Runner default auto scaling configurations using the current Region. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/defaultAutoScalingConfigurationVersion:DefaultAutoScalingConfigurationVersion example us-west-2
/// ```
class DefaultAutoScalingConfigurationVersion extends CustomResource {
  /// The ARN of the App Runner auto scaling configuration that you want to set as the default.
  late final Output<String> autoScalingConfigurationArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DefaultAutoScalingConfigurationVersion(
    String name, {
    DefaultAutoScalingConfigurationVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/defaultAutoScalingConfigurationVersion:DefaultAutoScalingConfigurationVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoScalingConfigurationArn =
        registerOutput<String>('autoScalingConfigurationArn');
    this.region = registerOutput<String>('region');
  }
}
