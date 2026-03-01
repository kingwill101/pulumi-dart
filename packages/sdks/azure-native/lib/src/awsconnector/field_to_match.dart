// ignore_for_file: unused_element, unnecessary_cast

import 'single_header_model_properties.dart';

/// Definition of FieldToMatch
class FieldToMatch {
  /// Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  final dynamic method;
  /// Inspect the query string. This is the part of a URL that appears after a ? character, if any.
  final dynamic queryString;
  /// Inspect a single header. Provide the name of the header to inspect, for example, User-Agent or Referer. This setting isn't case sensitive.
  final SingleHeaderModelProperties? singleHeader;
  /// Inspect the request URI path. This is the part of a web request that identifies a resource, for example, /images/daily-ad.jpg.
  final dynamic uriPath;

  /// Creates a new [FieldToMatch].
  /// [method] Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
  /// [queryString] Inspect the query string. This is the part of a URL that appears after a ? character, if any.
  /// [singleHeader] Inspect a single header. Provide the name of the header to inspect, for example, User-Agent or Referer. This setting isn't case sensitive.
  /// [uriPath] Inspect the request URI path. This is the part of a web request that identifies a resource, for example, /images/daily-ad.jpg.
  FieldToMatch({
    this.method,
    this.queryString,
    this.singleHeader,
    this.uriPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'queryString': ?queryString,
      'singleHeader': ?singleHeader == null ? null : singleHeader!.toMap(),
      'uriPath': ?uriPath,
    };
  }

  factory FieldToMatch.fromMap(Map<String, dynamic> map) {
    return FieldToMatch(
      method: map['method'] == null ? null : map['method'],
      queryString: map['queryString'] == null ? null : map['queryString'],
      singleHeader: map['singleHeader'] == null ? null : SingleHeaderModelProperties.fromMap((map['singleHeader'] as Map).cast<String, dynamic>()),
      uriPath: map['uriPath'] == null ? null : map['uriPath'],
    );
  }
}

