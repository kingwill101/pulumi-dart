// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getManagedFolder.
class GetManagedFolderArgs {
  final Input<String> bucket;
  final Input<String>? ifMetagenerationMatch;
  final Input<String>? ifMetagenerationNotMatch;
  final Input<String> managedFolder;

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
      bucket: Input.asInput<String>(map['bucket']),
      ifMetagenerationMatch:
          Input.asOptionalInput<String>(map['ifMetagenerationMatch']),
      ifMetagenerationNotMatch:
          Input.asOptionalInput<String>(map['ifMetagenerationNotMatch']),
      managedFolder: Input.asInput<String>(map['managedFolder']),
    );
  }
}
