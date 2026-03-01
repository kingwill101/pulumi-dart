// ignore_for_file: unused_element, unnecessary_cast


class Subscriber {
  /// Email of the subscriber
  final String? email;
  /// Number specifying what notifications to receive
  final double? notifications;

  /// Creates a new [Subscriber].
  /// [email] Email of the subscriber
  /// [notifications] Number specifying what notifications to receive
  Subscriber({
    this.email,
    this.notifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'notifications': ?notifications,
    };
  }

  factory Subscriber.fromMap(Map<String, dynamic> map) {
    return Subscriber(
      email: map['email'] == null ? null : map['email'] as String,
      notifications: map['notifications'] == null ? null : map['notifications'] as double,
    );
  }
}

