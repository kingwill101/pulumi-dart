// ignore_for_file: unused_element, unnecessary_cast

class JobNotificationProperty {
  /// After a job run starts, the number of minutes to wait before sending a job run delay notification.
  final int? notifyDelayAfter;

  JobNotificationProperty({
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

  factory JobNotificationProperty.fromMap(Map<String, dynamic> map) {
    return JobNotificationProperty(
      notifyDelayAfter: map['notifyDelayAfter'] == null
          ? null
          : map['notifyDelayAfter'] as int,
    );
  }
}
