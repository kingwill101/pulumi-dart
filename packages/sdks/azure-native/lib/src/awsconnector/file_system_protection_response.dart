// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of FileSystemProtection
class FileSystemProtectionResponse {
  /// The status of the file system's replication overwrite protection.  +   ``ENABLED`` – The file system cannot be used as the destination file system in a replication configuration. The file system is writeable. Replication overwrite protection is ``ENABLED`` by default.   +   ``DISABLED`` – The file system can be used as the destination file system in a replication configuration. The file system is read-only and can only be modified by EFS replication.  +   ``REPLICATING`` – The file system is being used as the destination file system in a replication configuration. The file system is read-only and is only modified only by EFS replication.   If the replication configuration is deleted, the file system's replication overwrite protection is re-enabled, the file system becomes writeable.
  final pulumi.Input<String>? replicationOverwriteProtection;

  /// Creates a new [FileSystemProtectionResponse].
  /// [replicationOverwriteProtection] The status of the file system's replication overwrite protection.  +   ``ENABLED`` – The file system cannot be used as the destination file system in a replication configuration. The file system is writeable. Replication overwrite protection is ``ENABLED`` by default.   +   ``DISABLED`` – The file system can be used as the destination file system in a replication configuration. The file system is read-only and can only be modified by EFS replication.  +   ``REPLICATING`` – The file system is being used as the destination file system in a replication configuration. The file system is read-only and is only modified only by EFS replication.   If the replication configuration is deleted, the file system's replication overwrite protection is re-enabled, the file system becomes writeable.
  const FileSystemProtectionResponse({
    this.replicationOverwriteProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicationOverwriteProtection': ?replicationOverwriteProtection,
    };
  }

  factory FileSystemProtectionResponse.fromMap(Map<String, dynamic> map) {
    return FileSystemProtectionResponse(
      replicationOverwriteProtection: (() { final guardedValue = map['replicationOverwriteProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
