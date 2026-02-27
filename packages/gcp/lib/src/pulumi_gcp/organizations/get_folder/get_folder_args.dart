// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFolder.
class GetFolderArgs {
  /// The name of the Folder in the form `{folder_id}` or `folders/{folder_id}`.
  final Input<String> folder;

  /// `true` to find the organization that the folder belongs, `false` to avoid the lookup. It searches up the tree. (defaults to `false`)
  final Input<bool>? lookupOrganization;

  GetFolderArgs({
    required this.folder,
    this.lookupOrganization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folder'] = folder;
    final lookupOrganizationValue = lookupOrganization;
    if (lookupOrganizationValue != null) {
      map['lookupOrganization'] = lookupOrganizationValue;
    }
    return map;
  }

  factory GetFolderArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderArgs(
      folder: Input.asInput<String>(map['folder']),
      lookupOrganization:
          Input.asOptionalInput<bool>(map['lookupOrganization']),
    );
  }
}
