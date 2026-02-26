// ignore_for_file: unused_element, unnecessary_cast

class HttpRouteRuleMatchHeaderRangeMatch {
  /// End of the range (exclusive).
  final int end;

  /// Start of the range (inclusive).
  final int start;

  HttpRouteRuleMatchHeaderRangeMatch({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['end'] = end;
    map['start'] = start;
    return map;
  }

  factory HttpRouteRuleMatchHeaderRangeMatch.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleMatchHeaderRangeMatch(
      end: map['end'] as int,
      start: map['start'] as int,
    );
  }
}
