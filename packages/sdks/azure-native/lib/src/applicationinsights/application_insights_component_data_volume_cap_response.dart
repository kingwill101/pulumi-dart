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
  ApplicationInsightsComponentDataVolumeCapResponse({
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
      cap: map['cap'] == null ? null : (map['cap']! as double).input(),
      maxHistoryCap: (map['maxHistoryCap'] as double).input(),
      resetTime: (map['resetTime'] as int).input(),
      stopSendNotificationWhenHitCap: map['stopSendNotificationWhenHitCap'] == null ? null : (map['stopSendNotificationWhenHitCap']! as bool).input(),
      stopSendNotificationWhenHitThreshold: map['stopSendNotificationWhenHitThreshold'] == null ? null : (map['stopSendNotificationWhenHitThreshold']! as bool).input(),
      warningThreshold: map['warningThreshold'] == null ? null : (map['warningThreshold']! as int).input(),
    );
  }
}

