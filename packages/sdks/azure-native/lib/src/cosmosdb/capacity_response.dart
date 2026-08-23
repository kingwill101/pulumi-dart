// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The object that represents all properties related to capacity enforcement on an account.
class CapacityResponse {
  /// The total throughput limit imposed on the account. A totalThroughputLimit of 2000 imposes a strict limit of max throughput that can be provisioned on that account to be 2000. A totalThroughputLimit of -1 indicates no limits on provisioning of throughput.
  final pulumi.Input<int>? totalThroughputLimit;

  /// Creates a new [CapacityResponse].
  /// [totalThroughputLimit] The total throughput limit imposed on the account. A totalThroughputLimit of 2000 imposes a strict limit of max throughput that can be provisioned on that account to be 2000. A totalThroughputLimit of -1 indicates no limits on provisioning of throughput.
  const CapacityResponse({
    this.totalThroughputLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalThroughputLimit': ?totalThroughputLimit,
    };
  }

  factory CapacityResponse.fromMap(Map<String, dynamic> map) {
    return CapacityResponse(
      totalThroughputLimit: (() { final guardedValue = map['totalThroughputLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
