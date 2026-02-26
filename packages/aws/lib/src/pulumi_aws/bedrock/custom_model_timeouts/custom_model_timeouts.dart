// ignore_for_file: unused_element, unnecessary_cast

class CustomModelTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? create;

  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.
  final String? delete;

  CustomModelTimeouts({
    this.create,
    this.delete,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createValue = create;
    if (createValue != null) {
      map['create'] = createValue;
    }
    final deleteValue = delete;
    if (deleteValue != null) {
      map['delete'] = deleteValue;
    }
    return map;
  }

  factory CustomModelTimeouts.fromMap(Map<String, dynamic> map) {
    return CustomModelTimeouts(
      create: map['create'] == null ? null : map['create'] as String,
      delete: map['delete'] == null ? null : map['delete'] as String,
    );
  }
}
