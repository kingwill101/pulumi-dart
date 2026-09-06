// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The information about notifications to be send to about upcoming operations.
class NotificationProperties {
  /// Where the notification should be sent. For email, it should follow email format.
  final pulumi.Input<String> destination;
  /// Tells if the notification is enabled or not.
  final pulumi.Input<bool?>? disabled;
  /// The language the notification should be sent on.
  final pulumi.Input<dynamic> language;
  /// Type of notification to be sent.
  final pulumi.Input<dynamic> type;

  /// Creates a new [NotificationProperties].
  /// [destination] Where the notification should be sent. For email, it should follow email format.
  /// [disabled] Tells if the notification is enabled or not.
  /// [language] The language the notification should be sent on.
  /// [type] Type of notification to be sent.
  NotificationProperties({
    required this.destination,
    pulumi.Input<bool?>? disabled,
    required this.language,
    required this.type,
  }) : disabled = disabled ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
      'disabled': ?disabled,
      'language': language,
      'type': type,
    };
  }

  factory NotificationProperties.fromMap(Map<String, dynamic> map) {
    return NotificationProperties(
      destination: pulumi.Input.fromValue(map['destination'] as String),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      language: pulumi.Input.fromValue(map['language']),
      type: pulumi.Input.fromValue(map['type']),
    );
  }
}
