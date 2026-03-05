// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The information about notifications to be send to about upcoming operations.
class NotificationPropertiesResponse {
  /// Where the notification should be sent. For email, it should follow email format.
  final pulumi.Input<String> destination;
  /// Tells if the notification is enabled or not.
  final pulumi.Input<bool>? disabled;
  /// The language the notification should be sent on.
  final pulumi.Input<String> language;
  /// Type of notification to be sent.
  final pulumi.Input<String> type;

  /// Creates a new [NotificationPropertiesResponse].
  /// [destination] Where the notification should be sent. For email, it should follow email format.
  /// [disabled] Tells if the notification is enabled or not.
  /// [language] The language the notification should be sent on.
  /// [type] Type of notification to be sent.
  NotificationPropertiesResponse({
    required this.destination,
    this.disabled,
    required this.language,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
      'disabled': ?disabled,
      'language': language,
      'type': type,
    };
  }

  factory NotificationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NotificationPropertiesResponse(
      destination: pulumi.Input.fromValue(map['destination'] as String),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      language: pulumi.Input.fromValue(map['language'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

