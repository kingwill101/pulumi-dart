// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getManagedFolderIamPolicy.
class GetManagedFolderIamPolicyArgs {
  final Input<String> bucket;
  final Input<String> managedFolder;

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
      bucket: Input.asInput<String>(map['bucket']),
      managedFolder: Input.asInput<String>(map['managedFolder']),
    );
  }
}
