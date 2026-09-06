// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_notification_settings_response.dart';
import 'monitor_serverless_spark_compute_response.dart';
import 'monitoring_target_response.dart';

class MonitorDefinitionResponse {
  /// The monitor's notification settings.
  final pulumi.Input<MonitorNotificationSettingsResponse?>? alertNotificationSettings;
  /// [Required] The ARM resource ID of the compute resource to run the monitoring job on.
  final pulumi.Input<MonitorServerlessSparkComputeResponse> computeConfiguration;
  /// The entities targeted by the monitor.
  final pulumi.Input<MonitoringTargetResponse?>? monitoringTarget;
  /// [Required] The signals to monitor.
  final pulumi.Input<Map<String, dynamic>> signals;

  /// Creates a new [MonitorDefinitionResponse].
  /// [alertNotificationSettings] The monitor's notification settings.
  /// [computeConfiguration] [Required] The ARM resource ID of the compute resource to run the monitoring job on.
  /// [monitoringTarget] The entities targeted by the monitor.
  /// [signals] [Required] The signals to monitor.
  const MonitorDefinitionResponse({
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
      'signals': signals,
    };
  }

  factory MonitorDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return MonitorDefinitionResponse(
      alertNotificationSettings: (() { final guardedValue = map['alertNotificationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitorNotificationSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      computeConfiguration: pulumi.Input.fromValue(MonitorServerlessSparkComputeResponse.fromMap((map['computeConfiguration']! as Map).cast<String, dynamic>())),
      monitoringTarget: (() { final guardedValue = map['monitoringTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitoringTargetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      signals: pulumi.Input.fromValue((map['signals'] as Map).cast<String, dynamic>()),
    );
  }
}
