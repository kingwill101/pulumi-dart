// ignore_for_file: unused_element, unnecessary_cast

class RecordsExclusiveTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? create;

  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? update;

  /// Creates a new [RecordsExclusiveTimeouts].
  /// [create] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  /// [update] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  RecordsExclusiveTimeouts({this.create, this.update});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'create': ?create, 'update': ?update};
  }

  factory RecordsExclusiveTimeouts.fromMap(Map<String, dynamic> map) {
    return RecordsExclusiveTimeouts(
      create: map['create'] == null ? null : map['create'] as String,
      update: map['update'] == null ? null : map['update'] as String,
    );
  }
}
