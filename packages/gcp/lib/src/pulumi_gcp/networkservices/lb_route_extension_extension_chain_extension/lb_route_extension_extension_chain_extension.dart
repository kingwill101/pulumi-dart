// ignore_for_file: unused_element, unnecessary_cast

class LbRouteExtensionExtensionChainExtension {
  /// The :authority header in the gRPC request sent from Envoy to the extension service.
  final String? authority;

  /// Determines how the proxy behaves if the call to the extension fails or times out.
  /// When set to TRUE, request or response processing continues without error.
  /// Any subsequent extensions in the extension chain are also executed.
  /// When set to FALSE: * If response headers have not been delivered to the downstream client,
  /// a generic 500 error is returned to the client. The error response can be tailored by
  /// configuring a custom error response in the load balancer.
  final bool? failOpen;

  /// List of the HTTP headers to forward to the extension (from the client or backend).
  /// If omitted, all headers are sent. Each element is a string indicating the header name.
  final List<String>? forwardHeaders;

  /// The metadata provided here is included as part of the <span pulumi-lang-nodejs="`metadataContext`" pulumi-lang-dotnet="`MetadataContext`" pulumi-lang-go="`metadataContext`" pulumi-lang-python="`metadata_context`" pulumi-lang-yaml="`metadataContext`" pulumi-lang-java="`metadataContext`">`metadata_context`</span> (of type `google.protobuf.Struct`)
  /// in the `ProcessingRequest` message sent to the extension server.
  /// The metadata is available under the namespace `com.google.lb_route_extension.<resource_name>.<chain_name>.<extension_name>`.
  /// The following variables are supported in the metadata: `{forwarding_rule_id}` - substituted with the forwarding rule's fully qualified resource name.
  /// This field must not be set for plugin extensions. Setting it results in a validation error.
  final Map<String, String>? metadata;

  /// The name for this extension. The name is logged as part of the HTTP request logs.
  /// The name must conform with RFC-1034, is restricted to lower-cased letters, numbers and hyphens,
  /// and can have a maximum length of 63 characters. Additionally, the first character must be a letter
  /// and the last a letter or a number.
  final String name;

  /// When set to `TRUE`, enables <span pulumi-lang-nodejs="`observabilityMode`" pulumi-lang-dotnet="`ObservabilityMode`" pulumi-lang-go="`observabilityMode`" pulumi-lang-python="`observability_mode`" pulumi-lang-yaml="`observabilityMode`" pulumi-lang-java="`observabilityMode`">`observability_mode`</span> on the <span pulumi-lang-nodejs="`extProc`" pulumi-lang-dotnet="`ExtProc`" pulumi-lang-go="`extProc`" pulumi-lang-python="`ext_proc`" pulumi-lang-yaml="`extProc`" pulumi-lang-java="`extProc`">`ext_proc`</span> filter.
  /// This makes <span pulumi-lang-nodejs="`extProc`" pulumi-lang-dotnet="`ExtProc`" pulumi-lang-go="`extProc`" pulumi-lang-python="`ext_proc`" pulumi-lang-yaml="`extProc`" pulumi-lang-java="`extProc`">`ext_proc`</span> calls asynchronous. Envoy doesn't check for the response from <span pulumi-lang-nodejs="`extProc`" pulumi-lang-dotnet="`ExtProc`" pulumi-lang-go="`extProc`" pulumi-lang-python="`ext_proc`" pulumi-lang-yaml="`extProc`" pulumi-lang-java="`extProc`">`ext_proc`</span> calls.
  /// For more information about the filter, see: https://www.envoyproxy.io/docs/envoy/v1.32.3/api-v3/extensions/filters/http/ext_proc/v3/ext_proc.proto
  /// This field is helpful when you want to try out the extension in async log-only mode.
  /// Supported by regional `LbTrafficExtension` and `LbRouteExtension` resources.
  /// Only `STREAMED` (default) body processing mode is supported.
  final bool? observabilityMode;

