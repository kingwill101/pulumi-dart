// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Profile of the managed outbound IP resources of the managed cluster.
class ManagedClusterManagedOutboundIPProfileResponse {
  /// The desired number of outbound IPs created/managed by Azure. Allowed values must be in the range of 1 to 16 (inclusive). The default value is 1.
  final pulumi.Input<int>? count;

  /// Creates a new [ManagedClusterManagedOutboundIPProfileResponse].
  /// [count] The desired number of outbound IPs created/managed by Azure. Allowed values must be in the range of 1 to 16 (inclusive). The default value is 1.
  const ManagedClusterManagedOutboundIPProfileResponse({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
    };
  }

  factory ManagedClusterManagedOutboundIPProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterManagedOutboundIPProfileResponse(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

