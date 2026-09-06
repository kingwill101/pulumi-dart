// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection monitor endpoint location details only being used for 'AzureArcNetwork' type endpoints, which contains the region details.
class ConnectionMonitorEndpointLocationDetailsResponse {
  /// Region for connection monitor endpoint.
  final pulumi.Input<String?>? region;

  /// Creates a new [ConnectionMonitorEndpointLocationDetailsResponse].
  /// [region] Region for connection monitor endpoint.
  const ConnectionMonitorEndpointLocationDetailsResponse({
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory ConnectionMonitorEndpointLocationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorEndpointLocationDetailsResponse(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
