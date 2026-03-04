// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain.dart';
import 'http_route_rule.dart';

/// Http Route Config properties
class HttpRouteConfigProperties {
  /// Custom domain bindings for http Routes' hostnames.
  final pulumi.Input<List<CustomDomain>>? customDomains;

  /// Routing Rules for http route resource.
  final pulumi.Input<List<HttpRouteRule>>? rules;

  /// Creates a new [HttpRouteConfigProperties].
  /// [customDomains] Custom domain bindings for http Routes' hostnames.
  /// [rules] Routing Rules for http route resource.
  HttpRouteConfigProperties({this.customDomains, this.rules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomains':
          ?pulumi.Input.mapOptionalInputValue<
            List<CustomDomain>,
            List<Map<String, dynamic>>
          >(
            customDomains,
            (value) =>
                pulumi.Input.encodeList<CustomDomain, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<HttpRouteRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<HttpRouteRule, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory HttpRouteConfigProperties.fromMap(Map<String, dynamic> map) {
    return HttpRouteConfigProperties(
      customDomains: (() {
        final guardedValue = map['customDomains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CustomDomain>(
            guardedValue,
            (value) =>
                CustomDomain.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<HttpRouteRule>(
            guardedValue,
            (value) =>
                HttpRouteRule.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
