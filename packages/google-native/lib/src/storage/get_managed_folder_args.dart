// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_managed_folder_args_doc}
/// Arguments for getManagedFolder.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_managed_folder_args_doc}
class GetManagedFolderArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String>? ifMetagenerationMatch;
  final pulumi.Input<String>? ifMetagenerationNotMatch;
  final pulumi.Input<String> managedFolder;

  /// Creates a new [GetManagedFolderArgs].
  /// [bucket] Required.
  /// [ifMetagenerationMatch] Optional.
  /// [ifMetagenerationNotMatch] Optional.
  /// [managedFolder] Required.
  GetManagedFolderArgs({
    required String bucket,
    String? ifMetagenerationMatch,
    String? ifMetagenerationNotMatch,
    required String managedFolder,
  }) : bucket = pulumi.Input.asInput<String>(bucket),
       ifMetagenerationMatch = pulumi.Input.asOptionalInput<String>(
         ifMetagenerationMatch,
       ),
       ifMetagenerationNotMatch = pulumi.Input.asOptionalInput<String>(
         ifMetagenerationNotMatch,
       ),
       managedFolder = pulumi.Input.asInput<String>(managedFolder);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'ifMetagenerationMatch': ?ifMetagenerationMatch,
      'ifMetagenerationNotMatch': ?ifMetagenerationNotMatch,
      'managedFolder': managedFolder,
    };
  }

  factory GetManagedFolderArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedFolderArgs(
      bucket: map['bucket'] as String,
      ifMetagenerationMatch: map['ifMetagenerationMatch'] == null
          ? null
          : map['ifMetagenerationMatch'] as String,
      ifMetagenerationNotMatch: map['ifMetagenerationNotMatch'] == null
          ? null
          : map['ifMetagenerationNotMatch'] as String,
      managedFolder: map['managedFolder'] as String,
    );
  }
}
