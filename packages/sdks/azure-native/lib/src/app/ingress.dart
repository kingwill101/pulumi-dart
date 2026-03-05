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
  final pulumi.Input<List<IngressPortMapping>>? additionalPortMappings;
  /// Bool indicating if HTTP connections to is allowed. If set to false HTTP connections are automatically redirected to HTTPS connections
  final pulumi.Input<bool>? allowInsecure;
  /// Client certificate mode for mTLS authentication. Ignore indicates server drops client certificate on forwarding. Accept indicates server forwards client certificate but does not require a client certificate. Require indicates server requires a client certificate.
  final pulumi.Input<String>? clientCertificateMode;
  /// CORS policy for container app
  final pulumi.Input<CorsPolicy>? corsPolicy;
  /// custom domain bindings for Container Apps' hostnames.
  final pulumi.Input<List<CustomDomain>>? customDomains;
  /// Exposed Port in containers for TCP traffic from ingress
  final pulumi.Input<int>? exposedPort;
  /// Bool indicating if app exposes an external http endpoint
  final pulumi.Input<bool>? external;
  /// Rules to restrict incoming IP address.
  final pulumi.Input<List<IpSecurityRestrictionRule>>? ipSecurityRestrictions;
  /// Sticky Sessions for Single Revision Mode
  final pulumi.Input<IngressStickySessions>? stickySessions;
  /// Target Port in containers for traffic from ingress
  final pulumi.Input<int>? targetPort;
  /// Whether an http app listens on http or https
  final pulumi.Input<String>? targetPortHttpScheme;
  /// Traffic weights for app's revisions
  final pulumi.Input<List<TrafficWeight>>? traffic;
  /// Ingress transport protocol
  final pulumi.Input<String>? transport;

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
      'additionalPortMappings': ?pulumi.Input.mapOptionalInputValue<List<IngressPortMapping>, List<Map<String, dynamic>>>(additionalPortMappings, (value) => pulumi.Input.encodeList<IngressPortMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'allowInsecure': ?allowInsecure,
      'clientCertificateMode': ?clientCertificateMode,
      'corsPolicy': ?pulumi.Input.mapOptionalInputValue<CorsPolicy, Map<String, dynamic>>(corsPolicy, (value) => value.toMap()),
      'customDomains': ?pulumi.Input.mapOptionalInputValue<List<CustomDomain>, List<Map<String, dynamic>>>(customDomains, (value) => pulumi.Input.encodeList<CustomDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'exposedPort': ?exposedPort,
      'external': ?external,
      'ipSecurityRestrictions': ?pulumi.Input.mapOptionalInputValue<List<IpSecurityRestrictionRule>, List<Map<String, dynamic>>>(ipSecurityRestrictions, (value) => pulumi.Input.encodeList<IpSecurityRestrictionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stickySessions': ?pulumi.Input.mapOptionalInputValue<IngressStickySessions, Map<String, dynamic>>(stickySessions, (value) => value.toMap()),
      'targetPort': ?targetPort,
      'targetPortHttpScheme': ?targetPortHttpScheme,
      'traffic': ?pulumi.Input.mapOptionalInputValue<List<TrafficWeight>, List<Map<String, dynamic>>>(traffic, (value) => pulumi.Input.encodeList<TrafficWeight, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transport': ?transport,
    };
  }

  factory Ingress.fromMap(Map<String, dynamic> map) {
    return Ingress(
      additionalPortMappings: (() { final guardedValue = map['additionalPortMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IngressPortMapping>(guardedValue, (value) => IngressPortMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      allowInsecure: (() { final guardedValue = map['allowInsecure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clientCertificateMode: (() { final guardedValue = map['clientCertificateMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      corsPolicy: (() { final guardedValue = map['corsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CorsPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customDomains: (() { final guardedValue = map['customDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomDomain>(guardedValue, (value) => CustomDomain.fromMap((value as Map).cast<String, dynamic>()))); })(),
      exposedPort: (() { final guardedValue = map['exposedPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      external: (() { final guardedValue = map['external']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipSecurityRestrictions: (() { final guardedValue = map['ipSecurityRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpSecurityRestrictionRule>(guardedValue, (value) => IpSecurityRestrictionRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stickySessions: (() { final guardedValue = map['stickySessions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressStickySessions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetPort: (() { final guardedValue = map['targetPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetPortHttpScheme: (() { final guardedValue = map['targetPortHttpScheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      traffic: (() { final guardedValue = map['traffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrafficWeight>(guardedValue, (value) => TrafficWeight.fromMap((value as Map).cast<String, dynamic>()))); })(),
      transport: (() { final guardedValue = map['transport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

