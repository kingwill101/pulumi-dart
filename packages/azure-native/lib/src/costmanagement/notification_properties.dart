// ignore_for_file: unused_element, unnecessary_cast


/// The properties of the scheduled action notification.
class NotificationProperties {
  /// Locale of the email.
  final String? language;
  /// Optional message to be added in the email. Length is limited to 250 characters.
  final String? message;
  /// Regional format used for formatting date/time and currency values in the email.
  final String? regionalFormat;
  /// Subject of the email. Length is limited to 70 characters.
  final String subject;
  /// Array of email addresses.
  final List<String> to;

  /// Creates a new [NotificationProperties].
  /// [language] Locale of the email.
  /// [message] Optional message to be added in the email. Length is limited to 250 characters.
  /// [regionalFormat] Regional format used for formatting date/time and currency values in the email.
  /// [subject] Subject of the email. Length is limited to 70 characters.
  /// [to] Array of email addresses.
  NotificationProperties({
    this.language,
    this.message,
    this.regionalFormat,
    required this.subject,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'language': ?language,
      'message': ?message,
      'regionalFormat': ?regionalFormat,
      'subject': subject,
      'to': to,
    };
  }

  factory NotificationProperties.fromMap(Map<String, dynamic> map) {
    return NotificationProperties(
      language: map['language'] == null ? null : map['language'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      regionalFormat: map['regionalFormat'] == null ? null : map['regionalFormat'] as String,
      subject: map['subject'] as String,
      to: (map['to'] as List).cast<String>(),
    );
  }
}

