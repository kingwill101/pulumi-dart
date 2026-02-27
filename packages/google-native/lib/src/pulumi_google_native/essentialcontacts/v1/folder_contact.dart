import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_contact_args.dart';

/// Adds a new contact for a resource.
/// Auto-naming is currently not supported for this resource.
class FolderContact extends pulumi.CustomResource {
  /// The email address to send notifications to. The email address does not need to be a Google Account.
  late final pulumi.Output<String> email;
  late final pulumi.Output<String> folderId;

  /// The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  late final pulumi.Output<String> languageTag;

  /// The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{contact_id}
  late final pulumi.Output<String> name;

  /// The categories of notifications that the contact will receive communications for.
  late final pulumi.Output<List<String>> notificationCategorySubscriptions;

  /// The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  late final pulumi.Output<String> validateTime;

  /// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  late final pulumi.Output<String> validationState;

  FolderContact(
    String name, {
    FolderContactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:essentialcontacts/v1:FolderContact',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.email = registerOutput<String>('email');
    this.folderId = registerOutput<String>('folderId');
    this.languageTag = registerOutput<String>('languageTag');
    this.name = registerOutput<String>('name');
    this.notificationCategorySubscriptions =
        registerOutput<List<String>>('notificationCategorySubscriptions');
    this.validateTime = registerOutput<String>('validateTime');
    this.validationState = registerOutput<String>('validationState');
  }
}
