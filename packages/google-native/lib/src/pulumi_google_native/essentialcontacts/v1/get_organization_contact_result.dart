// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getOrganizationContact.
class GetOrganizationContactResult {
  /// The email address to send notifications to. The email address does not need to be a Google Account.
  final String email;

  /// The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  final String languageTag;

  /// The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{contact_id}
  final String name;

  /// The categories of notifications that the contact will receive communications for.
  final List<String> notificationCategorySubscriptions;

  /// The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  final String validateTime;

  /// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  final String validationState;

  GetOrganizationContactResult({
    required this.email,
    required this.languageTag,
    required this.name,
    required this.notificationCategorySubscriptions,
    required this.validateTime,
    required this.validationState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['languageTag'] = languageTag;
    map['name'] = name;
    map['notificationCategorySubscriptions'] =
        notificationCategorySubscriptions;
    map['validateTime'] = validateTime;
    map['validationState'] = validationState;
    return map;
  }

  factory GetOrganizationContactResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationContactResult(
      email: map['email'] as String,
      languageTag: map['languageTag'] as String,
      name: map['name'] as String,
      notificationCategorySubscriptions:
          (map['notificationCategorySubscriptions'] as List).cast<String>(),
      validateTime: map['validateTime'] as String,
      validationState: map['validationState'] as String,
    );
  }
}
