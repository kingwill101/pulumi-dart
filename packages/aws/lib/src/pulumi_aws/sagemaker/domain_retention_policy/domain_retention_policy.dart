// ignore_for_file: unused_element, unnecessary_cast

class DomainRetentionPolicy {
  /// The retention policy for data stored on an Amazon Elastic File System (EFS) volume. Valid values are `Retain` or `Delete`.  Default value is `Retain`.
  final String? homeEfsFileSystem;

  DomainRetentionPolicy({
    this.homeEfsFileSystem,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final homeEfsFileSystemValue = homeEfsFileSystem;
    if (homeEfsFileSystemValue != null) {
      map['homeEfsFileSystem'] = homeEfsFileSystemValue;
    }
    return map;
  }

  factory DomainRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return DomainRetentionPolicy(
      homeEfsFileSystem: map['homeEfsFileSystem'] == null
          ? null
          : map['homeEfsFileSystem'] as String,
    );
  }
}
