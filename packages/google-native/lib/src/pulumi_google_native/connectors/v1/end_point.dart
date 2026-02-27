// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'header4.dart';

/// Endpoint message includes details of the Destination endpoint.
class EndPoint {
  /// The URI of the Endpoint.
  final String? endpointUri;

  /// List of Header to be added to the Endpoint.
  final List<Header4>? headers;

  EndPoint({
    this.endpointUri,
    this.headers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointUriValue = endpointUri;
    if (endpointUriValue != null) {
      map['endpointUri'] = endpointUriValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = Input.encodeList<Header4, Map<String, dynamic>>(
          headersValue, (value) => value.toMap());
    }
    return map;
  }

  factory EndPoint.fromMap(Map<String, dynamic> map) {
    return EndPoint(
      endpointUri:
          map['endpointUri'] == null ? null : map['endpointUri'] as String,
      headers: map['headers'] == null
          ? null
          : Input.decodeList<Header4>(
              map['headers'],
              (value) =>
                  Header4.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
