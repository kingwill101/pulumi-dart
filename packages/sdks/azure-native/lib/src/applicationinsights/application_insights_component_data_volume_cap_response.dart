// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Application Insights component daily data volume cap
class ApplicationInsightsComponentDataVolumeCapResponse {
  /// Daily data volume cap in GB.
  final pulumi.Input<double>? cap;
  /// Maximum daily data volume cap that the user can set for this component.
  final pulumi.Input<double> maxHistoryCap;
  /// Daily data volume cap UTC reset hour.
  final pulumi.Input<int> resetTime;
  /// Do not send a notification email when the daily data volume cap is met.
  final pulumi.Input<bool>? stopSendNotificationWhenHitCap;
  /// Reserved, not used for now.
  final pulumi.Input<bool>? stopSendNotificationWhenHitThreshold;
  /// Reserved, not used for now.
  final pulumi.Input<int>? warningThreshold;

  /// Creates a new [ApplicationInsightsComponentDataVolumeCapResponse].
  /// [cap] Daily data volume cap in GB.
  /// [maxHistoryCap] Maximum daily data volume cap that the user can set for this component.
  /// [resetTime] Daily data volume cap UTC reset hour.
  /// [stopSendNotificationWhenHitCap] Do not send a notification email when the daily data volume cap is met.
  /// [stopSendNotificationWhenHitThreshold] Reserved, not used for now.
  /// [warningThreshold] Reserved, not used for now.
  const ApplicationInsightsComponentDataVolumeCapResponse({
    this.cap,
    required this.maxHistoryCap,
    required this.resetTime,
    this.stopSendNotificationWhenHitCap,
    this.stopSendNotificationWhenHitThreshold,
    this.warningThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cap': ?cap,
      'maxHistoryCap': maxHistoryCap,
      'resetTime': resetTime,
      'stopSendNotificationWhenHitCap': ?stopSendNotificationWhenHitCap,
      'stopSendNotificationWhenHitThreshold': ?stopSendNotificationWhenHitThreshold,
      'warningThreshold': ?warningThreshold,
    };
  }

  factory ApplicationInsightsComponentDataVolumeCapResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationInsightsComponentDataVolumeCapResponse(
      cap: (() { final guardedValue = map['cap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      maxHistoryCap: pulumi.Input.fromValue(map['maxHistoryCap'] as double),
      resetTime: pulumi.Input.fromValue(map['resetTime'] as int),
      stopSendNotificationWhenHitCap: (() { final guardedValue = map['stopSendNotificationWhenHitCap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stopSendNotificationWhenHitThreshold: (() { final guardedValue = map['stopSendNotificationWhenHitThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      warningThreshold: (() { final guardedValue = map['warningThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

