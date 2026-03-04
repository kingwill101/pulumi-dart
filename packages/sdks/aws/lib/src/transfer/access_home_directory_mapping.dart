// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessHomeDirectoryMapping {
  /// Represents an entry and a target.
  final pulumi.Input<String> entry;

  /// Represents the map target.
  final pulumi.Input<String> target;

  /// Creates a new [AccessHomeDirectoryMapping].
  /// [entry] Represents an entry and a target.
  /// [target] Represents the map target.
  AccessHomeDirectoryMapping({required this.entry, required this.target});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'entry': entry, 'target': target};
  }

  factory AccessHomeDirectoryMapping.fromMap(Map<String, dynamic> map) {
    return AccessHomeDirectoryMapping(
      entry: pulumi.Input.fromValue(map['entry'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
