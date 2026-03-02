// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_response.dart';
import 'http_route_target_response.dart';

/// Http Route rule.
class HttpRouteRuleResponse {
  /// Description of rule. Optional.
  final pulumi.Input<String>? description;
  /// Routing configuration that will allow matches on specific paths/headers.
  final pulumi.Input<List<HttpRouteResponse>>? routes;
  /// Targets- container apps, revisions, labels
  final pulumi.Input<List<HttpRouteTargetResponse>>? targets;

  /// Creates a new [HttpRouteRuleResponse].
  /// [description] Description of rule. Optional.
  /// [routes] Routing configuration that will allow matches on specific paths/headers.
  /// [targets] Targets- container apps, revisions, labels
  HttpRouteRuleResponse({
    this.description,
    this.routes,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<HttpRouteResponse>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<HttpRouteResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targets': ?pulumi.Input.mapOptionalInputValue<List<HttpRouteTargetResponse>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<HttpRouteTargetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HttpRouteRuleResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<HttpRouteResponse>(map['routes'], (value) => HttpRouteResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targets: map['targets'] == null ? null : (pulumi.Input.decodeList<HttpRouteTargetResponse>(map['targets'], (value) => HttpRouteTargetResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

