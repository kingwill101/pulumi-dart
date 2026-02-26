// ignore_for_file: unused_element, unnecessary_cast

class RouteAsPathResponse2 {
  /// The AS numbers of the AS Path.
  final List<int> asLists;

  /// The type of the AS Path, which can be one of the following values: - 'AS_SET': unordered set of autonomous systems that the route in has traversed - 'AS_SEQUENCE': ordered set of autonomous systems that the route has traversed - 'AS_CONFED_SEQUENCE': ordered set of Member Autonomous Systems in the local confederation that the route has traversed - 'AS_CONFED_SET': unordered set of Member Autonomous Systems in the local confederation that the route has traversed
  final String pathSegmentType;

  RouteAsPathResponse2({
    required this.asLists,
    required this.pathSegmentType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['asLists'] = asLists;
    map['pathSegmentType'] = pathSegmentType;
    return map;
  }

  factory RouteAsPathResponse2.fromMap(Map<String, dynamic> map) {
    return RouteAsPathResponse2(
      asLists: (map['asLists'] as List).cast<int>(),
      pathSegmentType: map['pathSegmentType'] as String,
    );
  }
}
