// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route.dart';
import 'http_route_target.dart';

/// Http Route rule.
class HttpRouteRule {
  /// Description of rule. Optional.
  final String? description;
  /// Routing configuration that will allow matches on specific paths/headers.
  final List<HttpRoute>? routes;
  /// Targets- container apps, revisions, labels
  final List<HttpRouteTarget>? targets;

  /// Creates a new [HttpRouteRule].
  /// [description] Description of rule. Optional.
  /// [routes] Routing configuration that will allow matches on specific paths/headers.
  /// [targets] Targets- container apps, revisions, labels
  HttpRouteRule({
    this.description,
    this.routes,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'routes': ?routes == null ? null : pulumi.Input.encodeList<HttpRoute, Map<String, dynamic>>(routes!, (value) => value.toMap()),
      'targets': ?targets == null ? null : pulumi.Input.encodeList<HttpRouteTarget, Map<String, dynamic>>(targets!, (value) => value.toMap()),
    };
  }

  factory HttpRouteRule.fromMap(Map<String, dynamic> map) {
    return HttpRouteRule(
      description: map['description'] == null ? null : map['description'] as String,
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<HttpRoute>(map['routes'], (value) => HttpRoute.fromMap((value as Map).cast<String, dynamic>())),
      targets: map['targets'] == null ? null : pulumi.Input.decodeList<HttpRouteTarget>(map['targets'], (value) => HttpRouteTarget.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

