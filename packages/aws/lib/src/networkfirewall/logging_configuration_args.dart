// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_configuration_logging_configuration.dart';

/// {@template pulumi_networkfirewall_logging_configuration_logging_configuration_args_doc}
/// The set of arguments for LoggingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_networkfirewall_logging_configuration_logging_configuration_args_doc}
class LoggingConfigurationArgs {
  /// Whether to enable the detailed firewall monitoring dashboard on the firewall. Defaults to `false`.
  final pulumi.Input<bool>? enableMonitoringDashboard;

  /// The Amazon Resource Name (ARN) of the Network Firewall firewall.
  final pulumi.Input<String> firewallArn;

  /// A configuration block describing how AWS Network Firewall performs logging for a firewall. See Logging Configuration below for details.
  final pulumi.Input<LoggingConfigurationLoggingConfiguration>
      loggingConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LoggingConfigurationArgs].
  /// [enableMonitoringDashboard] Whether to enable the detailed firewall monitoring dashboard on the firewall. Defaults to `false`.
  /// [firewallArn] The Amazon Resource Name (ARN) of the Network Firewall firewall.
  /// [loggingConfiguration] A configuration block describing how AWS Network Firewall performs logging for a firewall. See Logging Configuration below for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LoggingConfigurationArgs({
    bool? enableMonitoringDashboard,
    required String firewallArn,
    required LoggingConfigurationLoggingConfiguration loggingConfiguration,
    String? region,
  })  : enableMonitoringDashboard =
            pulumi.Input.asOptionalInput<bool>(enableMonitoringDashboard),
        firewallArn = pulumi.Input.asInput<String>(firewallArn),
        loggingConfiguration =
            pulumi.Input.asInput<LoggingConfigurationLoggingConfiguration>(
                loggingConfiguration),
        region = pulumi.Input.asOptionalInput<String>(region);

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

  factory LoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return LoggingConfigurationArgs(
      enableMonitoringDashboard: map['enableMonitoringDashboard'] == null
          ? null
          : map['enableMonitoringDashboard'] as bool,
      firewallArn: map['firewallArn'] as String,
      loggingConfiguration: LoggingConfigurationLoggingConfiguration.fromMap(
          (map['loggingConfiguration'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
