// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'organization_contact_notification_category_subscriptions_item.dart';
import 'organization_contact_validation_state.dart';

/// The set of arguments for OrganizationContact.
class OrganizationContactArgs {
  /// The email address to send notifications to. The email address does not need to be a Google Account.
  final Input<String> email;

  /// The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  final Input<String> languageTag;

  /// The categories of notifications that the contact will receive communications for.
  final Input<List<OrganizationContactNotificationCategorySubscriptionsItem>>
      notificationCategorySubscriptions;
  final Input<String> organizationId;

  /// The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  final Input<String>? validateTime;

  /// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  final Input<OrganizationContactValidationState>? validationState;

  OrganizationContactArgs({
    required this.email,
    required this.languageTag,
    required this.notificationCategorySubscriptions,
    required this.organizationId,
    this.validateTime,
    this.validationState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['languageTag'] = languageTag;
    map['notificationCategorySubscriptions'] = Input.mapInputValue<
            List<OrganizationContactNotificationCategorySubscriptionsItem>,
            List<String>>(
        notificationCategorySubscriptions,
        (value) => Input.encodeList<
            OrganizationContactNotificationCategorySubscriptionsItem,
            String>(value, (value) => value.value));
    map['organizationId'] = organizationId;
    final validateTimeValue = validateTime;
    if (validateTimeValue != null) {
      map['validateTime'] = validateTimeValue;
    }
    final validationStateValue = validationState;
    if (validationStateValue != null) {
      map['validationState'] = Input.mapOptionalInputValue<
          OrganizationContactValidationState,
          String>(validationStateValue, (value) => value.value);
    }
    return map;
  }

  factory OrganizationContactArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationContactArgs(
      email: Input.asInput<String>(map['email']),
      languageTag: Input.asInput<String>(map['languageTag']),
      notificationCategorySubscriptions: Input.asInput<
              List<OrganizationContactNotificationCategorySubscriptionsItem>>(
          map['notificationCategorySubscriptions']),
      organizationId: Input.asInput<String>(map['organizationId']),
      validateTime: Input.asOptionalInput<String>(map['validateTime']),
      validationState:
          Input.asOptionalInput<OrganizationContactValidationState>(
              map['validationState']),
    );
  }
}
