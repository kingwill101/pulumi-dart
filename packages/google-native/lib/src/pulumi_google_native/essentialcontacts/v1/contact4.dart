import 'package:pulumi/pulumi.dart';
import 'contact_args.dart';

/// Adds a new contact for a resource.
/// Auto-naming is currently not supported for this resource.
class Contact4 extends CustomResource {
  /// The email address to send notifications to. The email address does not need to be a Google Account.
  late final Output<String> email;

  /// The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  late final Output<String> languageTag;

  /// The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{contact_id}
  late final Output<String> name;

  /// The categories of notifications that the contact will receive communications for.
  late final Output<List<String>> notificationCategorySubscriptions;
  late final Output<String> project;

  /// The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  late final Output<String> validateTime;

  /// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  late final Output<String> validationState;

  Contact4(
    String name, {
    ContactArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:essentialcontacts/v1:Contact',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.email = Output.createUnknown<String>();
    this.languageTag = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.notificationCategorySubscriptions =
        Output.createUnknown<List<String>>();
    this.project = Output.createUnknown<String>();
    this.validateTime = Output.createUnknown<String>();
    this.validationState = Output.createUnknown<String>();
  }
}
