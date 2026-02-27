import 'package:pulumi/pulumi.dart';
import '../edge_cache_origin_aws_v4_authentication/edge_cache_origin_aws_v4_authentication.dart';
import '../edge_cache_origin_flex_shielding/edge_cache_origin_flex_shielding.dart';
import '../edge_cache_origin_origin_override_action/edge_cache_origin_origin_override_action.dart';
import '../edge_cache_origin_origin_redirect/edge_cache_origin_origin_redirect.dart';
import '../edge_cache_origin_timeout/edge_cache_origin_timeout.dart';
import 'edge_cache_origin_args.dart';

/// EdgeCacheOrigin represents a HTTP-reachable backend for an EdgeCacheService.
///
///
/// To get more information about EdgeCacheOrigin, see:
///
/// * [API documentation](https://cloud.google.com/media-cdn/docs/reference/rest/v1/projects.locations.edgeCacheOrigins)
///
/// ## Example Usage
///
/// ### Network Services Edge Cache Origin Basic
///
///
///
/// ### Network Services Edge Cache Origin Advanced
///
///
///
/// ### Network Services Edge Cache Origin V4auth
///
///
///
///
/// ## Import
///
/// EdgeCacheOrigin can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/edgeCacheOrigins/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, EdgeCacheOrigin can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/edgeCacheOrigin:EdgeCacheOrigin default projects/{{project}}/locations/global/edgeCacheOrigins/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/edgeCacheOrigin:EdgeCacheOrigin default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/edgeCacheOrigin:EdgeCacheOrigin default {{name}}
/// ```
class EdgeCacheOrigin extends CustomResource {
  /// Enable AWS Signature Version 4 origin authentication.
  /// Structure is documented below.
  late final Output<EdgeCacheOriginAwsV4Authentication?> awsV4Authentication;

  /// A human-readable description of the resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The Origin resource to try when the current origin cannot be reached.
  /// After maxAttempts is reached, the configured failoverOrigin will be used to fulfil the request.
  /// The value of timeout.maxAttemptsTimeout dictates the timeout across all origins.
  /// A reference to a Topic resource.
  late final Output<String?> failoverOrigin;

  /// The FlexShieldingOptions to be used for all routes to this origin.
  /// If not set, defaults to a global caching layer in front of the origin.
  /// Structure is documented below.
  late final Output<EdgeCacheOriginFlexShielding?> flexShielding;

  /// Set of label tags associated with the EdgeCache resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The maximum number of attempts to cache fill from this origin. Another attempt is made when a cache fill fails with one of the retryConditions.
  /// Once maxAttempts to this origin have failed the failoverOrigin will be used, if one is specified. That failoverOrigin may specify its own maxAttempts,
  /// retryConditions and failoverOrigin to control its own cache fill failures.
  /// The total number of allowed attempts to cache fill across this and failover origins is limited to four.
  /// The total time allowed for cache fill attempts across this and failover origins can be controlled with maxAttemptsTimeout.
  /// The last valid, non-retried response from all origins will be returned to the client.
  /// If no origin returns a valid response, an HTTP 502 will be returned to the client.
  /// Defaults to 1. Must be a value greater than 0 and less than 4.
  late final Output<int?> maxAttempts;

  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  late final Output<String> name;

  /// A fully qualified domain name (FQDN) or IP address reachable over the public Internet, or the address of a Google Cloud Storage bucket.
  /// This address will be used as the origin for cache requests - e.g. FQDN: media-backend.example.com, IPv4: 35.218.1.1, IPv6: 2607:f8b0:4012:809::200e, Cloud Storage: gs://bucketname
  /// When providing an FQDN (hostname), it must be publicly resolvable (e.g. via Google public DNS) and IP addresses must be publicly routable.  It must not contain a protocol (e.g., https://) and it must not contain any slashes.
  /// If a Cloud Storage bucket is provided, it must be in the canonical "gs://bucketname" format. Other forms, such as "storage.googleapis.com", will be rejected.
  late final Output<String> originAddress;

