// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getContact.
class GetContactArgs {
  final pulumi.Input<String> contactId;
  final pulumi.Input<String>? project;

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
      contactId: pulumi.Input.asInput<String>(map['contactId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
