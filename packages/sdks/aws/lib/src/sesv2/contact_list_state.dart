// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_list_topic.dart';

/// Input properties used for looking up and filtering ContactList resources.
class ContactListState {
  final pulumi.Input<String>? arn;
  /// Name of the contact list.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? contactListName;
  /// Timestamp noting when the contact list was created in ISO 8601 format.
  final pulumi.Input<String>? createdTimestamp;
  /// Description of what the contact list is about.
  final pulumi.Input<String>? description;
  /// Timestamp noting the last time the contact list was updated in ISO 8601 format.
  final pulumi.Input<String>? lastUpdatedTimestamp;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags for the contact list. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block(s) with topic for the contact list. Detailed below.
  final pulumi.Input<List<ContactListTopic>>? topics;

  /// Creates a new [ContactListState].
  /// [arn] Optional.
  /// [contactListName] Name of the contact list.
  /// [createdTimestamp] Timestamp noting when the contact list was created in ISO 8601 format.
  /// [description] Description of what the contact list is about.
  /// [lastUpdatedTimestamp] Timestamp noting the last time the contact list was updated in ISO 8601 format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the contact list. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [topics] Configuration block(s) with topic for the contact list. Detailed below.
  const ContactListState({
    this.arn,
    this.contactListName,
    this.createdTimestamp,
    this.description,
    this.lastUpdatedTimestamp,
    this.region,
    this.tags,
    this.tagsAll,
    this.topics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'contactListName': ?contactListName,
      'createdTimestamp': ?createdTimestamp,
      'description': ?description,
      'lastUpdatedTimestamp': ?lastUpdatedTimestamp,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'topics': ?pulumi.Input.mapOptionalInputValue<List<ContactListTopic>, List<Map<String, dynamic>>>(topics, (value) => pulumi.Input.encodeList<ContactListTopic, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContactListState.fromMap(Map<String, dynamic> map) {
    return ContactListState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactListName: (() { final guardedValue = map['contactListName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTimestamp: (() { final guardedValue = map['createdTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedTimestamp: (() { final guardedValue = map['lastUpdatedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      topics: (() { final guardedValue = map['topics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContactListTopic>(guardedValue, (value) => ContactListTopic.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