  /// Configures the send mode for request body processing.
  /// The field can only be set if <span pulumi-lang-nodejs="`supportedEvents`" pulumi-lang-dotnet="`SupportedEvents`" pulumi-lang-go="`supportedEvents`" pulumi-lang-python="`supported_events`" pulumi-lang-yaml="`supportedEvents`" pulumi-lang-java="`supportedEvents`">`supported_events`</span> includes `REQUEST_BODY`.
  /// If <span pulumi-lang-nodejs="`supportedEvents`" pulumi-lang-dotnet="`SupportedEvents`" pulumi-lang-go="`supportedEvents`" pulumi-lang-python="`supported_events`" pulumi-lang-yaml="`supportedEvents`" pulumi-lang-java="`supportedEvents`">`supported_events`</span> includes `REQUEST_BODY`, but <span pulumi-lang-nodejs="`requestBodySendMode`" pulumi-lang-dotnet="`RequestBodySendMode`" pulumi-lang-go="`requestBodySendMode`" pulumi-lang-python="`request_body_send_mode`" pulumi-lang-yaml="`requestBodySendMode`" pulumi-lang-java="`requestBodySendMode`">`request_body_send_mode`</span> is unset, the default value `STREAMED` is used.
  /// When this field is set to `FULL_DUPLEX_STREAMED`, <span pulumi-lang-nodejs="`supportedEvents`" pulumi-lang-dotnet="`SupportedEvents`" pulumi-lang-go="`supportedEvents`" pulumi-lang-python="`supported_events`" pulumi-lang-yaml="`supportedEvents`" pulumi-lang-java="`supportedEvents`">`supported_events`</span> must include both `REQUEST_BODY` and `REQUEST_TRAILERS`.
  /// This field can be set only when the <span pulumi-lang-nodejs="`service`" pulumi-lang-dotnet="`Service`" pulumi-lang-go="`service`" pulumi-lang-python="`service`" pulumi-lang-yaml="`service`" pulumi-lang-java="`service`">`service`</span> field of the extension points to a `BackendService`.
  /// Only `FULL_DUPLEX_STREAMED` mode is supported for `LbRouteExtension` resources.
  /// Possible values are: `BODY_SEND_MODE_UNSPECIFIED`, `BODY_SEND_MODE_STREAMED`, `BODY_SEND_MODE_FULL_DUPLEX_STREAMED`.
  final String? requestBodySendMode;

  /// The reference to the service that runs the extension.
  /// * To configure a callout extension, service must be a fully-qualified reference to a backend service.
  /// * To configure a plugin extension, service must be a reference to a WasmPlugin resource.
  final String service;

  /// A set of events during request or response processing for which this extension is called.
  /// This field is optional for the LbRouteExtension resource. If unspecified, `REQUEST_HEADERS` event is assumed as supported.
  /// Possible values: `REQUEST_HEADERS`, `REQUEST_BODY`, `REQUEST_TRAILERS`.
  final List<String>? supportedEvents;

  /// Specifies the timeout for each individual message on the stream. The timeout must be between 10-1000 milliseconds.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String? timeout;

  LbRouteExtensionExtensionChainExtension({
    this.authority,
    this.failOpen,
    this.forwardHeaders,
    this.metadata,
    required this.name,
    this.observabilityMode,
    this.requestBodySendMode,
    required this.service,
    this.supportedEvents,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorityValue = authority;
    if (authorityValue != null) {
      map['authority'] = authorityValue;
    }
    final failOpenValue = failOpen;
    if (failOpenValue != null) {
      map['failOpen'] = failOpenValue;
    }
    final forwardHeadersValue = forwardHeaders;
    if (forwardHeadersValue != null) {
      map['forwardHeaders'] = forwardHeadersValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    map['name'] = name;
    final observabilityModeValue = observabilityMode;
    if (observabilityModeValue != null) {
      map['observabilityMode'] = observabilityModeValue;
    }
    final requestBodySendModeValue = requestBodySendMode;
    if (requestBodySendModeValue != null) {
      map['requestBodySendMode'] = requestBodySendModeValue;
    }
    map['service'] = service;
    final supportedEventsValue = supportedEvents;
    if (supportedEventsValue != null) {
      map['supportedEvents'] = supportedEventsValue;
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    return map;
  }

  factory LbRouteExtensionExtensionChainExtension.fromMap(
      Map<String, dynamic> map) {
    return LbRouteExtensionExtensionChainExtension(
      authority: map['authority'] == null ? null : map['authority'] as String,
      failOpen: map['failOpen'] == null ? null : map['failOpen'] as bool,
      forwardHeaders: map['forwardHeaders'] == null
          ? null
          : (map['forwardHeaders'] as List).cast<String>(),
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      observabilityMode: map['observabilityMode'] == null
          ? null
          : map['observabilityMode'] as bool,
      requestBodySendMode: map['requestBodySendMode'] == null
          ? null
          : map['requestBodySendMode'] as String,
      service: map['service'] as String,
      supportedEvents: map['supportedEvents'] == null
          ? null
          : (map['supportedEvents'] as List).cast<String>(),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}
