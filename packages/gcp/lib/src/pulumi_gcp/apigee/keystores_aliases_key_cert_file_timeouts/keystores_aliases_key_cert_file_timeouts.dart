// ignore_for_file: unused_element, unnecessary_cast

class KeystoresAliasesKeyCertFileTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? create;

  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.
  final String? delete;

  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours). Read operations occur during any refresh or planning operation when refresh is enabled.
  final String? read;

  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? update;

  KeystoresAliasesKeyCertFileTimeouts({
    this.create,
    this.delete,
    this.read,
    this.update,
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
    final readValue = read;
    if (readValue != null) {
      map['read'] = readValue;
    }
    final updateValue = update;
    if (updateValue != null) {
      map['update'] = updateValue;
    }
    return map;
  }

  factory KeystoresAliasesKeyCertFileTimeouts.fromMap(
      Map<String, dynamic> map) {
    return KeystoresAliasesKeyCertFileTimeouts(
      create: map['create'] == null ? null : map['create'] as String,
      delete: map['delete'] == null ? null : map['delete'] as String,
      read: map['read'] == null ? null : map['read'] as String,
      update: map['update'] == null ? null : map['update'] as String,
    );
  }
}
