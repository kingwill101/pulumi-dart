// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getManagedFolder.
class GetManagedFolderArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String>? ifMetagenerationMatch;
  final pulumi.Input<String>? ifMetagenerationNotMatch;
  final pulumi.Input<String> managedFolder;

  GetManagedFolderArgs({
    required this.bucket,
    this.ifMetagenerationMatch,
    this.ifMetagenerationNotMatch,
    required this.managedFolder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final ifMetagenerationMatchValue = ifMetagenerationMatch;
    if (ifMetagenerationMatchValue != null) {
      map['ifMetagenerationMatch'] = ifMetagenerationMatchValue;
    }
    final ifMetagenerationNotMatchValue = ifMetagenerationNotMatch;
    if (ifMetagenerationNotMatchValue != null) {
      map['ifMetagenerationNotMatch'] = ifMetagenerationNotMatchValue;
    }
    map['managedFolder'] = managedFolder;
    return map;
  }

  factory GetManagedFolderArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedFolderArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      ifMetagenerationMatch:
          pulumi.Input.asOptionalInput<String>(map['ifMetagenerationMatch']),
      ifMetagenerationNotMatch:
          pulumi.Input.asOptionalInput<String>(map['ifMetagenerationNotMatch']),
      managedFolder: pulumi.Input.asInput<String>(map['managedFolder']),
    );
  }
}
