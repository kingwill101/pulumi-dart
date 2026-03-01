// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'messaging_endpoint_response.dart';

/// The namespace messaging endpoints model.
class MessagingResponse {
  /// Dictionary of messaging endpoints.
  final Map<String, MessagingEndpointResponse>? endpoints;

  /// Creates a new [MessagingResponse].
  /// [endpoints] Dictionary of messaging endpoints.
  MessagingResponse({
    this.endpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': ?endpoints == null ? null : pulumi.Input.encodeMapValues<MessagingEndpointResponse, Map<String, dynamic>>(endpoints!, (value) => value.toMap()),
    };
  }

  factory MessagingResponse.fromMap(Map<String, dynamic> map) {
    return MessagingResponse(
      endpoints: map['endpoints'] == null ? null : pulumi.Input.decodeMapValues<MessagingEndpointResponse>(map['endpoints'], (value) => MessagingEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

