// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../edge_cache_origin_aws_v4_authentication/edge_cache_origin_aws_v4_authentication.dart';
import '../edge_cache_origin_flex_shielding/edge_cache_origin_flex_shielding.dart';
import '../edge_cache_origin_origin_override_action/edge_cache_origin_origin_override_action.dart';
import '../edge_cache_origin_origin_redirect/edge_cache_origin_origin_redirect.dart';
import '../edge_cache_origin_timeout/edge_cache_origin_timeout.dart';

/// The set of arguments for EdgeCacheOrigin.
class EdgeCacheOriginArgs {
  /// Enable AWS Signature Version 4 origin authentication.
  /// Structure is documented below.
  final Input<EdgeCacheOriginAwsV4Authentication>? awsV4Authentication;

  /// A human-readable description of the resource.
  final Input<String>? description;

  /// The Origin resource to try when the current origin cannot be reached.
  /// After maxAttempts is reached, the configured failoverOrigin will be used to fulfil the request.
  /// The value of timeout.maxAttemptsTimeout dictates the timeout across all origins.
  /// A reference to a Topic resource.
  final Input<String>? failoverOrigin;

  /// The FlexShieldingOptions to be used for all routes to this origin.
  /// If not set, defaults to a global caching layer in front of the origin.
  /// Structure is documented below.
  final Input<EdgeCacheOriginFlexShielding>? flexShielding;

  /// Set of label tags associated with the EdgeCache resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The maximum number of attempts to cache fill from this origin. Another attempt is made when a cache fill fails with one of the retryConditions.
  /// Once maxAttempts to this origin have failed the failoverOrigin will be used, if one is specified. That failoverOrigin may specify its own maxAttempts,
  /// retryConditions and failoverOrigin to control its own cache fill failures.
  /// The total number of allowed attempts to cache fill across this and failover origins is limited to four.
  /// The total time allowed for cache fill attempts across this and failover origins can be controlled with maxAttemptsTimeout.
  /// The last valid, non-retried response from all origins will be returned to the client.
  /// If no origin returns a valid response, an HTTP 502 will be returned to the client.
  /// Defaults to 1. Must be a value greater than 0 and less than 4.
  final Input<int>? maxAttempts;

  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  final Input<String>? name;

  /// A fully qualified domain name (FQDN) or IP address reachable over the public Internet, or the address of a Google Cloud Storage bucket.
  /// This address will be used as the origin for cache requests - e.g. FQDN: media-backend.example.com, IPv4: 35.218.1.1, IPv6: 2607:f8b0:4012:809::200e, Cloud Storage: gs://bucketname
  /// When providing an FQDN (hostname), it must be publicly resolvable (e.g. via Google public DNS) and IP addresses must be publicly routable.  It must not contain a protocol (e.g., https://) and it must not contain any slashes.
  /// If a Cloud Storage bucket is provided, it must be in the canonical "gs://bucketname" format. Other forms, such as "storage.googleapis.com", will be rejected.
  final Input<String> originAddress;

  /// The override actions, including url rewrites and header
  /// additions, for requests that use this origin.
  /// Structure is documented below.
  final Input<EdgeCacheOriginOriginOverrideAction>? originOverrideAction;

  /// Follow redirects from this origin.
  /// Structure is documented below.
  final Input<EdgeCacheOriginOriginRedirect>? originRedirect;

  /// The port to connect to the origin on.
  /// Defaults to port 443 for HTTP2 and HTTPS protocols, and port 80 for HTTP.
  final Input<int>? port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The protocol to use to connect to the configured origin. Defaults to HTTP2, and it is strongly recommended that users use HTTP2 for both security & performance.
  /// When using HTTP2 or HTTPS as the protocol, a valid, publicly-signed, unexpired TLS (SSL) certificate must be presented by the origin server.
  /// Possible values are: `HTTP2`, `HTTPS`, `HTTP`.
  final Input<String>? protocol;

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
  final Input<List<String>>? retryConditions;

  /// The connection and HTTP timeout configuration for this origin.
  /// Structure is documented below.
  final Input<EdgeCacheOriginTimeout>? timeout;

  EdgeCacheOriginArgs({
    this.awsV4Authentication,
    this.description,
    this.failoverOrigin,
    this.flexShielding,
    this.labels,
    this.maxAttempts,
    this.name,
    required this.originAddress,
    this.originOverrideAction,
    this.originRedirect,
    this.port,
    this.project,
    this.protocol,
    this.retryConditions,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsV4AuthenticationValue = awsV4Authentication;
    if (awsV4AuthenticationValue != null) {
      map['awsV4Authentication'] = Input.mapOptionalInputValue<
              EdgeCacheOriginAwsV4Authentication, Map<String, dynamic>>(
          awsV4AuthenticationValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final failoverOriginValue = failoverOrigin;
    if (failoverOriginValue != null) {
      map['failoverOrigin'] = failoverOriginValue;
    }
    final flexShieldingValue = flexShielding;
    if (flexShieldingValue != null) {
      map['flexShielding'] = Input.mapOptionalInputValue<
          EdgeCacheOriginFlexShielding,
          Map<String, dynamic>>(flexShieldingValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final maxAttemptsValue = maxAttempts;
    if (maxAttemptsValue != null) {
      map['maxAttempts'] = maxAttemptsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['originAddress'] = originAddress;
    final originOverrideActionValue = originOverrideAction;
    if (originOverrideActionValue != null) {
      map['originOverrideAction'] = Input.mapOptionalInputValue<
              EdgeCacheOriginOriginOverrideAction, Map<String, dynamic>>(
          originOverrideActionValue, (value) => value.toMap());
    }
    final originRedirectValue = originRedirect;
    if (originRedirectValue != null) {
      map['originRedirect'] = Input.mapOptionalInputValue<
          EdgeCacheOriginOriginRedirect,
          Map<String, dynamic>>(originRedirectValue, (value) => value.toMap());
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final retryConditionsValue = retryConditions;
    if (retryConditionsValue != null) {
      map['retryConditions'] = retryConditionsValue;
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = Input.mapOptionalInputValue<EdgeCacheOriginTimeout,
          Map<String, dynamic>>(timeoutValue, (value) => value.toMap());
    }
    return map;
  }

  factory EdgeCacheOriginArgs.fromMap(Map<String, dynamic> map) {
    return EdgeCacheOriginArgs(
      awsV4Authentication:
          Input.asOptionalInput<EdgeCacheOriginAwsV4Authentication>(
              map['awsV4Authentication']),
      description: Input.asOptionalInput<String>(map['description']),
      failoverOrigin: Input.asOptionalInput<String>(map['failoverOrigin']),
      flexShielding: Input.asOptionalInput<EdgeCacheOriginFlexShielding>(
          map['flexShielding']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      maxAttempts: Input.asOptionalInput<int>(map['maxAttempts']),
      name: Input.asOptionalInput<String>(map['name']),
      originAddress: Input.asInput<String>(map['originAddress']),
      originOverrideAction:
          Input.asOptionalInput<EdgeCacheOriginOriginOverrideAction>(
              map['originOverrideAction']),
      originRedirect: Input.asOptionalInput<EdgeCacheOriginOriginRedirect>(
          map['originRedirect']),
      port: Input.asOptionalInput<int>(map['port']),
      project: Input.asOptionalInput<String>(map['project']),
      protocol: Input.asOptionalInput<String>(map['protocol']),
      retryConditions:
          Input.asOptionalInput<List<String>>(map['retryConditions']),
      timeout: Input.asOptionalInput<EdgeCacheOriginTimeout>(map['timeout']),
    );
  }
}
