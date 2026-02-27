import 'package:pulumi/pulumi.dart' as pulumi;
import 'contacts_email_contact_args.dart';

/// Resource for managing AWS User Notifications Contacts Email Contact.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Contacts Email Contact using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/contactsEmailContact:ContactsEmailContact example arn:aws:notificationscontacts:us-west-2:123456789012:emailcontact:example-contact
/// ```
class ContactsEmailContact extends pulumi.CustomResource {
  /// ARN of the Email Contact.
  late final pulumi.Output<String> arn;

  /// Email address for the contact. Must be between 6 and 254 characters and match an email
  /// pattern.
  late final pulumi.Output<String> emailAddress;

  /// Name of the email contact. Must be between 1 and 64 characters and can contain alphanumeric
  /// characters, underscores, tildes, periods, and hyphens.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Map of tags to assign to the resource. If configured with a provider
  /// `default_tags` configuration block
  /// present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider
  /// `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ContactsEmailContact(
    String name, {
    ContactsEmailContactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:notifications/contactsEmailContact:ContactsEmailContact',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.emailAddress = registerOutput<String>('emailAddress');
    this.name = registerOutput<String>('name');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
