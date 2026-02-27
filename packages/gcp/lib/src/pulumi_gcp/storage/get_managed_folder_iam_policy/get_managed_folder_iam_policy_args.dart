// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getManagedFolderIamPolicy.
class GetManagedFolderIamPolicyArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String> managedFolder;

  GetManagedFolderIamPolicyArgs({
    required this.bucket,
    required this.managedFolder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['managedFolder'] = managedFolder;
    return map;
  }

  factory GetManagedFolderIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedFolderIamPolicyArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      managedFolder: pulumi.Input.asInput<String>(map['managedFolder']),
    );
  }
}
