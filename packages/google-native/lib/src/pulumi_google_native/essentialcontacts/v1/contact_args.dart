// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_notification_category_subscriptions_item.dart';
import 'contact_validation_state.dart';

/// The set of arguments for Contact.
class ContactArgs {
  /// The email address to send notifications to. The email address does not need to be a Google Account.
  final pulumi.Input<String> email;

  /// The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  final pulumi.Input<String> languageTag;

  /// The categories of notifications that the contact will receive communications for.
  final pulumi.Input<List<ContactNotificationCategorySubscriptionsItem>>
      notificationCategorySubscriptions;
  final pulumi.Input<String>? project;

  /// The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  final pulumi.Input<String>? validateTime;

  /// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  final pulumi.Input<ContactValidationState>? validationState;

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
    map['notificationCategorySubscriptions'] = pulumi.Input.mapInputValue<
            List<ContactNotificationCategorySubscriptionsItem>, List<String>>(
        notificationCategorySubscriptions,
        (value) => pulumi.Input.encodeList<
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
          pulumi.Input.mapOptionalInputValue<ContactValidationState, String>(
              validationStateValue, (value) => value.value);
    }
    return map;
  }

  factory ContactArgs.fromMap(Map<String, dynamic> map) {
    return ContactArgs(
      email: pulumi.Input.asInput<String>(map['email']),
      languageTag: pulumi.Input.asInput<String>(map['languageTag']),
      notificationCategorySubscriptions: pulumi.Input.asInput<
              List<ContactNotificationCategorySubscriptionsItem>>(
          map['notificationCategorySubscriptions']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      validateTime: pulumi.Input.asOptionalInput<String>(map['validateTime']),
      validationState: pulumi.Input.asOptionalInput<ContactValidationState>(
          map['validationState']),
    );
  }
}
