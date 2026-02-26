// ignore_for_file: unused_element, unnecessary_cast

/// Represents a HTTP endpoint destination.
class HttpEndpointResponse {
  /// The URI of the HTTP enpdoint. The value must be a RFC2396 URI string. Examples: `http://10.10.10.8:80/route`, `http://svc.us-central1.p.local:8080/`. Only HTTP and HTTPS protocols are supported. The host can be either a static IP addressable from the VPC specified by the network config, or an internal DNS hostname of the service resolvable via Cloud DNS.
  final String uri;

  HttpEndpointResponse({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory HttpEndpointResponse.fromMap(Map<String, dynamic> map) {
    return HttpEndpointResponse(
      uri: map['uri'] as String,
    );
  }
}
