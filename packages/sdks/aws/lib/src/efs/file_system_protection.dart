// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileSystemProtection {
  /// Indicates whether replication overwrite protection is enabled. Valid values: `ENABLED` or `DISABLED`.
  final pulumi.Input<String>? replicationOverwrite;

  /// Creates a new [FileSystemProtection].
  /// [replicationOverwrite] Indicates whether replication overwrite protection is enabled. Valid values: `ENABLED` or `DISABLED`.
  FileSystemProtection({
    this.replicationOverwrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicationOverwrite': ?replicationOverwrite,
    };
  }

  factory FileSystemProtection.fromMap(Map<String, dynamic> map) {
    return FileSystemProtection(
      replicationOverwrite: map['replicationOverwrite'] == null ? null : (map['replicationOverwrite'] as String).input(),
    );
  }
}

