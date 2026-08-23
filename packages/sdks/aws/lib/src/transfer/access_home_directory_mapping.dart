// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessHomeDirectoryMapping {
  /// Logical directory entry that appears to your user.
  final pulumi.Input<String> entry;
  /// Map target that maps the entry to an actual S3 path.
  final pulumi.Input<String> target;

  /// Creates a new [AccessHomeDirectoryMapping].
  /// [entry] Logical directory entry that appears to your user.
  /// [target] Map target that maps the entry to an actual S3 path.
  const AccessHomeDirectoryMapping({
    required this.entry,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entry': entry,
      'target': target,
    };
  }

  factory AccessHomeDirectoryMapping.fromMap(Map<String, dynamic> map) {
    return AccessHomeDirectoryMapping(
      entry: pulumi.Input.fromValue(map['entry'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
