// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getContact.
class GetContactArgs {
  final Input<String> contactId;
  final Input<String>? project;

  GetContactArgs({
    required this.contactId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactId'] = contactId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetContactArgs.fromMap(Map<String, dynamic> map) {
    return GetContactArgs(
      contactId: Input.asInput<String>(map['contactId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
