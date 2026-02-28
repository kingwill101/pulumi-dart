// ignore_for_file: unused_element, unnecessary_cast


/// Represents preferences for sending email notifications for transfer run events.
class EmailPreferences {
  /// If true, email notifications will be sent on transfer run failures.
  final bool? enableFailureEmail;

  /// Creates a new [EmailPreferences].
  /// [enableFailureEmail] If true, email notifications will be sent on transfer run failures.
  EmailPreferences({
    this.enableFailureEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableFailureEmail': ?enableFailureEmail,
    };
  }

  factory EmailPreferences.fromMap(Map<String, dynamic> map) {
    return EmailPreferences(
      enableFailureEmail: map['enableFailureEmail'] == null ? null : map['enableFailureEmail'] as bool,
    );
  }
}

