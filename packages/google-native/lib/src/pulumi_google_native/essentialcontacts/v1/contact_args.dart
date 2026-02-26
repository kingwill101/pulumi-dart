// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'contact_notification_category_subscriptions_item.dart';
import 'contact_validation_state.dart';

/// The set of arguments for Contact.
class ContactArgs {
  /// The email address to send notifications to. The email address does not need to be a Google Account.
  final Input<String> email;

  /// The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  final Input<String> languageTag;

  /// The categories of notifications that the contact will receive communications for.
  final Input<List<ContactNotificationCategorySubscriptionsItem>>
      notificationCategorySubscriptions;
  final Input<String>? project;

  /// The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  final Input<String>? validateTime;

  /// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  final Input<ContactValidationState>? validationState;

  ContactArgs({
    required this.email,
    required this.languageTag,
    required this.notificationCategorySubscriptions,
    this.project,
    this.validateTime,
    this.validationState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['languageTag'] = languageTag;
    map['notificationCategorySubscriptions'] = Input.mapInputValue<
            List<ContactNotificationCategorySubscriptionsItem>, List<String>>(
        notificationCategorySubscriptions,
        (value) => Input.encodeList<
            ContactNotificationCategorySubscriptionsItem,
            String>(value, (value) => value.value));
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final validateTimeValue = validateTime;
    if (validateTimeValue != null) {
      map['validateTime'] = validateTimeValue;
    }
    final validationStateValue = validationState;
    if (validationStateValue != null) {
      map['validationState'] =
          Input.mapOptionalInputValue<ContactValidationState, String>(
              validationStateValue, (value) => value.value);
    }
    return map;
  }

  factory ContactArgs.fromMap(Map<String, dynamic> map) {
    return ContactArgs(
      email: Input.asInput<String>(map['email']),
      languageTag: Input.asInput<String>(map['languageTag']),
      notificationCategorySubscriptions:
          Input.asInput<List<ContactNotificationCategorySubscriptionsItem>>(
              map['notificationCategorySubscriptions']),
      project: Input.asOptionalInput<String>(map['project']),
      validateTime: Input.asOptionalInput<String>(map['validateTime']),
      validationState:
          Input.asOptionalInput<ContactValidationState>(map['validationState']),
    );
  }
}
