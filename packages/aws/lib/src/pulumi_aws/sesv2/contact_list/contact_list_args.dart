// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../contact_list_topic/contact_list_topic.dart';

/// The set of arguments for ContactList.
class ContactListArgs {
  /// Name of the contact list.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> contactListName;

  /// Description of what the contact list is about.
  final pulumi.Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags for the contact list. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Configuration block(s) with topic for the contact list. Detailed below.
  final pulumi.Input<List<ContactListTopic>>? topics;

  ContactListArgs({
    required this.contactListName,
    this.description,
    this.region,
    this.tags,
    this.topics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactListName'] = contactListName;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final topicsValue = topics;
    if (topicsValue != null) {
      map['topics'] = pulumi.Input.mapOptionalInputValue<List<ContactListTopic>,
              List<Map<String, dynamic>>>(
          topicsValue,
          (value) =>
              pulumi.Input.encodeList<ContactListTopic, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory ContactListArgs.fromMap(Map<String, dynamic> map) {
    return ContactListArgs(
      contactListName: pulumi.Input.asInput<String>(map['contactListName']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      topics:
          pulumi.Input.asOptionalInput<List<ContactListTopic>>(map['topics']),
    );
  }
}
