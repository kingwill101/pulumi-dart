// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_preference_response.dart';

/// ZoneAllocationPolicy for LaunchBulkInstancesOperation.
class ZoneAllocationPolicyResponse {
  /// Distribution strategy used for zone allocation policy.
  final pulumi.Input<String> distributionStrategy;
  /// Zone preferences, required when zone distribution strategy is Prioritized.
  final pulumi.Input<List<ZonePreferenceResponse>>? zonePreferences;

  /// Creates a new [ZoneAllocationPolicyResponse].
  /// [distributionStrategy] Distribution strategy used for zone allocation policy.
  /// [zonePreferences] Zone preferences, required when zone distribution strategy is Prioritized.
  const ZoneAllocationPolicyResponse({
    required this.distributionStrategy,
    this.zonePreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionStrategy': distributionStrategy,
      'zonePreferences': ?pulumi.Input.mapOptionalInputValue<List<ZonePreferenceResponse>, List<Map<String, dynamic>>>(zonePreferences, (value) => pulumi.Input.encodeList<ZonePreferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZoneAllocationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ZoneAllocationPolicyResponse(
      distributionStrategy: pulumi.Input.fromValue(map['distributionStrategy'] as String),
      zonePreferences: (() { final guardedValue = map['zonePreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZonePreferenceResponse>(guardedValue, (value) => ZonePreferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
