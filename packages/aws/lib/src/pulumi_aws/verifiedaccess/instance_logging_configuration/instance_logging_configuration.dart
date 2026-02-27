import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_logging_configuration_access_logs/instance_logging_configuration_access_logs.dart';
import 'instance_logging_configuration_args.dart';

/// Resource for managing a Verified Access Logging Configuration.
///
/// ## Example Usage
///
/// ### With CloudWatch Logging
///
///
///
/// ### With Kinesis Data Firehose Logging
///
///
///
/// ### With S3 logging
///
///
///
/// ### With all three logging options
///
///
///
/// ### With `include_trust_context`
///
///
///
/// ### With `log_version`
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Verified Access Logging Configuration using the Verified Access Instance `id`. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedaccess/instanceLoggingConfiguration:InstanceLoggingConfiguration example vai-1234567890abcdef0
/// ```
class InstanceLoggingConfiguration extends pulumi.CustomResource {
  /// A block that specifies the configuration options for Verified Access instances. Detailed below.
  late final pulumi.Output<InstanceLoggingConfigurationAccessLogs> accessLogs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the Verified Access instance.
  late final pulumi.Output<String> verifiedaccessInstanceId;

  InstanceLoggingConfiguration(
    String name, {
    InstanceLoggingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedaccess/instanceLoggingConfiguration:InstanceLoggingConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessLogs =
        registerOutput<InstanceLoggingConfigurationAccessLogs>('accessLogs');
    this.region = registerOutput<String>('region');
    this.verifiedaccessInstanceId =
        registerOutput<String>('verifiedaccessInstanceId');
  }
}