  /// The override actions, including url rewrites and header
  /// additions, for requests that use this origin.
  /// Structure is documented below.
  late final Output<EdgeCacheOriginOriginOverrideAction?> originOverrideAction;

  /// Follow redirects from this origin.
  /// Structure is documented below.
  late final Output<EdgeCacheOriginOriginRedirect?> originRedirect;

  /// The port to connect to the origin on.
  /// Defaults to port 443 for HTTP2 and HTTPS protocols, and port 80 for HTTP.
  late final Output<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The protocol to use to connect to the configured origin. Defaults to HTTP2, and it is strongly recommended that users use HTTP2 for both security & performance.
  /// When using HTTP2 or HTTPS as the protocol, a valid, publicly-signed, unexpired TLS (SSL) certificate must be presented by the origin server.
  /// Possible values are: `HTTP2`, `HTTPS`, `HTTP`.
  late final Output<String> protocol;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Specifies one or more retry conditions for the configured origin.
  /// If the failure mode during a connection attempt to the origin matches the configured retryCondition(s),
  /// the origin request will be retried up to maxAttempts times. The failoverOrigin, if configured, will then be used to satisfy the request.
  /// The default retryCondition is "CONNECT_FAILURE".
  /// retryConditions apply to this origin, and not subsequent failoverOrigin(s),
  /// which may specify their own retryConditions and maxAttempts.
  /// Valid values are:
  /// - CONNECT_FAILURE: Retry on failures connecting to origins, for example due to connection timeouts.
  /// - HTTP_5XX: Retry if the origin responds with any 5xx response code, or if the origin does not respond at all, example: disconnects, reset, read timeout, connection failure, and refused streams.
  /// - GATEWAY_ERROR: Similar to 5xx, but only applies to response codes 502, 503 or 504.
  /// - RETRIABLE_4XX: Retry for retriable 4xx response codes, which include HTTP 409 (Conflict) and HTTP 429 (Too Many Requests)
  /// - NOT_FOUND: Retry if the origin returns a HTTP 404 (Not Found). This can be useful when generating video content, and the segment is not available yet.
  /// - FORBIDDEN: Retry if the origin returns a HTTP 403 (Forbidden).
  /// Each value may be one of: `CONNECT_FAILURE`, `HTTP_5XX`, `GATEWAY_ERROR`, `RETRIABLE_4XX`, `NOT_FOUND`, `FORBIDDEN`.
  late final Output<List<String>> retryConditions;

  /// The connection and HTTP timeout configuration for this origin.
  /// Structure is documented below.
  late final Output<EdgeCacheOriginTimeout?> timeout;

  EdgeCacheOrigin(
    String name, {
    EdgeCacheOriginArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/edgeCacheOrigin:EdgeCacheOrigin',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.awsV4Authentication =
        registerOutput<EdgeCacheOriginAwsV4Authentication?>(
            'awsV4Authentication');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.failoverOrigin = registerOutput<String?>('failoverOrigin');
    this.flexShielding =
        registerOutput<EdgeCacheOriginFlexShielding?>('flexShielding');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.maxAttempts = registerOutput<int?>('maxAttempts');
    this.name = registerOutput<String>('name');
    this.originAddress = registerOutput<String>('originAddress');
    this.originOverrideAction =
        registerOutput<EdgeCacheOriginOriginOverrideAction?>(
            'originOverrideAction');
    this.originRedirect =
        registerOutput<EdgeCacheOriginOriginRedirect?>('originRedirect');
    this.port = registerOutput<int>('port');
    this.project = registerOutput<String>('project');
    this.protocol = registerOutput<String>('protocol');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.retryConditions = registerOutput<List<String>>('retryConditions');
    this.timeout = registerOutput<EdgeCacheOriginTimeout?>('timeout');
  }
}
