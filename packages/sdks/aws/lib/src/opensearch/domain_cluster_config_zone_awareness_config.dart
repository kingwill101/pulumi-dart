// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainClusterConfigZoneAwarenessConfig {
  /// Number of Availability Zones for the domain to use with `zone_awareness_enabled`. Defaults to `2`. Valid values: `2` or `3`.
  final pulumi.Input<int>? availabilityZoneCount;

  /// Creates a new [DomainClusterConfigZoneAwarenessConfig].
  /// [availabilityZoneCount] Number of Availability Zones for the domain to use with `zone_awareness_enabled`. Defaults to `2`. Valid values: `2` or `3`.
  DomainClusterConfigZoneAwarenessConfig({this.availabilityZoneCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'availabilityZoneCount': ?availabilityZoneCount};
  }

  factory DomainClusterConfigZoneAwarenessConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainClusterConfigZoneAwarenessConfig(
      availabilityZoneCount: (() {
        final guardedValue = map['availabilityZoneCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
