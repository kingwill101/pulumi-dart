// ignore_for_file: unused_element, unnecessary_cast


class DataCellsFilterTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? create;

  /// Creates a new [DataCellsFilterTimeouts].
  /// [create] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  DataCellsFilterTimeouts({
    this.create,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
    };
  }

  factory DataCellsFilterTimeouts.fromMap(Map<String, dynamic> map) {
    return DataCellsFilterTimeouts(
      create: map['create'] == null ? null : map['create'] as String,
    );
  }
}

