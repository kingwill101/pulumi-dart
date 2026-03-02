// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The information about notifications to be send to about upcoming operations.
class NotificationProperties {
  /// Where the notification should be sent. For email, it should follow email format.
  final pulumi.Input<String> destination;
  /// Tells if the notification is enabled or not.
  final pulumi.Input<bool>? disabled;
  /// The language the notification should be sent on.
  final pulumi.Input<String> language;
  /// Type of notification to be sent.
  final pulumi.Input<String> type;

  /// Creates a new [NotificationProperties].
  /// [destination] Where the notification should be sent. For email, it should follow email format.
  /// [disabled] Tells if the notification is enabled or not.
  /// [language] The language the notification should be sent on.
  /// [type] Type of notification to be sent.
  NotificationProperties({
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

  factory NotificationProperties.fromMap(Map<String, dynamic> map) {
    return NotificationProperties(
      destination: (map['destination'] as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      language: (map['language'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

