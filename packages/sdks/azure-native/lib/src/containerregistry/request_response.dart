// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The request that generated the event.
class RequestResponse {
  /// The IP or hostname and possibly port of the client connection that initiated the event. This is the RemoteAddr from the standard http request.
  final pulumi.Input<String>? addr;
  /// The externally accessible hostname of the registry instance, as specified by the http host header on incoming requests.
  final pulumi.Input<String>? host;
  /// The ID of the request that initiated the event.
  final pulumi.Input<String>? id;
  /// The request method that generated the event.
  final pulumi.Input<String>? method;
  /// The user agent header of the request.
  final pulumi.Input<String>? useragent;

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
      addr: (() { final guardedValue = map['addr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useragent: (() { final guardedValue = map['useragent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

