// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route.dart';
import 'http_route_target.dart';

/// Http Route rule.
class HttpRouteRule {
  /// Description of rule. Optional.
  final pulumi.Input<String>? description;
  /// Routing configuration that will allow matches on specific paths/headers.
  final pulumi.Input<List<HttpRoute>>? routes;
  /// Targets- container apps, revisions, labels
  final pulumi.Input<List<HttpRouteTarget>>? targets;

  /// Creates a new [HttpRouteRule].
  /// [description] Description of rule. Optional.
  /// [routes] Routing configuration that will allow matches on specific paths/headers.
  /// [targets] Targets- container apps, revisions, labels
  const HttpRouteRule({
    this.description,
    this.routes,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<HttpRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<HttpRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targets': ?pulumi.Input.mapOptionalInputValue<List<HttpRouteTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<HttpRouteTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HttpRouteRule.fromMap(Map<String, dynamic> map) {
    return HttpRouteRule(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HttpRoute>(guardedValue, (value) => HttpRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HttpRouteTarget>(guardedValue, (value) => HttpRouteTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
