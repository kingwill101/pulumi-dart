// ignore_for_file: unused_element, unnecessary_cast


class DomainRetentionPolicy {
  /// The retention policy for data stored on an Amazon Elastic File System (EFS) volume. Valid values are `Retain` or `Delete`.  Default value is `Retain`.
  final String? homeEfsFileSystem;

  /// Creates a new [DomainRetentionPolicy].
  /// [homeEfsFileSystem] The retention policy for data stored on an Amazon Elastic File System (EFS) volume. Valid values are `Retain` or `Delete`.  Default value is `Retain`.
  DomainRetentionPolicy({
    this.homeEfsFileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'homeEfsFileSystem': ?homeEfsFileSystem,
    };
  }

  factory DomainRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return DomainRetentionPolicy(
      homeEfsFileSystem: map['homeEfsFileSystem'] == null ? null : map['homeEfsFileSystem'] as String,
    );
  }
}

