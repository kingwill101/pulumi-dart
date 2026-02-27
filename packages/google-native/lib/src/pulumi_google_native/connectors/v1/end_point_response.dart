// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_response_connectors_v1.dart';

/// Endpoint message includes details of the Destination endpoint.
class EndPointResponse {
  /// The URI of the Endpoint.
  final String endpointUri;

  /// List of Header to be added to the Endpoint.
  final List<HeaderResponseConnectorsV1> headers;

  EndPointResponse({
    required this.endpointUri,
    required this.headers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointUri'] = endpointUri;
    map['headers'] = pulumi.Input.encodeList<HeaderResponseConnectorsV1,
        Map<String, dynamic>>(headers, (value) => value.toMap());
    return map;
  }

  factory EndPointResponse.fromMap(Map<String, dynamic> map) {
    return EndPointResponse(
      endpointUri: map['endpointUri'] as String,
      headers: pulumi.Input.decodeList<HeaderResponseConnectorsV1>(
          map['headers'],
          (value) => HeaderResponseConnectorsV1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
