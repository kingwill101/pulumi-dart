// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_insights_configuration_response.dart';

/// Log Configurations
class LogConfigurationResponse {
  /// Application Insights Configuration
  final pulumi.Input<ApplicationInsightsConfigurationResponse?>? applicationInsightsConfiguration;

  /// Creates a new [LogConfigurationResponse].
  /// [applicationInsightsConfiguration] Application Insights Configuration
  const LogConfigurationResponse({
    this.applicationInsightsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInsightsConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationInsightsConfigurationResponse, Map<String, dynamic>>(applicationInsightsConfiguration, (value) => value.toMap()),
    };
  }

  factory LogConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LogConfigurationResponse(
      applicationInsightsConfiguration: (() { final guardedValue = map['applicationInsightsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationInsightsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
