/// The status of the file system's replication overwrite protection.  +   ``ENABLED`` – The file system cannot be used as the destination file system in a replication configuration. The file system is writeable. Replication overwrite protection is ``ENABLED`` by default.   +   ``DISABLED`` – The file system can be used as the destination file system in a replication configuration. The file system is read-only and can only be modified by EFS replication.  +   ``REPLICATING`` – The file system is being used as the destination file system in a replication configuration. The file system is read-only and is only modified only by EFS replication.   If the replication configuration is deleted, the file system's replication overwrite protection is re-enabled, the file system becomes writeable.
enum FileSystemProtectionReplicationOverwriteProtection {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const FileSystemProtectionReplicationOverwriteProtection(this.wireValue);
  final String wireValue;

  static FileSystemProtectionReplicationOverwriteProtection fromValue(String value) {
    for (final item in FileSystemProtectionReplicationOverwriteProtection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileSystemProtectionReplicationOverwriteProtection value: $value');
  }
}
