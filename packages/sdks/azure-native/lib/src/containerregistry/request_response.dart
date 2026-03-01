// ignore_for_file: unused_element, unnecessary_cast


/// The request that generated the event.
class RequestResponse {
  /// The IP or hostname and possibly port of the client connection that initiated the event. This is the RemoteAddr from the standard http request.
  final String? addr;
  /// The externally accessible hostname of the registry instance, as specified by the http host header on incoming requests.
  final String? host;
  /// The ID of the request that initiated the event.
  final String? id;
  /// The request method that generated the event.
  final String? method;
  /// The user agent header of the request.
  final String? useragent;

  /// Creates a new [RequestResponse].
  /// [addr] The IP or hostname and possibly port of the client connection that initiated the event. This is the RemoteAddr from the standard http request.
  /// [host] The externally accessible hostname of the registry instance, as specified by the http host header on incoming requests.
  /// [id] The ID of the request that initiated the event.
  /// [method] The request method that generated the event.
  /// [useragent] The user agent header of the request.
  RequestResponse({
    this.addr,
    this.host,
    this.id,
    this.method,
    this.useragent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addr': ?addr,
      'host': ?host,
      'id': ?id,
      'method': ?method,
      'useragent': ?useragent,
    };
  }

  factory RequestResponse.fromMap(Map<String, dynamic> map) {
    return RequestResponse(
      addr: map['addr'] == null ? null : map['addr'] as String,
      host: map['host'] == null ? null : map['host'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      method: map['method'] == null ? null : map['method'] as String,
      useragent: map['useragent'] == null ? null : map['useragent'] as String,
    );
  }
}

