// ignore_for_file: unused_element, unnecessary_cast

/// Represents preferences for sending email notifications for transfer run events.
class EmailPreferencesResponse {
  /// If true, email notifications will be sent on transfer run failures.
  final bool enableFailureEmail;

  /// Creates a new [EmailPreferencesResponse].
  /// [enableFailureEmail] If true, email notifications will be sent on transfer run failures.
  EmailPreferencesResponse({
    required this.enableFailureEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableFailureEmail'] = enableFailureEmail;
    return map;
  }

  factory EmailPreferencesResponse.fromMap(Map<String, dynamic> map) {
    return EmailPreferencesResponse(
      enableFailureEmail: map['enableFailureEmail'] as bool,
    );
  }
}
