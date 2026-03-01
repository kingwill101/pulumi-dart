// ignore_for_file: unused_element, unnecessary_cast

class ExportTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? create;

  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? update;

  /// Creates a new [ExportTimeouts].
  /// [create] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  /// [update] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  ExportTimeouts({this.create, this.update});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'create': ?create, 'update': ?update};
  }

  factory ExportTimeouts.fromMap(Map<String, dynamic> map) {
    return ExportTimeouts(
      create: map['create'] == null ? null : map['create'] as String,
      update: map['update'] == null ? null : map['update'] as String,
    );
  }
}
