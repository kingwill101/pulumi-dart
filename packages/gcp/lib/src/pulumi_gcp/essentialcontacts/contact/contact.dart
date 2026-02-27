import 'package:pulumi/pulumi.dart';
import 'contact_args.dart';

/// A contact that will receive notifications from Google Cloud.
///
///
/// To get more information about Contact, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/docs/reference/essentialcontacts/rest/v1/projects.contacts)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/managing-notification-contacts)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billing_project` and set `user_project_override` to true
/// in the provider configuration. Otherwise the Essential Contacts API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billing_project` you defined.
///
/// ## Example Usage
///
/// ### Essential Contact
///
///
///
///
/// ## Import
///
/// Contact can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Contact can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:essentialcontacts/contact:Contact default {{name}}
/// ```
class Contact extends CustomResource {
  /// The email address to send notifications to. This does not need to be a Google account.
  late final Output<String> email;

  /// The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages.
  late final Output<String> languageTag;

  /// The identifier for the contact. Format: {resourceType}/{resource_id}/contacts/{contact_id}
  late final Output<String> name;

  /// The categories of notifications that the contact will receive communications for.
  late final Output<List<String>> notificationCategorySubscriptions;

  /// The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}
  late final Output<String> parent;

  Contact(
    String name, {
    ContactArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:essentialcontacts/contact:Contact',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.email = registerOutput<String>('email');
    this.languageTag = registerOutput<String>('languageTag');
    this.name = registerOutput<String>('name');
    this.notificationCategorySubscriptions =
        registerOutput<List<String>>('notificationCategorySubscriptions');
    this.parent = registerOutput<String>('parent');
  }
}
