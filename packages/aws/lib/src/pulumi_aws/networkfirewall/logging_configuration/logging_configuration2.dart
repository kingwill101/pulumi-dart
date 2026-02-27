import 'package:pulumi/pulumi.dart';
import '../logging_configuration_logging_configuration/logging_configuration_logging_configuration.dart';
import 'logging_configuration_args2.dart';

/// Provides an AWS Network Firewall Logging Configuration Resource
///
/// ## Example Usage
///
/// ### Logging to S3
///
///
///
/// ### Logging to CloudWatch
///
///
///
/// ### Logging to Kinesis Data Firehose
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall Logging Configurations using the `firewall_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/loggingConfiguration:LoggingConfiguration example arn:aws:network-firewall:us-west-1:123456789012:firewall/example
/// ```
class LoggingConfiguration2 extends CustomResource {
  /// Whether to enable the detailed firewall monitoring dashboard on the firewall. Defaults to `false`.
  late final Output<bool> enableMonitoringDashboard;

  /// The Amazon Resource Name (ARN) of the Network Firewall firewall.
  late final Output<String> firewallArn;

  /// A configuration block describing how AWS Network Firewall performs logging for a firewall. See Logging Configuration below for details.
  late final Output<LoggingConfigurationLoggingConfiguration>
      loggingConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LoggingConfiguration2(
    String name, {
    LoggingConfigurationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/loggingConfiguration:LoggingConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.enableMonitoringDashboard =
        registerOutput<bool>('enableMonitoringDashboard');
    this.firewallArn = registerOutput<String>('firewallArn');
    this.loggingConfiguration =
        registerOutput<LoggingConfigurationLoggingConfiguration>(
            'loggingConfiguration');
    this.region = registerOutput<String>('region');
  }
}
