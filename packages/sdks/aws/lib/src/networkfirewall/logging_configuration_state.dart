// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_configuration_logging_configuration.dart';

/// Input properties used for looking up and filtering LoggingConfiguration resources.
class LoggingConfigurationState {
  /// Whether to enable the detailed firewall monitoring dashboard on the firewall. Defaults to `false`.
  final pulumi.Input<bool>? enableMonitoringDashboard;
  /// The Amazon Resource Name (ARN) of the Network Firewall firewall.
  final pulumi.Input<String>? firewallArn;
  /// A configuration block describing how AWS Network Firewall performs logging for a firewall. See Logging Configuration below for details.
  final pulumi.Input<LoggingConfigurationLoggingConfiguration>? loggingConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LoggingConfigurationState].
  /// [enableMonitoringDashboard] Whether to enable the detailed firewall monitoring dashboard on the firewall. Defaults to `false`.
  /// [firewallArn] The Amazon Resource Name (ARN) of the Network Firewall firewall.
  /// [loggingConfiguration] A configuration block describing how AWS Network Firewall performs logging for a firewall. See Logging Configuration below for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LoggingConfigurationState({
    this.enableMonitoringDashboard,
    this.firewallArn,
    this.loggingConfiguration,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMonitoringDashboard': ?enableMonitoringDashboard,
      'firewallArn': ?firewallArn,
      'loggingConfiguration': ?pulumi.Input.mapOptionalInputValue<LoggingConfigurationLoggingConfiguration, Map<String, dynamic>>(loggingConfiguration, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory LoggingConfigurationState.fromMap(Map<String, dynamic> map) {
    return LoggingConfigurationState(
      enableMonitoringDashboard: map['enableMonitoringDashboard'] == null ? null : (map['enableMonitoringDashboard'] as bool).input(),
      firewallArn: map['firewallArn'] == null ? null : (map['firewallArn'] as String).input(),
      loggingConfiguration: map['loggingConfiguration'] == null ? null : (LoggingConfigurationLoggingConfiguration.fromMap((map['loggingConfiguration'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

