// ignore_for_file: unused_element, unnecessary_cast

/// Database flags for Cloud SQL instances.
class DatabaseFlagsResponseSqladminV1beta4 {
  /// The name of the flag. These flags are passed at instance startup, so include both server options and system variables. Flags are specified with underscores, not hyphens. For more information, see [Configuring Database Flags](https://cloud.google.com/sql/docs/mysql/flags) in the Cloud SQL documentation.
  final String name;

  /// The value of the flag. Boolean flags are set to `on` for true and `off` for false. This field must be omitted if the flag doesn't take a value.
  final String value;

  DatabaseFlagsResponseSqladminV1beta4({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory DatabaseFlagsResponseSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return DatabaseFlagsResponseSqladminV1beta4(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
