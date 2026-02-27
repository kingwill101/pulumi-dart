// ignore_for_file: unused_element, unnecessary_cast

/// Database flags for Cloud SQL instances.
class DatabaseFlagsSqladminV1beta4 {
  /// The name of the flag. These flags are passed at instance startup, so include both server options and system variables. Flags are specified with underscores, not hyphens. For more information, see [Configuring Database Flags](https://cloud.google.com/sql/docs/mysql/flags) in the Cloud SQL documentation.
  final String? name;

  /// The value of the flag. Boolean flags are set to `on` for true and `off` for false. This field must be omitted if the flag doesn't take a value.
  final String? value;

  DatabaseFlagsSqladminV1beta4({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory DatabaseFlagsSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return DatabaseFlagsSqladminV1beta4(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
