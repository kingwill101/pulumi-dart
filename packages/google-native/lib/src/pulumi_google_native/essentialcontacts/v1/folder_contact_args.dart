// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'folder_contact_notification_category_subscriptions_item.dart';
import 'folder_contact_validation_state.dart';

/// The set of arguments for FolderContact.
class FolderContactArgs {
  /// The email address to send notifications to. The email address does not need to be a Google Account.
  final Input<String> email;
  final Input<String> folderId;

  /// The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  final Input<String> languageTag;

  /// The categories of notifications that the contact will receive communications for.
  final Input<List<FolderContactNotificationCategorySubscriptionsItem>>
      notificationCategorySubscriptions;

  /// The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  final Input<String>? validateTime;

  /// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  final Input<FolderContactValidationState>? validationState;

  FolderContactArgs({
    required this.email,
    required this.folderId,
    required this.languageTag,
    required this.notificationCategorySubscriptions,
    this.validateTime,
    this.validationState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['folderId'] = folderId;
    map['languageTag'] = languageTag;
    map['notificationCategorySubscriptions'] = Input.mapInputValue<
            List<FolderContactNotificationCategorySubscriptionsItem>,
            List<String>>(
        notificationCategorySubscriptions,
        (value) => Input.encodeList<
            FolderContactNotificationCategorySubscriptionsItem,
            String>(value, (value) => value.value));
    final validateTimeValue = validateTime;
    if (validateTimeValue != null) {
      map['validateTime'] = validateTimeValue;
    }
    final validationStateValue = validationState;
    if (validationStateValue != null) {
      map['validationState'] =
          Input.mapOptionalInputValue<FolderContactValidationState, String>(
              validationStateValue, (value) => value.value);
    }
    return map;
  }

  factory FolderContactArgs.fromMap(Map<String, dynamic> map) {
    return FolderContactArgs(
      email: Input.asInput<String>(map['email']),
      folderId: Input.asInput<String>(map['folderId']),
      languageTag: Input.asInput<String>(map['languageTag']),
      notificationCategorySubscriptions: Input.asInput<
              List<FolderContactNotificationCategorySubscriptionsItem>>(
          map['notificationCategorySubscriptions']),
      validateTime: Input.asOptionalInput<String>(map['validateTime']),
      validationState: Input.asOptionalInput<FolderContactValidationState>(
          map['validationState']),
    );
  }
}
