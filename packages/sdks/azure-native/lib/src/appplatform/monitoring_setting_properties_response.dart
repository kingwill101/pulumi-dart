// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_insights_agent_versions_response.dart';
import 'error_response.dart';

/// Monitoring Setting properties payload
class MonitoringSettingPropertiesResponse {
  /// Indicates the versions of application insight agent
  final pulumi.Input<ApplicationInsightsAgentVersionsResponse>? appInsightsAgentVersions;
  /// Target application insight instrumentation key, null or whitespace include empty will disable monitoringSettings
  final pulumi.Input<String>? appInsightsInstrumentationKey;
  /// Indicates the sampling rate of application insight agent, should be in range [0.0, 100.0]
  final pulumi.Input<double>? appInsightsSamplingRate;
  /// Error when apply Monitoring Setting changes.
  final pulumi.Input<ErrorResponse>? error;
  /// State of the Monitoring Setting.
  final pulumi.Input<String> provisioningState;
  /// Indicates whether enable the trace functionality, which will be deprecated since api version 2020-11-01-preview. Please leverage appInsightsInstrumentationKey to indicate if monitoringSettings enabled or not
  final pulumi.Input<bool>? traceEnabled;

  /// Creates a new [MonitoringSettingPropertiesResponse].
  /// [appInsightsAgentVersions] Indicates the versions of application insight agent
  /// [appInsightsInstrumentationKey] Target application insight instrumentation key, null or whitespace include empty will disable monitoringSettings
  /// [appInsightsSamplingRate] Indicates the sampling rate of application insight agent, should be in range [0.0, 100.0]
  /// [error] Error when apply Monitoring Setting changes.
  /// [provisioningState] State of the Monitoring Setting.
  /// [traceEnabled] Indicates whether enable the trace functionality, which will be deprecated since api version 2020-11-01-preview. Please leverage appInsightsInstrumentationKey to indicate if monitoringSettings enabled or not
  MonitoringSettingPropertiesResponse({
    this.appInsightsAgentVersions,
    this.appInsightsInstrumentationKey,
    this.appInsightsSamplingRate,
    this.error,
    required this.provisioningState,
    this.traceEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInsightsAgentVersions': ?pulumi.Input.mapOptionalInputValue<ApplicationInsightsAgentVersionsResponse, Map<String, dynamic>>(appInsightsAgentVersions, (value) => value.toMap()),
      'appInsightsInstrumentationKey': ?appInsightsInstrumentationKey,
      'appInsightsSamplingRate': ?appInsightsSamplingRate,
      'error': ?pulumi.Input.mapOptionalInputValue<ErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'traceEnabled': ?traceEnabled,
    };
  }

  factory MonitoringSettingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringSettingPropertiesResponse(
      appInsightsAgentVersions: map['appInsightsAgentVersions'] == null ? null : (ApplicationInsightsAgentVersionsResponse.fromMap((map['appInsightsAgentVersions']! as Map).cast<String, dynamic>())).input(),
      appInsightsInstrumentationKey: map['appInsightsInstrumentationKey'] == null ? null : (map['appInsightsInstrumentationKey']! as String).input(),
      appInsightsSamplingRate: map['appInsightsSamplingRate'] == null ? null : (map['appInsightsSamplingRate']! as double).input(),
      error: map['error'] == null ? null : (ErrorResponse.fromMap((map['error']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      traceEnabled: map['traceEnabled'] == null ? null : (map['traceEnabled']! as bool).input(),
    );
  }
}

