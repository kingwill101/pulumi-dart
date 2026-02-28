// ignore_for_file: unused_element, unnecessary_cast

class URLMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch {
  /// The end of the range (exclusive).
  final int rangeEnd;

  /// The start of the range (inclusive).
  final int rangeStart;

  /// Creates a new [URLMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch].
  /// [rangeEnd] The end of the range (exclusive).
  /// [rangeStart] The start of the range (inclusive).
  URLMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch({
    required this.rangeEnd,
    required this.rangeStart,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rangeEnd'] = rangeEnd;
    map['rangeStart'] = rangeStart;
    return map;
  }

  factory URLMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch.fromMap(
      Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch(
      rangeEnd: map['rangeEnd'] as int,
      rangeStart: map['rangeStart'] as int,
    );
  }
}
