// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Zone preferences for LaunchBulkInstancesOperation zone allocation policy.
class ZonePreferenceResponse {
  /// The rank of the zone. This is used with 'Prioritized' ZoneDistributionStrategy.
  /// The lower the number, the higher the priority, starting with 0.
  /// 0 is the highest rank. If not specified, defaults to lowest rank.
  final pulumi.Input<int>? rank;
  /// Name of the zone.
  final pulumi.Input<String> zone;

  /// Creates a new [ZonePreferenceResponse].
  /// [rank] The rank of the zone. This is used with 'Prioritized' ZoneDistributionStrategy.
  /// [zone] Name of the zone.
  const ZonePreferenceResponse({
    this.rank,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rank': ?rank,
      'zone': zone,
    };
  }

  factory ZonePreferenceResponse.fromMap(Map<String, dynamic> map) {
    return ZonePreferenceResponse(
      rank: (() { final guardedValue = map['rank']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
