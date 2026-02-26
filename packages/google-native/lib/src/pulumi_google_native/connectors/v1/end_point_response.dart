// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'header_response4.dart';

/// Endpoint message includes details of the Destination endpoint.
class EndPointResponse {
  /// The URI of the Endpoint.
  final String endpointUri;

  /// List of Header to be added to the Endpoint.
  final List<HeaderResponse4> headers;

  EndPointResponse({
    required this.endpointUri,
    required this.headers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointUri'] = endpointUri;
    map['headers'] = Input.encodeList<HeaderResponse4, Map<String, dynamic>>(
        headers, (value) => value.toMap());
    return map;
  }

  factory EndPointResponse.fromMap(Map<String, dynamic> map) {
    return EndPointResponse(
      endpointUri: map['endpointUri'] as String,
      headers: Input.decodeList<HeaderResponse4>(
          map['headers'],
          (value) =>
              HeaderResponse4.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
