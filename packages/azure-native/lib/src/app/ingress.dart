// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_policy.dart';
import 'custom_domain.dart';
import 'ingress_port_mapping.dart';
import 'ingress_sticky_sessions.dart';
import 'ip_security_restriction_rule.dart';
import 'traffic_weight.dart';

/// Container App Ingress configuration.
class Ingress {
  /// Settings to expose additional ports on container app
  final List<IngressPortMapping>? additionalPortMappings;
  /// Bool indicating if HTTP connections to is allowed. If set to false HTTP connections are automatically redirected to HTTPS connections
  final bool? allowInsecure;
  /// Client certificate mode for mTLS authentication. Ignore indicates server drops client certificate on forwarding. Accept indicates server forwards client certificate but does not require a client certificate. Require indicates server requires a client certificate.
  final String? clientCertificateMode;
  /// CORS policy for container app
  final CorsPolicy? corsPolicy;
  /// custom domain bindings for Container Apps' hostnames.
  final List<CustomDomain>? customDomains;
  /// Exposed Port in containers for TCP traffic from ingress
  final int? exposedPort;
  /// Bool indicating if app exposes an external http endpoint
  final bool? external;
  /// Rules to restrict incoming IP address.
  final List<IpSecurityRestrictionRule>? ipSecurityRestrictions;
  /// Sticky Sessions for Single Revision Mode
  final IngressStickySessions? stickySessions;
  /// Target Port in containers for traffic from ingress
  final int? targetPort;
  /// Whether an http app listens on http or https
  final String? targetPortHttpScheme;
  /// Traffic weights for app's revisions
  final List<TrafficWeight>? traffic;
  /// Ingress transport protocol
  final String? transport;

  /// Creates a new [Ingress].
  /// [additionalPortMappings] Settings to expose additional ports on container app
  /// [allowInsecure] Bool indicating if HTTP connections to is allowed. If set to false HTTP connections are automatically redirected to HTTPS connections
  /// [clientCertificateMode] Client certificate mode for mTLS authentication. Ignore indicates server drops client certificate on forwarding. Accept indicates server forwards client certificate but does not require a client certificate. Require indicates server requires a client certificate.
  /// [corsPolicy] CORS policy for container app
  /// [customDomains] custom domain bindings for Container Apps' hostnames.
  /// [exposedPort] Exposed Port in containers for TCP traffic from ingress
  /// [external] Bool indicating if app exposes an external http endpoint
  /// [ipSecurityRestrictions] Rules to restrict incoming IP address.
  /// [stickySessions] Sticky Sessions for Single Revision Mode
  /// [targetPort] Target Port in containers for traffic from ingress
  /// [targetPortHttpScheme] Whether an http app listens on http or https
  /// [traffic] Traffic weights for app's revisions
  /// [transport] Ingress transport protocol
  Ingress({
    this.additionalPortMappings,
    this.allowInsecure,
    this.clientCertificateMode,
    this.corsPolicy,
    this.customDomains,
    this.exposedPort,
    this.external,
    this.ipSecurityRestrictions,
    this.stickySessions,
    this.targetPort,
    this.targetPortHttpScheme,
    this.traffic,
    this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalPortMappings': ?additionalPortMappings == null ? null : pulumi.Input.encodeList<IngressPortMapping, Map<String, dynamic>>(additionalPortMappings!, (value) => value.toMap()),
      'allowInsecure': ?allowInsecure,
      'clientCertificateMode': ?clientCertificateMode,
      'corsPolicy': ?corsPolicy == null ? null : corsPolicy!.toMap(),
      'customDomains': ?customDomains == null ? null : pulumi.Input.encodeList<CustomDomain, Map<String, dynamic>>(customDomains!, (value) => value.toMap()),
      'exposedPort': ?exposedPort,
      'external': ?external,
      'ipSecurityRestrictions': ?ipSecurityRestrictions == null ? null : pulumi.Input.encodeList<IpSecurityRestrictionRule, Map<String, dynamic>>(ipSecurityRestrictions!, (value) => value.toMap()),
      'stickySessions': ?stickySessions == null ? null : stickySessions!.toMap(),
      'targetPort': ?targetPort,
      'targetPortHttpScheme': ?targetPortHttpScheme,
      'traffic': ?traffic == null ? null : pulumi.Input.encodeList<TrafficWeight, Map<String, dynamic>>(traffic!, (value) => value.toMap()),
      'transport': ?transport,
    };
  }

  factory Ingress.fromMap(Map<String, dynamic> map) {
    return Ingress(
      additionalPortMappings: map['additionalPortMappings'] == null ? null : pulumi.Input.decodeList<IngressPortMapping>(map['additionalPortMappings'], (value) => IngressPortMapping.fromMap((value as Map).cast<String, dynamic>())),
      allowInsecure: map['allowInsecure'] == null ? null : map['allowInsecure'] as bool,
      clientCertificateMode: map['clientCertificateMode'] == null ? null : map['clientCertificateMode'] as String,
      corsPolicy: map['corsPolicy'] == null ? null : CorsPolicy.fromMap((map['corsPolicy'] as Map).cast<String, dynamic>()),
      customDomains: map['customDomains'] == null ? null : pulumi.Input.decodeList<CustomDomain>(map['customDomains'], (value) => CustomDomain.fromMap((value as Map).cast<String, dynamic>())),
      exposedPort: map['exposedPort'] == null ? null : map['exposedPort'] as int,
      external: map['external'] == null ? null : map['external'] as bool,
      ipSecurityRestrictions: map['ipSecurityRestrictions'] == null ? null : pulumi.Input.decodeList<IpSecurityRestrictionRule>(map['ipSecurityRestrictions'], (value) => IpSecurityRestrictionRule.fromMap((value as Map).cast<String, dynamic>())),
      stickySessions: map['stickySessions'] == null ? null : IngressStickySessions.fromMap((map['stickySessions'] as Map).cast<String, dynamic>()),
      targetPort: map['targetPort'] == null ? null : map['targetPort'] as int,
      targetPortHttpScheme: map['targetPortHttpScheme'] == null ? null : map['targetPortHttpScheme'] as String,
      traffic: map['traffic'] == null ? null : pulumi.Input.decodeList<TrafficWeight>(map['traffic'], (value) => TrafficWeight.fromMap((value as Map).cast<String, dynamic>())),
      transport: map['transport'] == null ? null : map['transport'] as String,
    );
  }
}

