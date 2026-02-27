import 'package:pulumi/pulumi.dart' as pulumi;
import '../logging_configuration_destination_configuration/logging_configuration_destination_configuration.dart';
import 'logging_configuration_args.dart';

/// Resource for managing an AWS IVS (Interactive Video) Chat Logging Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage - Logging to CloudWatch
///
///
///
/// ### Basic Usage - Logging to Kinesis Firehose with Extended S3
///
///
///
/// ### Basic Usage - Logging to S3
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the IVS Chat logging configuration.
///
///
/// Using `pulumi import`, import IVS (Interactive Video) Chat Logging Configuration using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ivschat/loggingConfiguration:LoggingConfiguration example arn:aws:ivschat:us-west-2:326937407773:logging-configuration/MMUQc8wcqZmC
/// ```
class LoggingConfiguration extends pulumi.CustomResource {
  /// ARN of the Logging Configuration.
  late final pulumi.Output<String> arn;

  /// Object containing destination configuration for where chat activity will be logged. This object must contain exactly one of the following children arguments:
  late final pulumi.Output<LoggingConfigurationDestinationConfiguration?>
      destinationConfiguration;

  /// Logging Configuration name.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// State of the Logging Configuration.
  late final pulumi.Output<String> state;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  LoggingConfiguration(
    String name, {
    LoggingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ivschat/loggingConfiguration:LoggingConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.destinationConfiguration =
        registerOutput<LoggingConfigurationDestinationConfiguration?>(
            'destinationConfiguration');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
