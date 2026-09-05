// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_configuration_logging_configuration.dart';

/// {@template pulumi_networkfirewall_logging_configuration_logging_configuration_args_doc}
/// The set of arguments for LoggingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_networkfirewall_logging_configuration_logging_configuration_args_doc}
class LoggingConfigurationArgs {
  /// Whether to enable the detailed firewall monitoring dashboard on the firewall. Defaults to `false`.
  final pulumi.Input<bool?>? enableMonitoringDashboard;
  /// ARN of the Network Firewall firewall.
  final pulumi.Input<String> firewallArn;
  /// A configuration block describing how AWS Network Firewall performs logging for a firewall. See Logging Configuration below for details.
  final pulumi.Input<LoggingConfigurationLoggingConfiguration> loggingConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [LoggingConfigurationArgs].
  /// [enableMonitoringDashboard] Whether to enable the detailed firewall monitoring dashboard on the firewall. Defaults to `false`.
  /// [firewallArn] ARN of the Network Firewall firewall.
  /// [loggingConfiguration] A configuration block describing how AWS Network Firewall performs logging for a firewall. See Logging Configuration below for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const LoggingConfigurationArgs({
    this.enableMonitoringDashboard,
    required this.firewallArn,
    required this.loggingConfiguration,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMonitoringDashboard': ?enableMonitoringDashboard,
      'firewallArn': firewallArn,
      'loggingConfiguration': pulumi.Input.mapInputValue<LoggingConfigurationLoggingConfiguration, Map<String, dynamic>>(loggingConfiguration, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory LoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return LoggingConfigurationArgs(
      enableMonitoringDashboard: (() { final guardedValue = map['enableMonitoringDashboard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      firewallArn: pulumi.Input.fromValue(map['firewallArn'] as String),
      loggingConfiguration: pulumi.Input.fromValue(LoggingConfigurationLoggingConfiguration.fromMap((map['loggingConfiguration']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
