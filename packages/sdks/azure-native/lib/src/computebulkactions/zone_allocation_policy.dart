// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_preference.dart';

/// ZoneAllocationPolicy for LaunchBulkInstancesOperation.
class ZoneAllocationPolicy {
  /// Distribution strategy used for zone allocation policy.
  final pulumi.Input<dynamic> distributionStrategy;
  /// Zone preferences, required when zone distribution strategy is Prioritized.
  final pulumi.Input<List<ZonePreference>?>? zonePreferences;

  /// Creates a new [ZoneAllocationPolicy].
  /// [distributionStrategy] Distribution strategy used for zone allocation policy.
  /// [zonePreferences] Zone preferences, required when zone distribution strategy is Prioritized.
  const ZoneAllocationPolicy({
    required this.distributionStrategy,
    this.zonePreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionStrategy': distributionStrategy,
      'zonePreferences': ?pulumi.Input.mapOptionalInputValue<List<ZonePreference>, List<Map<String, dynamic>>>(zonePreferences, (value) => pulumi.Input.encodeList<ZonePreference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZoneAllocationPolicy.fromMap(Map<String, dynamic> map) {
    return ZoneAllocationPolicy(
      distributionStrategy: pulumi.Input.fromValue(map['distributionStrategy']),
      zonePreferences: (() { final guardedValue = map['zonePreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZonePreference>(guardedValue, (value) => ZonePreference.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
