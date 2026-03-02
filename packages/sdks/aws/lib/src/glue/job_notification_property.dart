// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobNotificationProperty {
  /// After a job run starts, the number of minutes to wait before sending a job run delay notification.
  final pulumi.Input<int>? notifyDelayAfter;

  /// Creates a new [JobNotificationProperty].
  /// [notifyDelayAfter] After a job run starts, the number of minutes to wait before sending a job run delay notification.
  JobNotificationProperty({
    this.notifyDelayAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notifyDelayAfter': ?notifyDelayAfter,
    };
  }

  factory JobNotificationProperty.fromMap(Map<String, dynamic> map) {
    return JobNotificationProperty(
      notifyDelayAfter: map['notifyDelayAfter'] == null ? null : ((map['notifyDelayAfter'] as int).input()).input(),
    );
  }
}

