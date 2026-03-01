// ignore_for_file: unused_element, unnecessary_cast


/// Spring Cloud Gateway route definition
class ScgRoute {
  /// Filters of the route
  final List<String>? filters;
  /// Id of the route
  final String id;
  /// Order of the route
  final double? order;
  /// Predicates of the route
  final List<String>? predicates;
  /// Uri of the route
  final String uri;

  /// Creates a new [ScgRoute].
  /// [filters] Filters of the route
  /// [id] Id of the route
  /// [order] Order of the route
  /// [predicates] Predicates of the route
  /// [uri] Uri of the route
  ScgRoute({
    this.filters,
    required this.id,
    this.order,
    this.predicates,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters,
      'id': id,
      'order': ?order,
      'predicates': ?predicates,
      'uri': uri,
    };
  }

  factory ScgRoute.fromMap(Map<String, dynamic> map) {
    return ScgRoute(
      filters: map['filters'] == null ? null : (map['filters'] as List).cast<String>(),
      id: map['id'] as String,
      order: map['order'] == null ? null : map['order'] as double,
      predicates: map['predicates'] == null ? null : (map['predicates'] as List).cast<String>(),
      uri: map['uri'] as String,
    );
  }
}

