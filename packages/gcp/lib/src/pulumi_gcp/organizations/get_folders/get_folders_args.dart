// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFolders.
class GetFoldersArgs {
  /// A string parent as defined in the [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v3/folders/list#query-parameters).
  final pulumi.Input<String> parentId;

  GetFoldersArgs({
    required this.parentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parentId'] = parentId;
    return map;
  }

  factory GetFoldersArgs.fromMap(Map<String, dynamic> map) {
    return GetFoldersArgs(
      parentId: pulumi.Input.asInput<String>(map['parentId']),
    );
  }
}
