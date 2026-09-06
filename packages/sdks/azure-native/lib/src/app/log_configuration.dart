// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_insights_configuration.dart';

/// Log Configurations
class LogConfiguration {
  /// Application Insights Configuration
  final pulumi.Input<ApplicationInsightsConfiguration?>? applicationInsightsConfiguration;

  /// Creates a new [LogConfiguration].
  /// [applicationInsightsConfiguration] Application Insights Configuration
  const LogConfiguration({
    this.applicationInsightsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInsightsConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationInsightsConfiguration, Map<String, dynamic>>(applicationInsightsConfiguration, (value) => value.toMap()),
    };
  }

  factory LogConfiguration.fromMap(Map<String, dynamic> map) {
    return LogConfiguration(
      applicationInsightsConfiguration: (() { final guardedValue = map['applicationInsightsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationInsightsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
