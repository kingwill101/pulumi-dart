// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainRetentionPolicy {
  /// The retention policy for data stored on an Amazon Elastic File System (EFS) volume. Valid values are `Retain` or `Delete`.  Default value is `Retain`.
  final pulumi.Input<String>? homeEfsFileSystem;

  /// Creates a new [DomainRetentionPolicy].
  /// [homeEfsFileSystem] The retention policy for data stored on an Amazon Elastic File System (EFS) volume. Valid values are `Retain` or `Delete`.  Default value is `Retain`.
  const DomainRetentionPolicy({
    this.homeEfsFileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'homeEfsFileSystem': ?homeEfsFileSystem,
    };
  }

  factory DomainRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return DomainRetentionPolicy(
      homeEfsFileSystem: (() { final guardedValue = map['homeEfsFileSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

