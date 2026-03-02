// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TargetEndpoint object that forms a traffic endpoint.
class TargetEndpointResponse {
  /// The Ports to be allowed for the FQDN.
  final pulumi.Input<List<int>>? ports;
  /// The FQDN for traffic endpoint.
  final pulumi.Input<String>? targetFqdn;

  /// Creates a new [TargetEndpointResponse].
  /// [ports] The Ports to be allowed for the FQDN.
  /// [targetFqdn] The FQDN for traffic endpoint.
  TargetEndpointResponse({
    this.ports,
    this.targetFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ports': ?ports,
      'targetFqdn': ?targetFqdn,
    };
  }

  factory TargetEndpointResponse.fromMap(Map<String, dynamic> map) {
    return TargetEndpointResponse(
      ports: map['ports'] == null ? null : ((map['ports']! as List).cast<int>()).input(),
      targetFqdn: map['targetFqdn'] == null ? null : (map['targetFqdn']! as String).input(),
    );
  }
}

