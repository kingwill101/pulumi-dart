// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_folder_get_folder_args_doc}
/// Arguments for getFolder.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_folder_get_folder_args_doc}
class GetFolderArgs {
  /// The name of the Folder in the form `{folder_id}` or `folders/{folder_id}`.
  final pulumi.Input<String> folder;

  /// `true` to find the organization that the folder belongs, `false` to avoid the lookup. It searches up the tree. (defaults to `false`)
  final pulumi.Input<bool>? lookupOrganization;

  /// Creates a new [GetFolderArgs].
  /// [folder] The name of the Folder in the form `{folder_id}` or `folders/{folder_id}`.
  /// [lookupOrganization] `true` to find the organization that the folder belongs, `false` to avoid the lookup. It searches up the tree. (defaults to `false`)
  GetFolderArgs({
    required String folder,
    bool? lookupOrganization,
  })  : folder = pulumi.Input.asInput<String>(folder),
        lookupOrganization =
            pulumi.Input.asOptionalInput<bool>(lookupOrganization);

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
      folder: map['folder'] as String,
      lookupOrganization: map['lookupOrganization'] == null
          ? null
          : map['lookupOrganization'] as bool,
    );
  }
}
