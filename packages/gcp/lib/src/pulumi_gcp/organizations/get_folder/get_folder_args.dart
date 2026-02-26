// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFolder.
class GetFolderArgs {
  /// The name of the Folder in the form `{folder_id}` or `folders/{folder_id}`.
  final Input<String> folder;

  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to find the organization that the folder belongs, <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> to avoid the lookup. It searches up the tree. (defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>)
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
