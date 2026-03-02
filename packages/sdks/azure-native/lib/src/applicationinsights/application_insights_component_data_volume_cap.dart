// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Application Insights component daily data volume cap
class ApplicationInsightsComponentDataVolumeCap {
  /// Daily data volume cap in GB.
  final pulumi.Input<double>? cap;
  /// Do not send a notification email when the daily data volume cap is met.
  final pulumi.Input<bool>? stopSendNotificationWhenHitCap;
  /// Reserved, not used for now.
  final pulumi.Input<bool>? stopSendNotificationWhenHitThreshold;
  /// Reserved, not used for now.
  final pulumi.Input<int>? warningThreshold;

  /// Creates a new [ApplicationInsightsComponentDataVolumeCap].
  /// [cap] Daily data volume cap in GB.
  /// [stopSendNotificationWhenHitCap] Do not send a notification email when the daily data volume cap is met.
  /// [stopSendNotificationWhenHitThreshold] Reserved, not used for now.
  /// [warningThreshold] Reserved, not used for now.
  ApplicationInsightsComponentDataVolumeCap({
    this.cap,
    this.stopSendNotificationWhenHitCap,
    this.stopSendNotificationWhenHitThreshold,
    this.warningThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cap': ?cap,
      'stopSendNotificationWhenHitCap': ?stopSendNotificationWhenHitCap,
      'stopSendNotificationWhenHitThreshold': ?stopSendNotificationWhenHitThreshold,
      'warningThreshold': ?warningThreshold,
    };
  }

  factory ApplicationInsightsComponentDataVolumeCap.fromMap(Map<String, dynamic> map) {
    return ApplicationInsightsComponentDataVolumeCap(
      cap: map['cap'] == null ? null : (map['cap']! as double).input(),
      stopSendNotificationWhenHitCap: map['stopSendNotificationWhenHitCap'] == null ? null : (map['stopSendNotificationWhenHitCap']! as bool).input(),
      stopSendNotificationWhenHitThreshold: map['stopSendNotificationWhenHitThreshold'] == null ? null : (map['stopSendNotificationWhenHitThreshold']! as bool).input(),
      warningThreshold: map['warningThreshold'] == null ? null : (map['warningThreshold']! as int).input(),
    );
  }
}

