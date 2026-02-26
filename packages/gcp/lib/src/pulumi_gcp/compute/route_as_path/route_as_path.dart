// ignore_for_file: unused_element, unnecessary_cast

class RouteAsPath {
  /// (Output)
  /// The AS numbers of the AS Path.
  final List<int>? asLists;

  /// (Output)
  /// The type of the AS Path, which can be one of the following values:
  /// - 'AS_SET': unordered set of autonomous systems that the route in has traversed
  /// - 'AS_SEQUENCE': ordered set of autonomous systems that the route has traversed
  /// - 'AS_CONFED_SEQUENCE': ordered set of Member Autonomous Systems in the local confederation that the route has traversed
  /// - 'AS_CONFED_SET': unordered set of Member Autonomous Systems in the local confederation that the route has traversed
  final String? pathSegmentType;

  RouteAsPath({
    this.asLists,
    this.pathSegmentType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final asListsValue = asLists;
    if (asListsValue != null) {
      map['asLists'] = asListsValue;
    }
    final pathSegmentTypeValue = pathSegmentType;
    if (pathSegmentTypeValue != null) {
      map['pathSegmentType'] = pathSegmentTypeValue;
    }
    return map;
  }

  factory RouteAsPath.fromMap(Map<String, dynamic> map) {
    return RouteAsPath(
      asLists:
          map['asLists'] == null ? null : (map['asLists'] as List).cast<int>(),
      pathSegmentType: map['pathSegmentType'] == null
          ? null
          : map['pathSegmentType'] as String,
    );
  }
}
