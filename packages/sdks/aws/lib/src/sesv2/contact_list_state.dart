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
  ContactListState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? contactListName,
    pulumi.Output<String>? createdTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? lastUpdatedTimestamp,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<ContactListTopic>>? topics,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      contactListName = pulumi.Input.asOptionalInput<String>(contactListName),
      createdTimestamp = pulumi.Input.asOptionalInput<String>(createdTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      lastUpdatedTimestamp = pulumi.Input.asOptionalInput<String>(lastUpdatedTimestamp),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      topics = pulumi.Input.asOptionalInput<List<ContactListTopic>>(topics);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      contactListName: map['contactListName'] == null ? null : pulumi.Output.create<String>(map['contactListName'] as String),
      createdTimestamp: map['createdTimestamp'] == null ? null : pulumi.Output.create<String>(map['createdTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      lastUpdatedTimestamp: map['lastUpdatedTimestamp'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedTimestamp'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      topics: map['topics'] == null ? null : pulumi.Output.create<List<ContactListTopic>>(pulumi.Input.decodeList<ContactListTopic>(map['topics'], (value) => ContactListTopic.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

