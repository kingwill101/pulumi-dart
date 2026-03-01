// ignore_for_file: unused_element, unnecessary_cast

import 'application_insights_agent_versions_response.dart';
import 'error_response.dart';

/// Monitoring Setting properties payload
class MonitoringSettingPropertiesResponse {
  /// Indicates the versions of application insight agent
  final ApplicationInsightsAgentVersionsResponse? appInsightsAgentVersions;
  /// Target application insight instrumentation key, null or whitespace include empty will disable monitoringSettings
  final String? appInsightsInstrumentationKey;
  /// Indicates the sampling rate of application insight agent, should be in range [0.0, 100.0]
  final double? appInsightsSamplingRate;
  /// Error when apply Monitoring Setting changes.
  final ErrorResponse? error;
  /// State of the Monitoring Setting.
  final String provisioningState;
  /// Indicates whether enable the trace functionality, which will be deprecated since api version 2020-11-01-preview. Please leverage appInsightsInstrumentationKey to indicate if monitoringSettings enabled or not
  final bool? traceEnabled;

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
      'appInsightsAgentVersions': ?appInsightsAgentVersions == null ? null : appInsightsAgentVersions!.toMap(),
      'appInsightsInstrumentationKey': ?appInsightsInstrumentationKey,
      'appInsightsSamplingRate': ?appInsightsSamplingRate,
      'error': ?error == null ? null : error!.toMap(),
      'provisioningState': provisioningState,
      'traceEnabled': ?traceEnabled,
    };
  }

  factory MonitoringSettingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringSettingPropertiesResponse(
      appInsightsAgentVersions: map['appInsightsAgentVersions'] == null ? null : ApplicationInsightsAgentVersionsResponse.fromMap((map['appInsightsAgentVersions'] as Map).cast<String, dynamic>()),
      appInsightsInstrumentationKey: map['appInsightsInstrumentationKey'] == null ? null : map['appInsightsInstrumentationKey'] as String,
      appInsightsSamplingRate: map['appInsightsSamplingRate'] == null ? null : map['appInsightsSamplingRate'] as double,
      error: map['error'] == null ? null : ErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      traceEnabled: map['traceEnabled'] == null ? null : map['traceEnabled'] as bool,
    );
  }
}

