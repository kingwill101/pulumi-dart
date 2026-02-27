// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../logging_configuration_logging_configuration/logging_configuration_logging_configuration.dart';

/// The set of arguments for LoggingConfiguration.
class LoggingConfigurationNetworkfirewallArgs {
  /// Whether to enable the detailed firewall monitoring dashboard on the firewall. Defaults to `false`.
  final pulumi.Input<bool>? enableMonitoringDashboard;

  /// The Amazon Resource Name (ARN) of the Network Firewall firewall.
  final pulumi.Input<String> firewallArn;

  /// A configuration block describing how AWS Network Firewall performs logging for a firewall. See Logging Configuration below for details.
  final pulumi.Input<LoggingConfigurationLoggingConfiguration>
      loggingConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  LoggingConfigurationNetworkfirewallArgs({
    this.enableMonitoringDashboard,
    required this.firewallArn,
    required this.loggingConfiguration,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableMonitoringDashboardValue = enableMonitoringDashboard;
    if (enableMonitoringDashboardValue != null) {
      map['enableMonitoringDashboard'] = enableMonitoringDashboardValue;
    }
    map['firewallArn'] = firewallArn;
    map['loggingConfiguration'] = pulumi.Input.mapInputValue<
        LoggingConfigurationLoggingConfiguration,
        Map<String, dynamic>>(loggingConfiguration, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LoggingConfigurationNetworkfirewallArgs.fromMap(
      Map<String, dynamic> map) {
    return LoggingConfigurationNetworkfirewallArgs(
      enableMonitoringDashboard:
          pulumi.Input.asOptionalInput<bool>(map['enableMonitoringDashboard']),
      firewallArn: pulumi.Input.asInput<String>(map['firewallArn']),
      loggingConfiguration:
          pulumi.Input.asInput<LoggingConfigurationLoggingConfiguration>(
              map['loggingConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
