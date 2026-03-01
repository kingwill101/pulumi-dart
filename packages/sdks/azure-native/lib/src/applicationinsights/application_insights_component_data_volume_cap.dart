// ignore_for_file: unused_element, unnecessary_cast


/// An Application Insights component daily data volume cap
class ApplicationInsightsComponentDataVolumeCap {
  /// Daily data volume cap in GB.
  final double? cap;
  /// Do not send a notification email when the daily data volume cap is met.
  final bool? stopSendNotificationWhenHitCap;
  /// Reserved, not used for now.
  final bool? stopSendNotificationWhenHitThreshold;
  /// Reserved, not used for now.
  final int? warningThreshold;

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
      cap: map['cap'] == null ? null : map['cap'] as double,
      stopSendNotificationWhenHitCap: map['stopSendNotificationWhenHitCap'] == null ? null : map['stopSendNotificationWhenHitCap'] as bool,
      stopSendNotificationWhenHitThreshold: map['stopSendNotificationWhenHitThreshold'] == null ? null : map['stopSendNotificationWhenHitThreshold'] as bool,
      warningThreshold: map['warningThreshold'] == null ? null : map['warningThreshold'] as int,
    );
  }
}

