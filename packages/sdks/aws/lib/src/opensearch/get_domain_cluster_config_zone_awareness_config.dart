// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainClusterConfigZoneAwarenessConfig {
  /// Number of availability zones used.
  final pulumi.Input<int> availabilityZoneCount;

  /// Creates a new [GetDomainClusterConfigZoneAwarenessConfig].
  /// [availabilityZoneCount] Number of availability zones used.
  GetDomainClusterConfigZoneAwarenessConfig({
    required this.availabilityZoneCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneCount': availabilityZoneCount,
    };
  }

  factory GetDomainClusterConfigZoneAwarenessConfig.fromMap(Map<String, dynamic> map) {
    return GetDomainClusterConfigZoneAwarenessConfig(
      availabilityZoneCount: pulumi.Input.fromValue(map['availabilityZoneCount'] as int),
    );
  }
}

