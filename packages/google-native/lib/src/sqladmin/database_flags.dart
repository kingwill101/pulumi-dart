// ignore_for_file: unused_element, unnecessary_cast

/// Database flags for Cloud SQL instances.
class DatabaseFlags {
  /// The name of the flag. These flags are passed at instance startup, so include both server options and system variables. Flags are specified with underscores, not hyphens. For more information, see [Configuring Database Flags](https://cloud.google.com/sql/docs/mysql/flags) in the Cloud SQL documentation.
  final String? name;

  /// The value of the flag. Boolean flags are set to `on` for true and `off` for false. This field must be omitted if the flag doesn't take a value.
  final String? value;

  /// Creates a new [DatabaseFlags].
  /// [name] The name of the flag. These flags are passed at instance startup, so include both server options and system variables. Flags are specified with underscores, not hyphens. For more information, see [Configuring Database Flags](https://cloud.google.com/sql/docs/mysql/flags) in the Cloud SQL documentation.
  /// [value] The value of the flag. Boolean flags are set to `on` for true and `off` for false. This field must be omitted if the flag doesn't take a value.
  DatabaseFlags({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory DatabaseFlags.fromMap(Map<String, dynamic> map) {
    return DatabaseFlags(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
