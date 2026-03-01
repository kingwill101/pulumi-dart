// ignore_for_file: unused_element, unnecessary_cast


class RevisionAssetsTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? create;

  /// Creates a new [RevisionAssetsTimeouts].
  /// [create] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  RevisionAssetsTimeouts({
    this.create,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
    };
  }

  factory RevisionAssetsTimeouts.fromMap(Map<String, dynamic> map) {
    return RevisionAssetsTimeouts(
      create: map['create'] == null ? null : map['create'] as String,
    );
  }
}

