// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_monitoring_signal.dart';
import 'monitor_notification_settings.dart';
import 'monitor_serverless_spark_compute.dart';
import 'monitoring_target.dart';

class MonitorDefinition {
  /// The monitor's notification settings.
  final MonitorNotificationSettings? alertNotificationSettings;
  /// [Required] The ARM resource ID of the compute resource to run the monitoring job on.
  final MonitorServerlessSparkCompute computeConfiguration;
  /// The entities targeted by the monitor.
  final MonitoringTarget? monitoringTarget;
  /// [Required] The signals to monitor.
  final Map<String, CustomMonitoringSignal> signals;

  /// Creates a new [MonitorDefinition].
  /// [alertNotificationSettings] The monitor's notification settings.
  /// [computeConfiguration] [Required] The ARM resource ID of the compute resource to run the monitoring job on.
  /// [monitoringTarget] The entities targeted by the monitor.
  /// [signals] [Required] The signals to monitor.
  MonitorDefinition({
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
      'signals': pulumi.Input.encodeMapValues<CustomMonitoringSignal, Map<String, dynamic>>(signals, (value) => value.toMap()),
    };
  }

  factory MonitorDefinition.fromMap(Map<String, dynamic> map) {
    return MonitorDefinition(
      alertNotificationSettings: map['alertNotificationSettings'] == null ? null : MonitorNotificationSettings.fromMap((map['alertNotificationSettings'] as Map).cast<String, dynamic>()),
      computeConfiguration: MonitorServerlessSparkCompute.fromMap((map['computeConfiguration'] as Map).cast<String, dynamic>()),
      monitoringTarget: map['monitoringTarget'] == null ? null : MonitoringTarget.fromMap((map['monitoringTarget'] as Map).cast<String, dynamic>()),
      signals: pulumi.Input.decodeMapValues<CustomMonitoringSignal>(map['signals'], (value) => CustomMonitoringSignal.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

