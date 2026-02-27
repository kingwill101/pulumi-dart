// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFolderContact.
class GetFolderContactArgs {
  final pulumi.Input<String> contactId;
  final pulumi.Input<String> folderId;

  GetFolderContactArgs({
    required this.contactId,
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactId'] = contactId;
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderContactArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderContactArgs(
      contactId: pulumi.Input.asInput<String>(map['contactId']),
      folderId: pulumi.Input.asInput<String>(map['folderId']),
    );
  }
}
