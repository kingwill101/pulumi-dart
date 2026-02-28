// ignore_for_file: unused_element, unnecessary_cast

class LogicallyAirGappedVaultTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? create;

  /// Creates a new [LogicallyAirGappedVaultTimeouts].
  /// [create] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  LogicallyAirGappedVaultTimeouts({
    this.create,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createValue = create;
    if (createValue != null) {
      map['create'] = createValue;
    }
    return map;
  }

  factory LogicallyAirGappedVaultTimeouts.fromMap(Map<String, dynamic> map) {
    return LogicallyAirGappedVaultTimeouts(
      create: map['create'] == null ? null : map['create'] as String,
    );
  }
}
