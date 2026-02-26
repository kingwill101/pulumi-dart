// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Contact.
class ContactArgs {
  /// The email address to send notifications to. This does not need to be a Google account.
  final Input<String> email;

  /// The preferred language for notifications, as a ISO 639-1 language code. See Supported languages for a list of supported languages.
  final Input<String> languageTag;

  /// The categories of notifications that the contact will receive communications for.
  final Input<List<String>> notificationCategorySubscriptions;

  /// The resource to save this contact for. Format: organizations/{organization_id}, folders/{folder_id} or projects/{project_id}
  final Input<String> parent;

  ContactArgs({
    required this.email,
    required this.languageTag,
    required this.notificationCategorySubscriptions,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['languageTag'] = languageTag;
    map['notificationCategorySubscriptions'] =
        notificationCategorySubscriptions;
    map['parent'] = parent;
    return map;
  }

  factory ContactArgs.fromMap(Map<String, dynamic> map) {
    return ContactArgs(
      email: Input.asInput<String>(map['email']),
      languageTag: Input.asInput<String>(map['languageTag']),
      notificationCategorySubscriptions:
          Input.asInput<List<String>>(map['notificationCategorySubscriptions']),
      parent: Input.asInput<String>(map['parent']),
    );
  }
}
