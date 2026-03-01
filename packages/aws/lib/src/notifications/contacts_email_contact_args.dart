// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notifications_contacts_email_contact_contacts_email_contact_args_doc}
/// The set of arguments for ContactsEmailContact.
/// {@endtemplate}
/// {@macro pulumi_notifications_contacts_email_contact_contacts_email_contact_args_doc}
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

  /// Creates a new [ContactsEmailContactArgs].
  /// [emailAddress] Email address for the contact. Must be between 6 and 254 characters and match an email
  /// [name] Name of the email contact. Must be between 1 and 64 characters and can contain alphanumeric
  /// [tags] Map of tags to assign to the resource. If configured with a provider
  ContactsEmailContactArgs({
    required String emailAddress,
    String? name,
    Map<String, String>? tags,
  }) : emailAddress = pulumi.Input.asInput<String>(emailAddress),
       name = pulumi.Input.asOptionalInput<String>(name),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory ContactsEmailContactArgs.fromMap(Map<String, dynamic> map) {
    return ContactsEmailContactArgs(
      emailAddress: map['emailAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
