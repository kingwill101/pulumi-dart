// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_monitoring_signal_response.dart';
import 'monitor_notification_settings_response.dart';
import 'monitor_serverless_spark_compute_response.dart';
import 'monitoring_target_response.dart';

class MonitorDefinitionResponse {
  /// The monitor's notification settings.
  final pulumi.Input<MonitorNotificationSettingsResponse>? alertNotificationSettings;
  /// [Required] The ARM resource ID of the compute resource to run the monitoring job on.
  final pulumi.Input<MonitorServerlessSparkComputeResponse> computeConfiguration;
  /// The entities targeted by the monitor.
  final pulumi.Input<MonitoringTargetResponse>? monitoringTarget;
  /// [Required] The signals to monitor.
  final pulumi.Input<Map<String, CustomMonitoringSignalResponse>> signals;

  /// Creates a new [MonitorDefinitionResponse].
  /// [alertNotificationSettings] The monitor's notification settings.
  /// [computeConfiguration] [Required] The ARM resource ID of the compute resource to run the monitoring job on.
  /// [monitoringTarget] The entities targeted by the monitor.
  /// [signals] [Required] The signals to monitor.
  MonitorDefinitionResponse({
    this.alertNotificationSettings,
    required this.computeConfiguration,
    this.monitoringTarget,
    required this.signals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertNotificationSettings': ?pulumi.Input.mapOptionalInputValue<MonitorNotificationSettingsResponse, Map<String, dynamic>>(alertNotificationSettings, (value) => value.toMap()),
      'computeConfiguration': pulumi.Input.mapInputValue<MonitorServerlessSparkComputeResponse, Map<String, dynamic>>(computeConfiguration, (value) => value.toMap()),
      'monitoringTarget': ?pulumi.Input.mapOptionalInputValue<MonitoringTargetResponse, Map<String, dynamic>>(monitoringTarget, (value) => value.toMap()),
      'signals': pulumi.Input.mapInputValue<Map<String, CustomMonitoringSignalResponse>, Map<String, Map<String, dynamic>>>(signals, (value) => pulumi.Input.encodeMapValues<CustomMonitoringSignalResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MonitorDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return MonitorDefinitionResponse(
      alertNotificationSettings: map['alertNotificationSettings'] == null ? null : (MonitorNotificationSettingsResponse.fromMap((map['alertNotificationSettings'] as Map).cast<String, dynamic>())).input(),
      computeConfiguration: (MonitorServerlessSparkComputeResponse.fromMap((map['computeConfiguration'] as Map).cast<String, dynamic>())).input(),
      monitoringTarget: map['monitoringTarget'] == null ? null : (MonitoringTargetResponse.fromMap((map['monitoringTarget'] as Map).cast<String, dynamic>())).input(),
      signals: (pulumi.Input.decodeMapValues<CustomMonitoringSignalResponse>(map['signals'], (value) => CustomMonitoringSignalResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

