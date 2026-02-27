// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFolderServiceAccount.
class GetFolderServiceAccountArgs {
  /// The folder ID the service account was created for.
  final pulumi.Input<String> folderId;

  GetFolderServiceAccountArgs({
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderServiceAccountArgs(
      folderId: pulumi.Input.asInput<String>(map['folderId']),
    );
  }
}
