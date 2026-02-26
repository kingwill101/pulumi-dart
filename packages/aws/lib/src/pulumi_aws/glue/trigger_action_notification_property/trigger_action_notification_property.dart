// ignore_for_file: unused_element, unnecessary_cast

class TriggerActionNotificationProperty {
  /// After a job run starts, the number of minutes to wait before sending a job run delay notification.
  final int? notifyDelayAfter;

  TriggerActionNotificationProperty({
    this.notifyDelayAfter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final notifyDelayAfterValue = notifyDelayAfter;
    if (notifyDelayAfterValue != null) {
      map['notifyDelayAfter'] = notifyDelayAfterValue;
    }
    return map;
  }

  factory TriggerActionNotificationProperty.fromMap(Map<String, dynamic> map) {
    return TriggerActionNotificationProperty(
      notifyDelayAfter: map['notifyDelayAfter'] == null
          ? null
          : map['notifyDelayAfter'] as int,
    );
  }
}
