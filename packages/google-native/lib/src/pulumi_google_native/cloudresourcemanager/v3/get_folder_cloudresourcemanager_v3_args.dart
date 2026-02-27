// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFolder.
class GetFolderCloudresourcemanagerV3Args {
  final pulumi.Input<String> folderId;

  GetFolderCloudresourcemanagerV3Args({
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderCloudresourcemanagerV3Args.fromMap(
      Map<String, dynamic> map) {
    return GetFolderCloudresourcemanagerV3Args(
      folderId: pulumi.Input.asInput<String>(map['folderId']),
    );
  }
}
