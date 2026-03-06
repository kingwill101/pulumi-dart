// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Spring Cloud Gateway route definition
class ScgRoute {
  /// Filters of the route
  final pulumi.Input<List<String>>? filters;
  /// Id of the route
  final pulumi.Input<String> id;
  /// Order of the route
  final pulumi.Input<double>? order;
  /// Predicates of the route
  final pulumi.Input<List<String>>? predicates;
  /// Uri of the route
  final pulumi.Input<String> uri;

  /// Creates a new [ScgRoute].
  /// [filters] Filters of the route
  /// [id] Id of the route
  /// [order] Order of the route
  /// [predicates] Predicates of the route
  /// [uri] Uri of the route
  const ScgRoute({
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
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      predicates: (() { final guardedValue = map['predicates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

