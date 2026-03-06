// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_response.dart';
import 'http_route_provisioning_errors_response.dart';
import 'http_route_rule_response.dart';

/// Http Route Config properties
class HttpRouteConfigResponseProperties {
  /// Custom domain bindings for http Routes' hostnames.
  final pulumi.Input<List<CustomDomainResponse>>? customDomains;
  /// FQDN of the route resource.
  final pulumi.Input<String> fqdn;
  /// List of errors when trying to reconcile http routes
  final pulumi.Input<List<HttpRouteProvisioningErrorsResponse>> provisioningErrors;
  /// The provisioning state of the Http Route Config in cluster
  final pulumi.Input<String> provisioningState;
  /// Routing Rules for http route resource.
  final pulumi.Input<List<HttpRouteRuleResponse>>? rules;

  /// Creates a new [HttpRouteConfigResponseProperties].
  /// [customDomains] Custom domain bindings for http Routes' hostnames.
  /// [fqdn] FQDN of the route resource.
  /// [provisioningErrors] List of errors when trying to reconcile http routes
  /// [provisioningState] The provisioning state of the Http Route Config in cluster
  /// [rules] Routing Rules for http route resource.
  const HttpRouteConfigResponseProperties({
    this.customDomains,
    required this.fqdn,
    required this.provisioningErrors,
    required this.provisioningState,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomains': ?pulumi.Input.mapOptionalInputValue<List<CustomDomainResponse>, List<Map<String, dynamic>>>(customDomains, (value) => pulumi.Input.encodeList<CustomDomainResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fqdn': fqdn,
      'provisioningErrors': pulumi.Input.mapInputValue<List<HttpRouteProvisioningErrorsResponse>, List<Map<String, dynamic>>>(provisioningErrors, (value) => pulumi.Input.encodeList<HttpRouteProvisioningErrorsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<HttpRouteRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<HttpRouteRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HttpRouteConfigResponseProperties.fromMap(Map<String, dynamic> map) {
    return HttpRouteConfigResponseProperties(
      customDomains: (() { final guardedValue = map['customDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomDomainResponse>(guardedValue, (value) => CustomDomainResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      provisioningErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<HttpRouteProvisioningErrorsResponse>(map['provisioningErrors']!, (value) => HttpRouteProvisioningErrorsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HttpRouteRuleResponse>(guardedValue, (value) => HttpRouteRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

