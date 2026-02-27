// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ContactsEmailContact.
class ContactsEmailContactArgs {
  /// Email address for the contact. Must be between 6 and 254 characters and match an email
  /// pattern.
  final pulumi.Input<String> emailAddress;

  /// Name of the email contact. Must be between 1 and 64 characters and can contain alphanumeric
  /// characters, underscores, tildes, periods, and hyphens.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Map of tags to assign to the resource. If configured with a provider
  /// `default_tags` configuration block
  /// present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ContactsEmailContactArgs({
    required this.emailAddress,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['emailAddress'] = emailAddress;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ContactsEmailContactArgs.fromMap(Map<String, dynamic> map) {
    return ContactsEmailContactArgs(
      emailAddress: pulumi.Input.asInput<String>(map['emailAddress']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
