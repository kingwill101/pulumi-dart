// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TargetEndpoint object that forms a traffic endpoint.
class TargetEndpoint {
  /// The Ports to be allowed for the FQDN.
  final pulumi.Input<List<int>>? ports;
  /// The FQDN for traffic endpoint.
  final pulumi.Input<String>? targetFqdn;

  /// Creates a new [TargetEndpoint].
  /// [ports] The Ports to be allowed for the FQDN.
  /// [targetFqdn] The FQDN for traffic endpoint.
  TargetEndpoint({
    this.ports,
    this.targetFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ports': ?ports,
      'targetFqdn': ?targetFqdn,
    };
  }

  factory TargetEndpoint.fromMap(Map<String, dynamic> map) {
    return TargetEndpoint(
      ports: map['ports'] == null ? null : ((map['ports']! as List).cast<int>()).input(),
      targetFqdn: map['targetFqdn'] == null ? null : (map['targetFqdn']! as String).input(),
    );
  }
}

