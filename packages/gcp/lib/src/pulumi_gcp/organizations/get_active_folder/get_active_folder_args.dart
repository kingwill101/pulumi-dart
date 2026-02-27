// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getActiveFolder.
class GetActiveFolderArgs {
  /// The API method to use to search for the folder. Valid values are `LIST` and `SEARCH`. Default Value is `LIST`. `LIST` is [strongly consistent](https://docs.cloud.google.com/resource-manager/reference/rest/v3/folders/list#:~:text=list()%20provides%20a-,strongly%20consistent,-view%20of%20the) and requires `resourcemanager.folders.list` on the parent folder, while `SEARCH` is [eventually consistent](https://docs.cloud.google.com/resource-manager/reference/rest/v3/folders/search#:~:text=eventually%20consistent) and only returns folders that the user has `resourcemanager.folders.get` permission on.
  final pulumi.Input<String>? apiMethod;

  /// The folder's display name.
  final pulumi.Input<String> displayName;

  /// The resource name of the parent Folder or Organization.
  final pulumi.Input<String> parent;

  GetActiveFolderArgs({
    this.apiMethod,
    required this.displayName,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiMethodValue = apiMethod;
    if (apiMethodValue != null) {
      map['apiMethod'] = apiMethodValue;
    }
    map['displayName'] = displayName;
    map['parent'] = parent;
    return map;
  }

  factory GetActiveFolderArgs.fromMap(Map<String, dynamic> map) {
    return GetActiveFolderArgs(
      apiMethod: pulumi.Input.asOptionalInput<String>(map['apiMethod']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      parent: pulumi.Input.asInput<String>(map['parent']),
    );
  }
}
