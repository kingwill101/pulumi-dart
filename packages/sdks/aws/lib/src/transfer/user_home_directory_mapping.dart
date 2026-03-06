// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserHomeDirectoryMapping {
  /// Represents an entry and a target.
  final pulumi.Input<String> entry;
  /// Represents the map target.
  ///
  /// The `Restricted` option is achieved using the following mapping:
  ///
  /// ```
  /// home_directory_mappings {
  /// entry  = "/"
  /// target = "/${aws_s3_bucket.foo.id}/$${Transfer:UserName}"
  /// }
  /// ```
  final pulumi.Input<String> target;

  /// Creates a new [UserHomeDirectoryMapping].
  /// [entry] Represents an entry and a target.
  /// [target] Represents the map target.
  const UserHomeDirectoryMapping({
    required this.entry,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entry': entry,
      'target': target,
    };
  }

  factory UserHomeDirectoryMapping.fromMap(Map<String, dynamic> map) {
    return UserHomeDirectoryMapping(
      entry: pulumi.Input.fromValue(map['entry'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}

