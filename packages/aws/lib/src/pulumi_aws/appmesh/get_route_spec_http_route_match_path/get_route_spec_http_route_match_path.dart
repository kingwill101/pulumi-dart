// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecHttpRouteMatchPath {
  final String exact;
  final String regex;

  GetRouteSpecHttpRouteMatchPath({
    required this.exact,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exact'] = exact;
    map['regex'] = regex;
    return map;
  }

  factory GetRouteSpecHttpRouteMatchPath.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteMatchPath(
      exact: map['exact'] as String,
      regex: map['regex'] as String,
    );
  }
}
