// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional delivery info.
class JobDeliveryInfo {
  /// Scheduled date time.
  final pulumi.Input<String>? scheduledDateTime;

  /// Creates a new [JobDeliveryInfo].
  /// [scheduledDateTime] Scheduled date time.
  JobDeliveryInfo({this.scheduledDateTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scheduledDateTime': ?scheduledDateTime};
  }

  factory JobDeliveryInfo.fromMap(Map<String, dynamic> map) {
    return JobDeliveryInfo(
      scheduledDateTime: (() {
        final guardedValue = map['scheduledDateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
