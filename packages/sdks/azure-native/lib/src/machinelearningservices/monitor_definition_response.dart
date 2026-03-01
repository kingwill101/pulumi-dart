// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_monitoring_signal_response.dart';
import 'monitor_notification_settings_response.dart';
import 'monitor_serverless_spark_compute_response.dart';
import 'monitoring_target_response.dart';

class MonitorDefinitionResponse {
  /// The monitor's notification settings.
  final MonitorNotificationSettingsResponse? alertNotificationSettings;
  /// [Required] The ARM resource ID of the compute resource to run the monitoring job on.
  final MonitorServerlessSparkComputeResponse computeConfiguration;
  /// The entities targeted by the monitor.
  final MonitoringTargetResponse? monitoringTarget;
  /// [Required] The signals to monitor.
  final Map<String, CustomMonitoringSignalResponse> signals;

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
      'alertNotificationSettings': ?alertNotificationSettings == null ? null : alertNotificationSettings!.toMap(),
      'computeConfiguration': computeConfiguration.toMap(),
      'monitoringTarget': ?monitoringTarget == null ? null : monitoringTarget!.toMap(),
      'signals': pulumi.Input.encodeMapValues<CustomMonitoringSignalResponse, Map<String, dynamic>>(signals, (value) => value.toMap()),
    };
  }

  factory MonitorDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return MonitorDefinitionResponse(
      alertNotificationSettings: map['alertNotificationSettings'] == null ? null : MonitorNotificationSettingsResponse.fromMap((map['alertNotificationSettings'] as Map).cast<String, dynamic>()),
      computeConfiguration: MonitorServerlessSparkComputeResponse.fromMap((map['computeConfiguration'] as Map).cast<String, dynamic>()),
      monitoringTarget: map['monitoringTarget'] == null ? null : MonitoringTargetResponse.fromMap((map['monitoringTarget'] as Map).cast<String, dynamic>()),
      signals: pulumi.Input.decodeMapValues<CustomMonitoringSignalResponse>(map['signals'], (value) => CustomMonitoringSignalResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

