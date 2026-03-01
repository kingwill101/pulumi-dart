// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_contact_notification_category_subscriptions_item.dart';
import 'organization_contact_validation_state.dart';

/// {@template pulumi_essentialcontacts_v1_organization_contact_args_doc}
/// The set of arguments for OrganizationContact.
/// {@endtemplate}
/// {@macro pulumi_essentialcontacts_v1_organization_contact_args_doc}
class OrganizationContactArgs {
  /// The email address to send notifications to. The email address does not need to be a Google Account.
  final pulumi.Input<String> email;

  /// The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  final pulumi.Input<String> languageTag;

  /// The categories of notifications that the contact will receive communications for.
  final pulumi.Input<
    List<OrganizationContactNotificationCategorySubscriptionsItem>
  >
  notificationCategorySubscriptions;
  final pulumi.Input<String> organizationId;

  /// The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  final pulumi.Input<String>? validateTime;

  /// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  final pulumi.Input<OrganizationContactValidationState>? validationState;

  /// Creates a new [OrganizationContactArgs].
  /// [email] The email address to send notifications to. The email address does not need to be a Google Account.
  /// [languageTag] The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  /// [notificationCategorySubscriptions] The categories of notifications that the contact will receive communications for.
  /// [organizationId] Required.
  /// [validateTime] The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  /// [validationState] The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  OrganizationContactArgs({
    required String email,
    required String languageTag,
    required List<OrganizationContactNotificationCategorySubscriptionsItem>
    notificationCategorySubscriptions,
    required String organizationId,
    String? validateTime,
    OrganizationContactValidationState? validationState,
  }) : email = pulumi.Input.asInput<String>(email),
       languageTag = pulumi.Input.asInput<String>(languageTag),
       notificationCategorySubscriptions =
           pulumi.Input.asInput<
             List<OrganizationContactNotificationCategorySubscriptionsItem>
           >(notificationCategorySubscriptions),
       organizationId = pulumi.Input.asInput<String>(organizationId),
       validateTime = pulumi.Input.asOptionalInput<String>(validateTime),
       validationState =
           pulumi.Input.asOptionalInput<OrganizationContactValidationState>(
             validationState,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'languageTag': languageTag,
      'notificationCategorySubscriptions':
          pulumi.Input.mapInputValue<
            List<OrganizationContactNotificationCategorySubscriptionsItem>,
            List<String>
          >(
            notificationCategorySubscriptions,
            (value) =>
                pulumi.Input.encodeList<
                  OrganizationContactNotificationCategorySubscriptionsItem,
                  String
                >(value, (value) => value.value),
          ),
      'organizationId': organizationId,
      'validateTime': ?validateTime,
      'validationState':
          ?pulumi.Input.mapOptionalInputValue<
            OrganizationContactValidationState,
            String
          >(validationState, (value) => value.value),
    };
  }

  factory OrganizationContactArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationContactArgs(
      email: map['email'] as String,
      languageTag: map['languageTag'] as String,
      notificationCategorySubscriptions:
          pulumi.Input.decodeList<
            OrganizationContactNotificationCategorySubscriptionsItem
          >(
            map['notificationCategorySubscriptions'],
            (value) =>
                OrganizationContactNotificationCategorySubscriptionsItem.fromValue(
                  value as String,
                ),
          ),
      organizationId: map['organizationId'] as String,
      validateTime: map['validateTime'] == null
          ? null
          : map['validateTime'] as String,
      validationState: map['validationState'] == null
          ? null
          : OrganizationContactValidationState.fromValue(
              map['validationState'] as String,
            ),
    );
  }
}
