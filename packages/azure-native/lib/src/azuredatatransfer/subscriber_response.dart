// ignore_for_file: unused_element, unnecessary_cast


class SubscriberResponse {
  /// Email of the subscriber
  final String? email;
  /// Number specifying what notifications to receive
  final double? notifications;

  /// Creates a new [SubscriberResponse].
  /// [email] Email of the subscriber
  /// [notifications] Number specifying what notifications to receive
  SubscriberResponse({
    this.email,
    this.notifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'notifications': ?notifications,
    };
  }

  factory SubscriberResponse.fromMap(Map<String, dynamic> map) {
    return SubscriberResponse(
      email: map['email'] == null ? null : map['email'] as String,
      notifications: map['notifications'] == null ? null : map['notifications'] as double,
    );
  }
}

