import 'package:pulumi/pulumi.dart';
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
class InstanceLoggingConfiguration extends CustomResource {
  /// A block that specifies the configuration options for Verified Access instances. Detailed below.
  late final Output<InstanceLoggingConfigurationAccessLogs> accessLogs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the Verified Access instance.
  late final Output<String> verifiedaccessInstanceId;

  InstanceLoggingConfiguration(
    String name, {
    InstanceLoggingConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:verifiedaccess/instanceLoggingConfiguration:InstanceLoggingConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessLogs =
        registerOutput<InstanceLoggingConfigurationAccessLogs>('accessLogs');
    this.region = registerOutput<String>('region');
    this.verifiedaccessInstanceId =
        registerOutput<String>('verifiedaccessInstanceId');
  }
}
