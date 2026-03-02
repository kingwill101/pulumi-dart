// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ContactsEmailContact resources.
class ContactsEmailContactState {
  /// ARN of the Email Contact.
  final pulumi.Input<String>? arn;
  /// Email address for the contact. Must be between 6 and 254 characters and match an email
  /// pattern.
  final pulumi.Input<String>? emailAddress;
  /// Name of the email contact. Must be between 1 and 64 characters and can contain alphanumeric
  /// characters, underscores, tildes, periods, and hyphens.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Map of tags to assign to the resource. If configured with a provider
  /// `default_tags` configuration block
  /// present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider
  /// `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ContactsEmailContactState].
  /// [arn] ARN of the Email Contact.
  /// [emailAddress] Email address for the contact. Must be between 6 and 254 characters and match an email
  /// [name] Name of the email contact. Must be between 1 and 64 characters and can contain alphanumeric
  /// [tags] Map of tags to assign to the resource. If configured with a provider
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider
  ContactsEmailContactState({
    this.arn,
    this.emailAddress,
    this.name,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'emailAddress': ?emailAddress,
      'name': ?name,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ContactsEmailContactState.fromMap(Map<String, dynamic> map) {
    return ContactsEmailContactState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      emailAddress: map['emailAddress'] == null ? null : (map['emailAddress'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

