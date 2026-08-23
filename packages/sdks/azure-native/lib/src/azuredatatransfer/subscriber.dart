// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Subscriber {
  /// Email of the subscriber
  final pulumi.Input<String>? email;
  /// Number specifying what notifications to receive
  final pulumi.Input<double>? notifications;

  /// Creates a new [Subscriber].
  /// [email] Email of the subscriber
  /// [notifications] Number specifying what notifications to receive
  const Subscriber({
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
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
