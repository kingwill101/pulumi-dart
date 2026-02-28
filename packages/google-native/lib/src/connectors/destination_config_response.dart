// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_response.dart';

/// Define the Connectors target endpoint.
class DestinationConfigResponse {
  /// The destinations for the key.
  final List<DestinationResponse> destinations;

  /// The key is the destination identifier that is supported by the Connector.
  final String key;

  /// Creates a new [DestinationConfigResponse].
  /// [destinations] The destinations for the key.
  /// [key] The key is the destination identifier that is supported by the Connector.
  DestinationConfigResponse({
    required this.destinations,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinations'] =
        pulumi.Input.encodeList<DestinationResponse, Map<String, dynamic>>(
            destinations, (value) => value.toMap());
    map['key'] = key;
    return map;
  }

  factory DestinationConfigResponse.fromMap(Map<String, dynamic> map) {
    return DestinationConfigResponse(
      destinations: pulumi.Input.decodeList<DestinationResponse>(
          map['destinations'],
          (value) => DestinationResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      key: map['key'] as String,
    );
  }
}
