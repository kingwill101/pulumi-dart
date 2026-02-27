// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFolder.
class GetFolderCloudresourcemanagerV2beta1Args {
  final pulumi.Input<String> folderId;

  GetFolderCloudresourcemanagerV2beta1Args({
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderCloudresourcemanagerV2beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetFolderCloudresourcemanagerV2beta1Args(
      folderId: pulumi.Input.asInput<String>(map['folderId']),
    );
  }
}
