// ignore_for_file: unused_element, unnecessary_cast

class RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch {
  /// The end of the range (exclusive).
  final int rangeEnd;

  /// The start of the range (inclusive).
  final int rangeStart;

  /// Creates a new [RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch].
  /// [rangeEnd] The end of the range (exclusive).
  /// [rangeStart] The start of the range (inclusive).
  RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch({
    required this.rangeEnd,
    required this.rangeStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'rangeEnd': rangeEnd, 'rangeStart': rangeStart};
  }

  factory RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch(
      rangeEnd: map['rangeEnd'] as int,
      rangeStart: map['rangeStart'] as int,
    );
  }
}
