// ignore_for_file: unused_element, unnecessary_cast

class FileSystemProtection {
  /// Indicates whether replication overwrite protection is enabled. Valid values: `ENABLED` or `DISABLED`.
  final String? replicationOverwrite;

  FileSystemProtection({
    this.replicationOverwrite,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final replicationOverwriteValue = replicationOverwrite;
    if (replicationOverwriteValue != null) {
      map['replicationOverwrite'] = replicationOverwriteValue;
    }
    return map;
  }

  factory FileSystemProtection.fromMap(Map<String, dynamic> map) {
    return FileSystemProtection(
      replicationOverwrite: map['replicationOverwrite'] == null
          ? null
          : map['replicationOverwrite'] as String,
    );
  }
}
