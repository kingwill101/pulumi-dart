// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_folder_exclusion_args_doc}
/// Arguments for getFolderExclusion.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_folder_exclusion_args_doc}
class GetFolderExclusionArgs {
  final pulumi.Input<String> exclusionId;
  final pulumi.Input<String> folderId;

  /// Creates a new [GetFolderExclusionArgs].
  /// [exclusionId] Required.
  /// [folderId] Required.
  GetFolderExclusionArgs({
    required String exclusionId,
    required String folderId,
  })  : exclusionId = pulumi.Input.asInput<String>(exclusionId),
        folderId = pulumi.Input.asInput<String>(folderId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exclusionId'] = exclusionId;
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderExclusionArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderExclusionArgs(
      exclusionId: map['exclusionId'] as String,
      folderId: map['folderId'] as String,
    );
  }
}
