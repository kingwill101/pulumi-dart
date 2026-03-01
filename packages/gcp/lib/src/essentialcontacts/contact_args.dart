// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_essentialcontacts_contact_contact_args_doc}
/// The set of arguments for Contact.
/// {@endtemplate}
/// {@macro pulumi_essentialcontacts_contact_contact_args_doc}
class ContactArgs {
  /// The email address to send notifications to. This does not need to be a Google account.
  final pulumi.Input<String> email;

  /// The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages.
  final pulumi.Input<String> languageTag;

  /// The categories of notifications that the contact will receive communications for.
  final pulumi.Input<List<String>> notificationCategorySubscriptions;

  /// The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}
  final pulumi.Input<String> parent;

  /// Creates a new [ContactArgs].
  /// [email] The email address to send notifications to. This does not need to be a Google account.
  /// [languageTag] The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages.
  /// [notificationCategorySubscriptions] The categories of notifications that the contact will receive communications for.
  /// [parent] The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}
  ContactArgs({
    required String email,
    required String languageTag,
    required List<String> notificationCategorySubscriptions,
    required String parent,
  }) : email = pulumi.Input.asInput<String>(email),
       languageTag = pulumi.Input.asInput<String>(languageTag),
       notificationCategorySubscriptions = pulumi.Input.asInput<List<String>>(
         notificationCategorySubscriptions,
       ),
       parent = pulumi.Input.asInput<String>(parent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'languageTag': languageTag,
      'notificationCategorySubscriptions': notificationCategorySubscriptions,
      'parent': parent,
    };
  }

  factory ContactArgs.fromMap(Map<String, dynamic> map) {
    return ContactArgs(
      email: map['email'] as String,
      languageTag: map['languageTag'] as String,
      notificationCategorySubscriptions:
          (map['notificationCategorySubscriptions'] as List).cast<String>(),
      parent: map['parent'] as String,
    );
  }
}
