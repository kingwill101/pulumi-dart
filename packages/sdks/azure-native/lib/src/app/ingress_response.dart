// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_policy_response.dart';
import 'custom_domain_response.dart';
import 'ingress_port_mapping_response.dart';
import 'ingress_response_sticky_sessions.dart';
import 'ip_security_restriction_rule_response.dart';
import 'traffic_weight_response.dart';

/// Container App Ingress configuration.
class IngressResponse {
  /// Settings to expose additional ports on container app
  final pulumi.Input<List<IngressPortMappingResponse>>? additionalPortMappings;
  /// Bool indicating if HTTP connections to is allowed. If set to false HTTP connections are automatically redirected to HTTPS connections
  final pulumi.Input<bool>? allowInsecure;
  /// Client certificate mode for mTLS authentication. Ignore indicates server drops client certificate on forwarding. Accept indicates server forwards client certificate but does not require a client certificate. Require indicates server requires a client certificate.
  final pulumi.Input<String>? clientCertificateMode;
  /// CORS policy for container app
  final pulumi.Input<CorsPolicyResponse>? corsPolicy;
  /// custom domain bindings for Container Apps' hostnames.
  final pulumi.Input<List<CustomDomainResponse>>? customDomains;
  /// Exposed Port in containers for TCP traffic from ingress
  final pulumi.Input<int>? exposedPort;
  /// Bool indicating if app exposes an external http endpoint
  final pulumi.Input<bool>? external;
  /// Hostname.
  final pulumi.Input<String> fqdn;
  /// Rules to restrict incoming IP address.
  final pulumi.Input<List<IpSecurityRestrictionRuleResponse>>? ipSecurityRestrictions;
  /// Sticky Sessions for Single Revision Mode
  final pulumi.Input<IngressResponseStickySessions>? stickySessions;
  /// Target Port in containers for traffic from ingress
  final pulumi.Input<int>? targetPort;
  /// Whether an http app listens on http or https
  final pulumi.Input<String>? targetPortHttpScheme;
  /// Traffic weights for app's revisions
  final pulumi.Input<List<TrafficWeightResponse>>? traffic;
  /// Ingress transport protocol
  final pulumi.Input<String>? transport;

  /// Creates a new [IngressResponse].
  /// [additionalPortMappings] Settings to expose additional ports on container app
  /// [allowInsecure] Bool indicating if HTTP connections to is allowed. If set to false HTTP connections are automatically redirected to HTTPS connections
  /// [clientCertificateMode] Client certificate mode for mTLS authentication. Ignore indicates server drops client certificate on forwarding. Accept indicates server forwards client certificate but does not require a client certificate. Require indicates server requires a client certificate.
  /// [corsPolicy] CORS policy for container app
  /// [customDomains] custom domain bindings for Container Apps' hostnames.
  /// [exposedPort] Exposed Port in containers for TCP traffic from ingress
  /// [external] Bool indicating if app exposes an external http endpoint
  /// [fqdn] Hostname.
  /// [ipSecurityRestrictions] Rules to restrict incoming IP address.
  /// [stickySessions] Sticky Sessions for Single Revision Mode
  /// [targetPort] Target Port in containers for traffic from ingress
  /// [targetPortHttpScheme] Whether an http app listens on http or https
  /// [traffic] Traffic weights for app's revisions
  /// [transport] Ingress transport protocol
  IngressResponse({
    this.additionalPortMappings,
    this.allowInsecure,
    this.clientCertificateMode,
    this.corsPolicy,
    this.customDomains,
    this.exposedPort,
    this.external,
    required this.fqdn,
    this.ipSecurityRestrictions,
    this.stickySessions,
    this.targetPort,
    this.targetPortHttpScheme,
    this.traffic,
    this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalPortMappings': ?pulumi.Input.mapOptionalInputValue<List<IngressPortMappingResponse>, List<Map<String, dynamic>>>(additionalPortMappings, (value) => pulumi.Input.encodeList<IngressPortMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'allowInsecure': ?allowInsecure,
      'clientCertificateMode': ?clientCertificateMode,
      'corsPolicy': ?pulumi.Input.mapOptionalInputValue<CorsPolicyResponse, Map<String, dynamic>>(corsPolicy, (value) => value.toMap()),
      'customDomains': ?pulumi.Input.mapOptionalInputValue<List<CustomDomainResponse>, List<Map<String, dynamic>>>(customDomains, (value) => pulumi.Input.encodeList<CustomDomainResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'exposedPort': ?exposedPort,
      'external': ?external,
      'fqdn': fqdn,
      'ipSecurityRestrictions': ?pulumi.Input.mapOptionalInputValue<List<IpSecurityRestrictionRuleResponse>, List<Map<String, dynamic>>>(ipSecurityRestrictions, (value) => pulumi.Input.encodeList<IpSecurityRestrictionRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stickySessions': ?pulumi.Input.mapOptionalInputValue<IngressResponseStickySessions, Map<String, dynamic>>(stickySessions, (value) => value.toMap()),
      'targetPort': ?targetPort,
      'targetPortHttpScheme': ?targetPortHttpScheme,
      'traffic': ?pulumi.Input.mapOptionalInputValue<List<TrafficWeightResponse>, List<Map<String, dynamic>>>(traffic, (value) => pulumi.Input.encodeList<TrafficWeightResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transport': ?transport,
    };
  }

  factory IngressResponse.fromMap(Map<String, dynamic> map) {
    return IngressResponse(
      additionalPortMappings: map['additionalPortMappings'] == null ? null : (pulumi.Input.decodeList<IngressPortMappingResponse>(map['additionalPortMappings']!, (value) => IngressPortMappingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      allowInsecure: map['allowInsecure'] == null ? null : (map['allowInsecure']! as bool).input(),
      clientCertificateMode: map['clientCertificateMode'] == null ? null : (map['clientCertificateMode']! as String).input(),
      corsPolicy: map['corsPolicy'] == null ? null : (CorsPolicyResponse.fromMap((map['corsPolicy']! as Map).cast<String, dynamic>())).input(),
      customDomains: map['customDomains'] == null ? null : (pulumi.Input.decodeList<CustomDomainResponse>(map['customDomains']!, (value) => CustomDomainResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      exposedPort: map['exposedPort'] == null ? null : (map['exposedPort']! as int).input(),
      external: map['external'] == null ? null : (map['external']! as bool).input(),
      fqdn: (map['fqdn'] as String).input(),
      ipSecurityRestrictions: map['ipSecurityRestrictions'] == null ? null : (pulumi.Input.decodeList<IpSecurityRestrictionRuleResponse>(map['ipSecurityRestrictions']!, (value) => IpSecurityRestrictionRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stickySessions: map['stickySessions'] == null ? null : (IngressResponseStickySessions.fromMap((map['stickySessions']! as Map).cast<String, dynamic>())).input(),
      targetPort: map['targetPort'] == null ? null : (map['targetPort']! as int).input(),
      targetPortHttpScheme: map['targetPortHttpScheme'] == null ? null : (map['targetPortHttpScheme']! as String).input(),
      traffic: map['traffic'] == null ? null : (pulumi.Input.decodeList<TrafficWeightResponse>(map['traffic']!, (value) => TrafficWeightResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      transport: map['transport'] == null ? null : (map['transport']! as String).input(),
    );
  }
}

