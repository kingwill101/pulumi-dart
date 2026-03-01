// ignore_for_file: unused_element, unnecessary_cast


/// The information about notifications to be send to about upcoming operations.
class NotificationProperties {
  /// Where the notification should be sent. For email, it should follow email format.
  final String destination;
  /// Tells if the notification is enabled or not.
  final bool? disabled;
  /// The language the notification should be sent on.
  final String language;
  /// Type of notification to be sent.
  final String type;

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
      destination: map['destination'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      language: map['language'] as String,
      type: map['type'] as String,
    );
  }
}

