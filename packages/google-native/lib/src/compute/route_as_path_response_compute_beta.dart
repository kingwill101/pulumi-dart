// ignore_for_file: unused_element, unnecessary_cast

class RouteAsPathResponseComputeBeta {
  /// The AS numbers of the AS Path.
  final List<int> asLists;

  /// The type of the AS Path, which can be one of the following values: - 'AS_SET': unordered set of autonomous systems that the route in has traversed - 'AS_SEQUENCE': ordered set of autonomous systems that the route has traversed - 'AS_CONFED_SEQUENCE': ordered set of Member Autonomous Systems in the local confederation that the route has traversed - 'AS_CONFED_SET': unordered set of Member Autonomous Systems in the local confederation that the route has traversed
  final String pathSegmentType;

  /// Creates a new [RouteAsPathResponseComputeBeta].
  /// [asLists] The AS numbers of the AS Path.
  /// [pathSegmentType] The type of the AS Path, which can be one of the following values: - 'AS_SET': unordered set of autonomous systems that the route in has traversed - 'AS_SEQUENCE': ordered set of autonomous systems that the route has traversed - 'AS_CONFED_SEQUENCE': ordered set of Member Autonomous Systems in the local confederation that the route has traversed - 'AS_CONFED_SET': unordered set of Member Autonomous Systems in the local confederation that the route has traversed
  RouteAsPathResponseComputeBeta({
    required this.asLists,
    required this.pathSegmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asLists': asLists,
      'pathSegmentType': pathSegmentType,
    };
  }

  factory RouteAsPathResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return RouteAsPathResponseComputeBeta(
      asLists: (map['asLists'] as List).cast<int>(),
      pathSegmentType: map['pathSegmentType'] as String,
    );
  }
}
