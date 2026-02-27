// ignore_for_file: unused_element, unnecessary_cast

/// `Endpoint` describes a network address of a service that serves a set of APIs. It is commonly known as a service endpoint. A service may expose any number of service endpoints, and all service endpoints share the same service definition, such as quota limits and monitoring metrics. Example: type: google.api.Service name: library-example.googleapis.com endpoints: # Declares network address `https://library-example.googleapis.com` # for service `library-example.googleapis.com`. The `https` scheme # is implicit for all service endpoints. Other schemes may be # supported in the future. - name: library-example.googleapis.com allow_cors: false - name: content-staging-library-example.googleapis.com # Allows HTTP OPTIONS calls to be passed to the API frontend, for it # to decide whether the subsequent cross-origin request is allowed # to proceed. allow_cors: true
class EndpointServicemanagementV1 {
  /// Unimplemented. Dot not use. DEPRECATED: This field is no longer supported. Instead of using aliases, please specify multiple google.api.Endpoint for each of the intended aliases. Additional names that this endpoint will be hosted on.
  final List<String>? aliases;

  /// Allowing [CORS](https://en.wikipedia.org/wiki/Cross-origin_resource_sharing), aka cross-domain traffic, would allow the backends served from this endpoint to receive and respond to HTTP OPTIONS requests. The response will be used by the browser to determine whether the subsequent cross-origin request is allowed to proceed.
  final bool? allowCors;

  /// The canonical name of this endpoint.
  final String? name;

  /// The specification of an Internet routable address of API frontend that will handle requests to this [API Endpoint](https://cloud.google.com/apis/design/glossary). It should be either a valid IPv4 address or a fully-qualified domain name. For example, "8.8.8.8" or "myservice.appspot.com".
  final String? target;

  EndpointServicemanagementV1({
    this.aliases,
    this.allowCors,
    this.name,
    this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aliasesValue = aliases;
    if (aliasesValue != null) {
      map['aliases'] = aliasesValue;
    }
    final allowCorsValue = allowCors;
    if (allowCorsValue != null) {
      map['allowCors'] = allowCorsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final targetValue = target;
    if (targetValue != null) {
      map['target'] = targetValue;
    }
    return map;
  }

  factory EndpointServicemanagementV1.fromMap(Map<String, dynamic> map) {
    return EndpointServicemanagementV1(
      aliases: map['aliases'] == null
          ? null
          : (map['aliases'] as List).cast<String>(),
      allowCors: map['allowCors'] == null ? null : map['allowCors'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}
