// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerActionNotificationProperty {
  /// After a job run starts, the number of minutes to wait before sending a job run delay notification.
  final pulumi.Input<int>? notifyDelayAfter;

  /// Creates a new [TriggerActionNotificationProperty].
  /// [notifyDelayAfter] After a job run starts, the number of minutes to wait before sending a job run delay notification.
  TriggerActionNotificationProperty({
    this.notifyDelayAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notifyDelayAfter': ?notifyDelayAfter,
    };
  }

  factory TriggerActionNotificationProperty.fromMap(Map<String, dynamic> map) {
    return TriggerActionNotificationProperty(
      notifyDelayAfter: map['notifyDelayAfter'] == null ? null : ((map['notifyDelayAfter'] as int).input()).input(),
    );
  }
}

