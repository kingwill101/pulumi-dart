// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_monitoring_signal.dart';
import 'monitor_notification_settings.dart';
import 'monitor_serverless_spark_compute.dart';
import 'monitoring_target.dart';

class MonitorDefinition {
  /// The monitor's notification settings.
  final pulumi.Input<MonitorNotificationSettings>? alertNotificationSettings;
  /// [Required] The ARM resource ID of the compute resource to run the monitoring job on.
  final pulumi.Input<MonitorServerlessSparkCompute> computeConfiguration;
  /// The entities targeted by the monitor.
  final pulumi.Input<MonitoringTarget>? monitoringTarget;
  /// [Required] The signals to monitor.
  final pulumi.Input<Map<String, CustomMonitoringSignal>> signals;

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
      'alertNotificationSettings': ?pulumi.Input.mapOptionalInputValue<MonitorNotificationSettings, Map<String, dynamic>>(alertNotificationSettings, (value) => value.toMap()),
      'computeConfiguration': pulumi.Input.mapInputValue<MonitorServerlessSparkCompute, Map<String, dynamic>>(computeConfiguration, (value) => value.toMap()),
      'monitoringTarget': ?pulumi.Input.mapOptionalInputValue<MonitoringTarget, Map<String, dynamic>>(monitoringTarget, (value) => value.toMap()),
      'signals': pulumi.Input.mapInputValue<Map<String, CustomMonitoringSignal>, Map<String, Map<String, dynamic>>>(signals, (value) => pulumi.Input.encodeMapValues<CustomMonitoringSignal, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MonitorDefinition.fromMap(Map<String, dynamic> map) {
    return MonitorDefinition(
      alertNotificationSettings: map['alertNotificationSettings'] == null ? null : (MonitorNotificationSettings.fromMap((map['alertNotificationSettings'] as Map).cast<String, dynamic>())).input(),
      computeConfiguration: (MonitorServerlessSparkCompute.fromMap((map['computeConfiguration'] as Map).cast<String, dynamic>())).input(),
      monitoringTarget: map['monitoringTarget'] == null ? null : (MonitoringTarget.fromMap((map['monitoringTarget'] as Map).cast<String, dynamic>())).input(),
      signals: (pulumi.Input.decodeMapValues<CustomMonitoringSignal>(map['signals'], (value) => CustomMonitoringSignal.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

