// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain.dart';
import 'http_route_rule.dart';

/// Http Route Config properties
class HttpRouteConfigProperties {
  /// Custom domain bindings for http Routes' hostnames.
  final List<CustomDomain>? customDomains;
  /// Routing Rules for http route resource.
  final List<HttpRouteRule>? rules;

  /// Creates a new [HttpRouteConfigProperties].
  /// [customDomains] Custom domain bindings for http Routes' hostnames.
  /// [rules] Routing Rules for http route resource.
  HttpRouteConfigProperties({
    this.customDomains,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomains': ?customDomains == null ? null : pulumi.Input.encodeList<CustomDomain, Map<String, dynamic>>(customDomains!, (value) => value.toMap()),
      'rules': ?rules == null ? null : pulumi.Input.encodeList<HttpRouteRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory HttpRouteConfigProperties.fromMap(Map<String, dynamic> map) {
    return HttpRouteConfigProperties(
      customDomains: map['customDomains'] == null ? null : pulumi.Input.decodeList<CustomDomain>(map['customDomains'], (value) => CustomDomain.fromMap((value as Map).cast<String, dynamic>())),
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<HttpRouteRule>(map['rules'], (value) => HttpRouteRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

