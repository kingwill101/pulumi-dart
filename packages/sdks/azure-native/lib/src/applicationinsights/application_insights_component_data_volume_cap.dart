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
      'stopSendNotificationWhenHitThreshold':
          ?stopSendNotificationWhenHitThreshold,
      'warningThreshold': ?warningThreshold,
    };
  }

  factory ApplicationInsightsComponentDataVolumeCap.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationInsightsComponentDataVolumeCap(
      cap: (() {
        final guardedValue = map['cap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      stopSendNotificationWhenHitCap: (() {
        final guardedValue = map['stopSendNotificationWhenHitCap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      stopSendNotificationWhenHitThreshold: (() {
        final guardedValue = map['stopSendNotificationWhenHitThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      warningThreshold: (() {
        final guardedValue = map['warningThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
