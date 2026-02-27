import 'package:pulumi/pulumi.dart';
import '../contact_list_topic/contact_list_topic.dart';
import 'contact_list_args.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Contact List.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Extended Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Contact List using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/contactList:ContactList example example
/// ```
class ContactList extends CustomResource {
  late final Output<String> arn;

  /// Name of the contact list.
  ///
  /// The following arguments are optional:
  late final Output<String> contactListName;

  /// Timestamp noting when the contact list was created in ISO 8601 format.
  late final Output<String> createdTimestamp;

  /// Description of what the contact list is about.
  late final Output<String?> description;

  /// Timestamp noting the last time the contact list was updated in ISO 8601 format.
  late final Output<String> lastUpdatedTimestamp;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags for the contact list. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block(s) with topic for the contact list. Detailed below.
  late final Output<List<ContactListTopic>?> topics;

  ContactList(
    String name, {
    ContactListArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/contactList:ContactList',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.contactListName = registerOutput<String>('contactListName');
    this.createdTimestamp = registerOutput<String>('createdTimestamp');
    this.description = registerOutput<String?>('description');
    this.lastUpdatedTimestamp = registerOutput<String>('lastUpdatedTimestamp');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.topics = registerOutput<List<ContactListTopic>?>('topics');
  }
}
