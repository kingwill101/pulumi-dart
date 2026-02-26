// ignore_for_file: unused_element, unnecessary_cast

class UserHomeDirectoryMapping {
  /// Represents an entry and a target.
  final String entry;

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
  final String target;

  UserHomeDirectoryMapping({
    required this.entry,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entry'] = entry;
    map['target'] = target;
    return map;
  }

  factory UserHomeDirectoryMapping.fromMap(Map<String, dynamic> map) {
    return UserHomeDirectoryMapping(
      entry: map['entry'] as String,
      target: map['target'] as String,
    );
  }
}
