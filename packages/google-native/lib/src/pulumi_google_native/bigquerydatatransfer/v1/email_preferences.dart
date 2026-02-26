// ignore_for_file: unused_element, unnecessary_cast

/// Represents preferences for sending email notifications for transfer run events.
class EmailPreferences {
  /// If true, email notifications will be sent on transfer run failures.
  final bool? enableFailureEmail;

  EmailPreferences({
    this.enableFailureEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableFailureEmailValue = enableFailureEmail;
    if (enableFailureEmailValue != null) {
      map['enableFailureEmail'] = enableFailureEmailValue;
    }
    return map;
  }

  factory EmailPreferences.fromMap(Map<String, dynamic> map) {
    return EmailPreferences(
      enableFailureEmail: map['enableFailureEmail'] == null
          ? null
          : map['enableFailureEmail'] as bool,
    );
  }
}
