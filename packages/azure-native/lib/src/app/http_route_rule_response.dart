// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_response.dart';
import 'http_route_target_response.dart';

/// Http Route rule.
class HttpRouteRuleResponse {
  /// Description of rule. Optional.
  final String? description;
  /// Routing configuration that will allow matches on specific paths/headers.
  final List<HttpRouteResponse>? routes;
  /// Targets- container apps, revisions, labels
  final List<HttpRouteTargetResponse>? targets;

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
      'routes': ?routes == null ? null : pulumi.Input.encodeList<HttpRouteResponse, Map<String, dynamic>>(routes!, (value) => value.toMap()),
      'targets': ?targets == null ? null : pulumi.Input.encodeList<HttpRouteTargetResponse, Map<String, dynamic>>(targets!, (value) => value.toMap()),
    };
  }

  factory HttpRouteRuleResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleResponse(
      description: map['description'] == null ? null : map['description'] as String,
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<HttpRouteResponse>(map['routes'], (value) => HttpRouteResponse.fromMap((value as Map).cast<String, dynamic>())),
      targets: map['targets'] == null ? null : pulumi.Input.decodeList<HttpRouteTargetResponse>(map['targets'], (value) => HttpRouteTargetResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

