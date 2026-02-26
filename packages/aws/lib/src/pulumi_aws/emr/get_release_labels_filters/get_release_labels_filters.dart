// ignore_for_file: unused_element, unnecessary_cast

class GetReleaseLabelsFilters {
  /// Optional release label application filter. For example, `Spark@2.1.0` or `Spark`.
  final String? application;

  /// Optional release label version prefix filter. For example, `emr-5`.
  final String? prefix;

  GetReleaseLabelsFilters({
    this.application,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationValue = application;
    if (applicationValue != null) {
      map['application'] = applicationValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    return map;
  }

  factory GetReleaseLabelsFilters.fromMap(Map<String, dynamic> map) {
    return GetReleaseLabelsFilters(
      application:
          map['application'] == null ? null : map['application'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}
