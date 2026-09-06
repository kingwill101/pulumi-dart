// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Profile of the managed outbound IP resources of the managed cluster.
class ManagedClusterManagedOutboundIPProfile {
  /// The desired number of outbound IPs created/managed by Azure. Allowed values must be in the range of 1 to 16 (inclusive). The default value is 1.
  final pulumi.Input<int?>? count;

  /// Creates a new [ManagedClusterManagedOutboundIPProfile].
  /// [count] The desired number of outbound IPs created/managed by Azure. Allowed values must be in the range of 1 to 16 (inclusive). The default value is 1.
  ManagedClusterManagedOutboundIPProfile({
    pulumi.Input<int?>? count,
  }) : count = count ?? pulumi.Input.fromValue(1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
    };
  }

  factory ManagedClusterManagedOutboundIPProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterManagedOutboundIPProfile(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
