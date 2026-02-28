// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_essentialcontacts_v1_get_folder_contact_args_doc}
/// Arguments for getFolderContact.
/// {@endtemplate}
/// {@macro pulumi_essentialcontacts_v1_get_folder_contact_args_doc}
class GetFolderContactArgs {
  final pulumi.Input<String> contactId;
  final pulumi.Input<String> folderId;

  /// Creates a new [GetFolderContactArgs].
  /// [contactId] Required.
  /// [folderId] Required.
  GetFolderContactArgs({
    required String contactId,
    required String folderId,
  })  : contactId = pulumi.Input.asInput<String>(contactId),
        folderId = pulumi.Input.asInput<String>(folderId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactId'] = contactId;
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderContactArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderContactArgs(
      contactId: map['contactId'] as String,
      folderId: map['folderId'] as String,
    );
  }
}
