// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_response.dart';
import 'http_route_provisioning_errors_response.dart';
import 'http_route_rule_response.dart';

/// Http Route Config properties
class HttpRouteConfigResponseProperties {
  /// Custom domain bindings for http Routes' hostnames.
  final List<CustomDomainResponse>? customDomains;
  /// FQDN of the route resource.
  final String fqdn;
  /// List of errors when trying to reconcile http routes
  final List<HttpRouteProvisioningErrorsResponse> provisioningErrors;
  /// The provisioning state of the Http Route Config in cluster
  final String provisioningState;
  /// Routing Rules for http route resource.
  final List<HttpRouteRuleResponse>? rules;

  /// Creates a new [HttpRouteConfigResponseProperties].
  /// [customDomains] Custom domain bindings for http Routes' hostnames.
  /// [fqdn] FQDN of the route resource.
  /// [provisioningErrors] List of errors when trying to reconcile http routes
  /// [provisioningState] The provisioning state of the Http Route Config in cluster
  /// [rules] Routing Rules for http route resource.
  HttpRouteConfigResponseProperties({
    this.customDomains,
    required this.fqdn,
    required this.provisioningErrors,
    required this.provisioningState,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomains': ?customDomains == null ? null : pulumi.Input.encodeList<CustomDomainResponse, Map<String, dynamic>>(customDomains!, (value) => value.toMap()),
      'fqdn': fqdn,
      'provisioningErrors': pulumi.Input.encodeList<HttpRouteProvisioningErrorsResponse, Map<String, dynamic>>(provisioningErrors, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<HttpRouteRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory HttpRouteConfigResponseProperties.fromMap(Map<String, dynamic> map) {
    return HttpRouteConfigResponseProperties(
      customDomains: map['customDomains'] == null ? null : pulumi.Input.decodeList<CustomDomainResponse>(map['customDomains'], (value) => CustomDomainResponse.fromMap((value as Map).cast<String, dynamic>())),
      fqdn: map['fqdn'] as String,
      provisioningErrors: pulumi.Input.decodeList<HttpRouteProvisioningErrorsResponse>(map['provisioningErrors'], (value) => HttpRouteProvisioningErrorsResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<HttpRouteRuleResponse>(map['rules'], (value) => HttpRouteRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

