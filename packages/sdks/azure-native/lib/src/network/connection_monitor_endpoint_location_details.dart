// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection monitor endpoint location details only being used for 'AzureArcNetwork' type endpoints, which contains the region details.
class ConnectionMonitorEndpointLocationDetails {
  /// Region for connection monitor endpoint.
  final pulumi.Input<String>? region;

  /// Creates a new [ConnectionMonitorEndpointLocationDetails].
  /// [region] Region for connection monitor endpoint.
  ConnectionMonitorEndpointLocationDetails({
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory ConnectionMonitorEndpointLocationDetails.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorEndpointLocationDetails(
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

