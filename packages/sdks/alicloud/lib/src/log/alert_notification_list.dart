// ignore_for_file: unused_element, unnecessary_cast


class AlertNotificationList {
  /// Notice content of alarm.
  final String content;
  /// Email address list.
  final List<String>? emailLists;
  /// SMS sending mobile number.
  final List<String>? mobileLists;
  /// Request address.
  final String? serviceUri;
  /// Notification type. support Email, SMS, DingTalk, MessageCenter.
  final String type;

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
      content: map['content'] as String,
      emailLists: map['emailLists'] == null ? null : (map['emailLists'] as List).cast<String>(),
      mobileLists: map['mobileLists'] == null ? null : (map['mobileLists'] as List).cast<String>(),
      serviceUri: map['serviceUri'] == null ? null : map['serviceUri'] as String,
      type: map['type'] as String,
    );
  }
}

