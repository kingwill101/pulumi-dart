// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'messaging_endpoint_response.dart';

/// The namespace messaging endpoints model.
class MessagingResponse {
  /// Dictionary of messaging endpoints.
  final pulumi.Input<Map<String, MessagingEndpointResponse>?>? endpoints;

  /// Creates a new [MessagingResponse].
  /// [endpoints] Dictionary of messaging endpoints.
  const MessagingResponse({
    this.endpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': ?pulumi.Input.mapOptionalInputValue<Map<String, MessagingEndpointResponse>, Map<String, Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeMapValues<MessagingEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MessagingResponse.fromMap(Map<String, dynamic> map) {
    return MessagingResponse(
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<MessagingEndpointResponse>(guardedValue, (value) => MessagingEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
