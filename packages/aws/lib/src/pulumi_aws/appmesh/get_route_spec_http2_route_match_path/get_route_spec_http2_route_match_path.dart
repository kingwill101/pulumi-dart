// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecHttp2RouteMatchPath {
  final String exact;
  final String regex;

  GetRouteSpecHttp2RouteMatchPath({
    required this.exact,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exact'] = exact;
    map['regex'] = regex;
    return map;
  }

  factory GetRouteSpecHttp2RouteMatchPath.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteMatchPath(
      exact: map['exact'] as String,
      regex: map['regex'] as String,
    );
  }
}
