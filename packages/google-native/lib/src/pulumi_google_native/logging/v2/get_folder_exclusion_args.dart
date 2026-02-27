// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFolderExclusion.
class GetFolderExclusionArgs {
  final pulumi.Input<String> exclusionId;
  final pulumi.Input<String> folderId;

  GetFolderExclusionArgs({
    required this.exclusionId,
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exclusionId'] = exclusionId;
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderExclusionArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderExclusionArgs(
      exclusionId: pulumi.Input.asInput<String>(map['exclusionId']),
      folderId: pulumi.Input.asInput<String>(map['folderId']),
    );
  }
}
