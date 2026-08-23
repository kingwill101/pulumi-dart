// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_list_topic.dart';

/// {@template pulumi_sesv2_contact_list_contact_list_args_doc}
/// The set of arguments for ContactList.
/// {@endtemplate}
/// {@macro pulumi_sesv2_contact_list_contact_list_args_doc}
class ContactListArgs {
  /// Name of the contact list.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> contactListName;
  /// Description of what the contact list is about.
  final pulumi.Input<String>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags for the contact list. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Configuration block(s) with topic for the contact list. Detailed below.
  final pulumi.Input<List<ContactListTopic>>? topics;

  /// Creates a new [ContactListArgs].
  /// [contactListName] Name of the contact list.
  /// [description] Description of what the contact list is about.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the contact list. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [topics] Configuration block(s) with topic for the contact list. Detailed below.
  const ContactListArgs({
    required this.contactListName,
    this.description,
    this.region,
    this.tags,
    this.topics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactListName': contactListName,
      'description': ?description,
      'region': ?region,
      'tags': ?tags,
      'topics': ?pulumi.Input.mapOptionalInputValue<List<ContactListTopic>, List<Map<String, dynamic>>>(topics, (value) => pulumi.Input.encodeList<ContactListTopic, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContactListArgs.fromMap(Map<String, dynamic> map) {
    return ContactListArgs(
      contactListName: pulumi.Input.fromValue(map['contactListName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      topics: (() { final guardedValue = map['topics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContactListTopic>(guardedValue, (value) => ContactListTopic.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
