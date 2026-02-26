// ignore_for_file: unused_element, unnecessary_cast

class WorkgroupPricePerformanceTarget {
  /// Whether to enable price-performance scaling.
  final bool enabled;

  /// The price-performance scaling level. Valid values are <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> (LOW_COST), <span pulumi-lang-nodejs="`25`" pulumi-lang-dotnet="`25`" pulumi-lang-go="`25`" pulumi-lang-python="`25`" pulumi-lang-yaml="`25`" pulumi-lang-java="`25`">`25`</span> (ECONOMICAL), <span pulumi-lang-nodejs="`50`" pulumi-lang-dotnet="`50`" pulumi-lang-go="`50`" pulumi-lang-python="`50`" pulumi-lang-yaml="`50`" pulumi-lang-java="`50`">`50`</span> (BALANCED), <span pulumi-lang-nodejs="`75`" pulumi-lang-dotnet="`75`" pulumi-lang-go="`75`" pulumi-lang-python="`75`" pulumi-lang-yaml="`75`" pulumi-lang-java="`75`">`75`</span> (RESOURCEFUL), and <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span> (HIGH_PERFORMANCE).
  final int? level;

  WorkgroupPricePerformanceTarget({
    required this.enabled,
    this.level,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final levelValue = level;
    if (levelValue != null) {
      map['level'] = levelValue;
    }
    return map;
  }

  factory WorkgroupPricePerformanceTarget.fromMap(Map<String, dynamic> map) {
    return WorkgroupPricePerformanceTarget(
      enabled: map['enabled'] as bool,
      level: map['level'] == null ? null : map['level'] as int,
    );
  }
}
