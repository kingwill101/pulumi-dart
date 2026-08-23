// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_header_model_properties_response.dart';

/// Definition of FieldToMatch
class FieldToMatchResponse {
  /// Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  final pulumi.Input<dynamic>? method;
  /// Inspect the query string. This is the part of a URL that appears after a ? character, if any.
  final pulumi.Input<dynamic>? queryString;
  /// Inspect a single header. Provide the name of the header to inspect, for example, User-Agent or Referer. This setting isn't case sensitive.
  final pulumi.Input<SingleHeaderModelPropertiesResponse>? singleHeader;
  /// Inspect the request URI path. This is the part of a web request that identifies a resource, for example, /images/daily-ad.jpg.
  final pulumi.Input<dynamic>? uriPath;

  /// Creates a new [FieldToMatchResponse].
  /// [method] Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  /// [queryString] Inspect the query string. This is the part of a URL that appears after a ? character, if any.
  /// [singleHeader] Inspect a single header. Provide the name of the header to inspect, for example, User-Agent or Referer. This setting isn't case sensitive.
  /// [uriPath] Inspect the request URI path. This is the part of a web request that identifies a resource, for example, /images/daily-ad.jpg.
  const FieldToMatchResponse({
    this.method,
    this.queryString,
    this.singleHeader,
    this.uriPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'queryString': ?queryString,
      'singleHeader': ?pulumi.Input.mapOptionalInputValue<SingleHeaderModelPropertiesResponse, Map<String, dynamic>>(singleHeader, (value) => value.toMap()),
      'uriPath': ?uriPath,
    };
  }

  factory FieldToMatchResponse.fromMap(Map<String, dynamic> map) {
    return FieldToMatchResponse(
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      queryString: (() { final guardedValue = map['queryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      singleHeader: (() { final guardedValue = map['singleHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SingleHeaderModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uriPath: (() { final guardedValue = map['uriPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
