// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../edge_cache_service_log_config/edge_cache_service_log_config.dart';
import '../edge_cache_service_routing/edge_cache_service_routing.dart';

/// The set of arguments for EdgeCacheService.
class EdgeCacheServiceArgs {
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;

  /// Disables HTTP/2.
  /// HTTP/2 (h2) is enabled by default and recommended for performance. HTTP/2 improves connection re-use and reduces connection setup overhead by sending multiple streams over the same connection.
  /// Some legacy HTTP clients may have issues with HTTP/2 connections due to broken HTTP/2 implementations. Setting this to true will prevent HTTP/2 from being advertised and negotiated.
  final pulumi.Input<bool>? disableHttp2;

  /// HTTP/3 (IETF QUIC) and Google QUIC are enabled by default.
  final pulumi.Input<bool>? disableQuic;

  /// Resource URL that points at the Cloud Armor edge security policy that is applied on each request against the EdgeCacheService.
  final pulumi.Input<String>? edgeSecurityPolicy;

  /// URLs to sslCertificate resources that are used to authenticate connections between users and the EdgeCacheService.
  /// Note that only "global" certificates with a "scope" of "EDGE_CACHE" can be attached to an EdgeCacheService.
  final pulumi.Input<List<String>>? edgeSslCertificates;

  /// Set of label tags associated with the EdgeCache resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Specifies the logging options for the traffic served by this service. If logging is enabled, logs will be exported to Cloud Logging.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheServiceLogConfig>? logConfig;

  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Require TLS (HTTPS) for all clients connecting to this service.
  /// Clients who connect over HTTP (port 80) will receive a HTTP 301 to the same URL over HTTPS (port 443).
  /// You must have at least one (1) edgeSslCertificate specified to enable this.
  final pulumi.Input<bool>? requireTls;

  /// Defines how requests are routed, modified, cached and/or which origin content is filled from.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheServiceRouting> routing;

  /// URL of the SslPolicy resource that will be associated with the EdgeCacheService.
  /// If not set, the EdgeCacheService has no SSL policy configured, and will default to the "COMPATIBLE" policy.
  final pulumi.Input<String>? sslPolicy;

  EdgeCacheServiceArgs({
    this.description,
    this.disableHttp2,
    this.disableQuic,
    this.edgeSecurityPolicy,
    this.edgeSslCertificates,
    this.labels,
    this.logConfig,
    this.name,
    this.project,
    this.requireTls,
    required this.routing,
    this.sslPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disableHttp2Value = disableHttp2;
    if (disableHttp2Value != null) {
      map['disableHttp2'] = disableHttp2Value;
    }
    final disableQuicValue = disableQuic;
    if (disableQuicValue != null) {
      map['disableQuic'] = disableQuicValue;
    }
    final edgeSecurityPolicyValue = edgeSecurityPolicy;
    if (edgeSecurityPolicyValue != null) {
      map['edgeSecurityPolicy'] = edgeSecurityPolicyValue;
    }
    final edgeSslCertificatesValue = edgeSslCertificates;
    if (edgeSslCertificatesValue != null) {
      map['edgeSslCertificates'] = edgeSslCertificatesValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = pulumi.Input.mapOptionalInputValue<
          EdgeCacheServiceLogConfig,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requireTlsValue = requireTls;
    if (requireTlsValue != null) {
      map['requireTls'] = requireTlsValue;
    }
    map['routing'] = pulumi.Input.mapInputValue<EdgeCacheServiceRouting,
        Map<String, dynamic>>(routing, (value) => value.toMap());
    final sslPolicyValue = sslPolicy;
    if (sslPolicyValue != null) {
      map['sslPolicy'] = sslPolicyValue;
    }
    return map;
  }

  factory EdgeCacheServiceArgs.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disableHttp2: pulumi.Input.asOptionalInput<bool>(map['disableHttp2']),
      disableQuic: pulumi.Input.asOptionalInput<bool>(map['disableQuic']),
      edgeSecurityPolicy:
          pulumi.Input.asOptionalInput<String>(map['edgeSecurityPolicy']),
      edgeSslCertificates: pulumi.Input.asOptionalInput<List<String>>(
          map['edgeSslCertificates']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      logConfig: pulumi.Input.asOptionalInput<EdgeCacheServiceLogConfig>(
          map['logConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requireTls: pulumi.Input.asOptionalInput<bool>(map['requireTls']),
      routing: pulumi.Input.asInput<EdgeCacheServiceRouting>(map['routing']),
      sslPolicy: pulumi.Input.asOptionalInput<String>(map['sslPolicy']),
    );
  }
}
