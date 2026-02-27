import 'package:pulumi/pulumi.dart' as pulumi;
import '../edge_cache_service_log_config/edge_cache_service_log_config.dart';
import '../edge_cache_service_routing/edge_cache_service_routing.dart';
import 'edge_cache_service_args.dart';

/// EdgeCacheService defines the IP addresses, protocols, security policies, cache policies and routing configuration.
///
///
///
/// > **Warning:** These resources require allow-listing to use, and are not openly available to all Cloud customers. Engage with your Cloud account team to discuss how to onboard.
///
/// ## Example Usage
///
/// ### Network Services Edge Cache Service Basic
///
///
///
/// ### Network Services Edge Cache Service Advanced
///
///
///
/// ### Network Services Edge Cache Service Dual Token
///
///
///
///
/// ## Import
///
/// EdgeCacheService can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/edgeCacheServices/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, EdgeCacheService can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/edgeCacheService:EdgeCacheService default projects/{{project}}/locations/global/edgeCacheServices/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/edgeCacheService:EdgeCacheService default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/edgeCacheService:EdgeCacheService default {{name}}
/// ```
class EdgeCacheService extends pulumi.CustomResource {
  /// A human-readable description of the resource.
  late final pulumi.Output<String?> description;

  /// Disables HTTP/2.
  /// HTTP/2 (h2) is enabled by default and recommended for performance. HTTP/2 improves connection re-use and reduces connection setup overhead by sending multiple streams over the same connection.
  /// Some legacy HTTP clients may have issues with HTTP/2 connections due to broken HTTP/2 implementations. Setting this to true will prevent HTTP/2 from being advertised and negotiated.
  late final pulumi.Output<bool?> disableHttp2;

  /// HTTP/3 (IETF QUIC) and Google QUIC are enabled by default.
  late final pulumi.Output<bool> disableQuic;

  /// Resource URL that points at the Cloud Armor edge security policy that is applied on each request against the EdgeCacheService.
  late final pulumi.Output<String?> edgeSecurityPolicy;

  /// URLs to sslCertificate resources that are used to authenticate connections between users and the EdgeCacheService.
  /// Note that only "global" certificates with a "scope" of "EDGE_CACHE" can be attached to an EdgeCacheService.
  late final pulumi.Output<List<String>?> edgeSslCertificates;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The IPv4 addresses associated with this service. Addresses are static for the lifetime of the service.
  late final pulumi.Output<List<String>> ipv4Addresses;

  /// The IPv6 addresses associated with this service. Addresses are static for the lifetime of the service.
  late final pulumi.Output<List<String>> ipv6Addresses;

  /// Set of label tags associated with the EdgeCache resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Specifies the logging options for the traffic served by this service. If logging is enabled, logs will be exported to Cloud Logging.
  /// Structure is documented below.
  late final pulumi.Output<EdgeCacheServiceLogConfig?> logConfig;

  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Require TLS (HTTPS) for all clients connecting to this service.
  /// Clients who connect over HTTP (port 80) will receive a HTTP 301 to the same URL over HTTPS (port 443).
  /// You must have at least one (1) edgeSslCertificate specified to enable this.
  late final pulumi.Output<bool> requireTls;

  /// Defines how requests are routed, modified, cached and/or which origin content is filled from.
  /// Structure is documented below.
  late final pulumi.Output<EdgeCacheServiceRouting> routing;

  /// URL of the SslPolicy resource that will be associated with the EdgeCacheService.
  /// If not set, the EdgeCacheService has no SSL policy configured, and will default to the "COMPATIBLE" policy.
  late final pulumi.Output<String?> sslPolicy;

  EdgeCacheService(
    String name, {
    EdgeCacheServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/edgeCacheService:EdgeCacheService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.disableHttp2 = registerOutput<bool?>('disableHttp2');
    this.disableQuic = registerOutput<bool>('disableQuic');
    this.edgeSecurityPolicy = registerOutput<String?>('edgeSecurityPolicy');
    this.edgeSslCertificates =
        registerOutput<List<String>?>('edgeSslCertificates');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.ipv4Addresses = registerOutput<List<String>>('ipv4Addresses');
    this.ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.logConfig = registerOutput<EdgeCacheServiceLogConfig?>('logConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.requireTls = registerOutput<bool>('requireTls');
    this.routing = registerOutput<EdgeCacheServiceRouting>('routing');
    this.sslPolicy = registerOutput<String?>('sslPolicy');
  }
}
