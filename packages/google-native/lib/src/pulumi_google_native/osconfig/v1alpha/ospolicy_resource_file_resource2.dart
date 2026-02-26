// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file2.dart';
import 'ospolicy_resource_file_resource_state2.dart';

/// A resource that manages the state of a file.
class OSPolicyResourceFileResource2 {
  /// A a file with this content. The size of the content is limited to 32KiB.
  final String? content;

  /// A remote or local source.
  final OSPolicyResourceFile2? file;

  /// The absolute path of the file within the VM.
  final String path;

  /// Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one bit corresponds to the execute permission. Default behavior is 755. Below are some examples of permissions and their associated values: read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4
  final String? permissions;

  /// Desired state of the file.
  final OSPolicyResourceFileResourceState2 state;

  OSPolicyResourceFileResource2({
    this.content,
    this.file,
    required this.path,
    this.permissions,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    final fileValue = file;
    if (fileValue != null) {
      map['file'] = fileValue.toMap();
    }
    map['path'] = path;
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = permissionsValue;
    }
    map['state'] = state.value;
    return map;
  }

  factory OSPolicyResourceFileResource2.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileResource2(
      content: map['content'] == null ? null : map['content'] as String,
      file: map['file'] == null
          ? null
          : OSPolicyResourceFile2.fromMap(
              (map['file'] as Map).cast<String, dynamic>()),
      path: map['path'] as String,
      permissions:
          map['permissions'] == null ? null : map['permissions'] as String,
      state:
          OSPolicyResourceFileResourceState2.fromValue(map['state'] as String),
    );
  }
}
