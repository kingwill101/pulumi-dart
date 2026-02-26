// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../logging_configuration_logging_configuration/logging_configuration_logging_configuration.dart';

/// The set of arguments for LoggingConfiguration.
class LoggingConfigurationArgs2 {
  /// Whether to enable the detailed firewall monitoring dashboard on the firewall. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? enableMonitoringDashboard;

  /// The Amazon Resource Name (ARN) of the Network Firewall firewall.
  final Input<String> firewallArn;

  /// A configuration block describing how AWS Network Firewall performs logging for a firewall. See Logging Configuration below for details.
  final Input<LoggingConfigurationLoggingConfiguration> loggingConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  LoggingConfigurationArgs2({
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
    map['loggingConfiguration'] = Input.mapInputValue<
        LoggingConfigurationLoggingConfiguration,
        Map<String, dynamic>>(loggingConfiguration, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LoggingConfigurationArgs2.fromMap(Map<String, dynamic> map) {
    return LoggingConfigurationArgs2(
      enableMonitoringDashboard:
          Input.asOptionalInput<bool>(map['enableMonitoringDashboard']),
      firewallArn: Input.asInput<String>(map['firewallArn']),
      loggingConfiguration:
          Input.asInput<LoggingConfigurationLoggingConfiguration>(
              map['loggingConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
