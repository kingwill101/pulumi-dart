import 'package:pulumi/pulumi.dart';
import '../invocation_logging_configuration_logging_config/invocation_logging_configuration_logging_config.dart';
import 'invocation_logging_configuration_args.dart';

/// Manages Bedrock model invocation logging configuration.
///
/// > Model invocation logging is configured per AWS region. To avoid overwriting settings, this resource should not be defined in multiple configurations.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock custom model using the `id` set to the AWS Region. For example:
///
/// ```sh
/// $ pulumi import aws:bedrockmodel/invocationLoggingConfiguration:InvocationLoggingConfiguration my_config us-east-1
/// ```
class InvocationLoggingConfiguration extends CustomResource {
  /// The logging configuration values to set. See `logging_config` Block for details.
  late final Output<InvocationLoggingConfigurationLoggingConfig> loggingConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  InvocationLoggingConfiguration(
    String name, {
    InvocationLoggingConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrockmodel/invocationLoggingConfiguration:InvocationLoggingConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.loggingConfig =
        registerOutput<InvocationLoggingConfigurationLoggingConfig>(
            'loggingConfig');
    this.region = registerOutput<String>('region');
  }
}
