// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertNotificationList {
  /// Notice content of alarm.
  final pulumi.Input<String> content;

  /// Email address list.
  final pulumi.Input<List<String>>? emailLists;

  /// SMS sending mobile number.
  final pulumi.Input<List<String>>? mobileLists;

  /// Request address.
  final pulumi.Input<String>? serviceUri;

  /// Notification type. support Email, SMS, DingTalk, MessageCenter.
  final pulumi.Input<String> type;

  /// Creates a new [AlertNotificationList].
  /// [content] Notice content of alarm.
  /// [emailLists] Email address list.
  /// [mobileLists] SMS sending mobile number.
  /// [serviceUri] Request address.
  /// [type] Notification type. support Email, SMS, DingTalk, MessageCenter.
  AlertNotificationList({
    required this.content,
    this.emailLists,
    this.mobileLists,
    this.serviceUri,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'emailLists': ?emailLists,
      'mobileLists': ?mobileLists,
      'serviceUri': ?serviceUri,
      'type': type,
    };
  }

  factory AlertNotificationList.fromMap(Map<String, dynamic> map) {
    return AlertNotificationList(
      content: pulumi.Input.fromValue(map['content'] as String),
      emailLists: (() {
        final guardedValue = map['emailLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      mobileLists: (() {
        final guardedValue = map['mobileLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      serviceUri: (() {
        final guardedValue = map['serviceUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
