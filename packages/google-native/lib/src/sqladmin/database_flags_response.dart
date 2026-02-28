// ignore_for_file: unused_element, unnecessary_cast

/// Database flags for Cloud SQL instances.
class DatabaseFlagsResponse {
  /// The name of the flag. These flags are passed at instance startup, so include both server options and system variables. Flags are specified with underscores, not hyphens. For more information, see [Configuring Database Flags](https://cloud.google.com/sql/docs/mysql/flags) in the Cloud SQL documentation.
  final String name;

  /// The value of the flag. Boolean flags are set to `on` for true and `off` for false. This field must be omitted if the flag doesn't take a value.
  final String value;

  /// Creates a new [DatabaseFlagsResponse].
  /// [name] The name of the flag. These flags are passed at instance startup, so include both server options and system variables. Flags are specified with underscores, not hyphens. For more information, see [Configuring Database Flags](https://cloud.google.com/sql/docs/mysql/flags) in the Cloud SQL documentation.
  /// [value] The value of the flag. Boolean flags are set to `on` for true and `off` for false. This field must be omitted if the flag doesn't take a value.
  DatabaseFlagsResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory DatabaseFlagsResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseFlagsResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
