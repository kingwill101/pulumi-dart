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
  final pulumi.Input<List<IpSecurityRestrictionRuleResponse>>?
  ipSecurityRestrictions;

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
      'additionalPortMappings':
          ?pulumi.Input.mapOptionalInputValue<
            List<IngressPortMappingResponse>,
            List<Map<String, dynamic>>
          >(
            additionalPortMappings,
            (value) =>
                pulumi.Input.encodeList<
                  IngressPortMappingResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'allowInsecure': ?allowInsecure,
      'clientCertificateMode': ?clientCertificateMode,
      'corsPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            CorsPolicyResponse,
            Map<String, dynamic>
          >(corsPolicy, (value) => value.toMap()),
      'customDomains':
          ?pulumi.Input.mapOptionalInputValue<
            List<CustomDomainResponse>,
            List<Map<String, dynamic>>
          >(
            customDomains,
            (value) =>
                pulumi.Input.encodeList<
                  CustomDomainResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'exposedPort': ?exposedPort,
      'external': ?external,
      'fqdn': fqdn,
      'ipSecurityRestrictions':
          ?pulumi.Input.mapOptionalInputValue<
            List<IpSecurityRestrictionRuleResponse>,
            List<Map<String, dynamic>>
          >(
            ipSecurityRestrictions,
            (value) =>
                pulumi.Input.encodeList<
                  IpSecurityRestrictionRuleResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'stickySessions':
          ?pulumi.Input.mapOptionalInputValue<
            IngressResponseStickySessions,
            Map<String, dynamic>
          >(stickySessions, (value) => value.toMap()),
      'targetPort': ?targetPort,
      'targetPortHttpScheme': ?targetPortHttpScheme,
      'traffic':
          ?pulumi.Input.mapOptionalInputValue<
            List<TrafficWeightResponse>,
            List<Map<String, dynamic>>
          >(
            traffic,
            (value) =>
                pulumi.Input.encodeList<
                  TrafficWeightResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'transport': ?transport,
    };
  }

  factory IngressResponse.fromMap(Map<String, dynamic> map) {
    return IngressResponse(
      additionalPortMappings: (() {
        final guardedValue = map['additionalPortMappings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IngressPortMappingResponse>(
            guardedValue,
            (value) => IngressPortMappingResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      allowInsecure: (() {
        final guardedValue = map['allowInsecure'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      clientCertificateMode: (() {
        final guardedValue = map['clientCertificateMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      corsPolicy: (() {
        final guardedValue = map['corsPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CorsPolicyResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      customDomains: (() {
        final guardedValue = map['customDomains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CustomDomainResponse>(
            guardedValue,
            (value) => CustomDomainResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      exposedPort: (() {
        final guardedValue = map['exposedPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      external: (() {
        final guardedValue = map['external'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      ipSecurityRestrictions: (() {
        final guardedValue = map['ipSecurityRestrictions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IpSecurityRestrictionRuleResponse>(
            guardedValue,
            (value) => IpSecurityRestrictionRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      stickySessions: (() {
        final guardedValue = map['stickySessions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IngressResponseStickySessions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      targetPort: (() {
        final guardedValue = map['targetPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      targetPortHttpScheme: (() {
        final guardedValue = map['targetPortHttpScheme'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      traffic: (() {
        final guardedValue = map['traffic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TrafficWeightResponse>(
            guardedValue,
            (value) => TrafficWeightResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      transport: (() {
        final guardedValue = map['transport'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
