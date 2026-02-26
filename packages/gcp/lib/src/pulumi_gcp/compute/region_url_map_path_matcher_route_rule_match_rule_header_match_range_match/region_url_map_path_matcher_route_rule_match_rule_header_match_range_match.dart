// ignore_for_file: unused_element, unnecessary_cast

class RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch {
  /// The end of the range (exclusive).
  final int rangeEnd;

  /// The start of the range (inclusive).
  final int rangeStart;

  RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch({
    required this.rangeEnd,
    required this.rangeStart,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rangeEnd'] = rangeEnd;
    map['rangeStart'] = rangeStart;
    return map;
  }

  factory RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch.fromMap(
      Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch(
      rangeEnd: map['rangeEnd'] as int,
      rangeStart: map['rangeStart'] as int,
    );
  }
}
