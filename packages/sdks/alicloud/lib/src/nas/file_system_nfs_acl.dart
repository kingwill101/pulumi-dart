// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileSystemNfsAcl {
  /// Whether the NFS ACL function is enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [FileSystemNfsAcl].
  /// [enabled] Whether the NFS ACL function is enabled.
  FileSystemNfsAcl({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory FileSystemNfsAcl.fromMap(Map<String, dynamic> map) {
    return FileSystemNfsAcl(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

