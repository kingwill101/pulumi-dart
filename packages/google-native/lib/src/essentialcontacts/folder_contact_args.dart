// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_contact_notification_category_subscriptions_item.dart';
import 'folder_contact_validation_state.dart';

/// {@template pulumi_essentialcontacts_v1_folder_contact_args_doc}
/// The set of arguments for FolderContact.
/// {@endtemplate}
/// {@macro pulumi_essentialcontacts_v1_folder_contact_args_doc}
class FolderContactArgs {
  /// The email address to send notifications to. The email address does not need to be a Google Account.
  final pulumi.Input<String> email;
  final pulumi.Input<String> folderId;
  /// The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  final pulumi.Input<String> languageTag;
  /// The categories of notifications that the contact will receive communications for.
  final pulumi.Input<List<FolderContactNotificationCategorySubscriptionsItem>> notificationCategorySubscriptions;
  /// The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  final pulumi.Input<String>? validateTime;
  /// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  final pulumi.Input<FolderContactValidationState>? validationState;

  /// Creates a new [FolderContactArgs].
  /// [email] The email address to send notifications to. The email address does not need to be a Google Account.
  /// [folderId] Required.
  /// [languageTag] The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  /// [notificationCategorySubscriptions] The categories of notifications that the contact will receive communications for.
  /// [validateTime] The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  /// [validationState] The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  FolderContactArgs({
    required String email,
    required String folderId,
    required String languageTag,
    required List<FolderContactNotificationCategorySubscriptionsItem> notificationCategorySubscriptions,
    String? validateTime,
    FolderContactValidationState? validationState,
  }) :
      email = pulumi.Input.asInput<String>(email),
      folderId = pulumi.Input.asInput<String>(folderId),
      languageTag = pulumi.Input.asInput<String>(languageTag),
      notificationCategorySubscriptions = pulumi.Input.asInput<List<FolderContactNotificationCategorySubscriptionsItem>>(notificationCategorySubscriptions),
      validateTime = pulumi.Input.asOptionalInput<String>(validateTime),
      validationState = pulumi.Input.asOptionalInput<FolderContactValidationState>(validationState);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'folderId': folderId,
      'languageTag': languageTag,
      'notificationCategorySubscriptions': pulumi.Input.mapInputValue<List<FolderContactNotificationCategorySubscriptionsItem>, List<String>>(notificationCategorySubscriptions, (value) => pulumi.Input.encodeList<FolderContactNotificationCategorySubscriptionsItem, String>(value, (value) => value.value)),
      'validateTime': ?validateTime,
      'validationState': ?pulumi.Input.mapOptionalInputValue<FolderContactValidationState, String>(validationState, (value) => value.value),
    };
  }

  factory FolderContactArgs.fromMap(Map<String, dynamic> map) {
    return FolderContactArgs(
      email: map['email'] as String,
      folderId: map['folderId'] as String,
      languageTag: map['languageTag'] as String,
      notificationCategorySubscriptions: pulumi.Input.decodeList<FolderContactNotificationCategorySubscriptionsItem>(map['notificationCategorySubscriptions'], (value) => FolderContactNotificationCategorySubscriptionsItem.fromValue(value as String)),
      validateTime: map['validateTime'] == null ? null : map['validateTime'] as String,
      validationState: map['validationState'] == null ? null : FolderContactValidationState.fromValue(map['validationState'] as String),
    );
  }
}

