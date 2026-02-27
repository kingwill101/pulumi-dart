// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'distribution_policy_target_shape3.dart';
import 'distribution_policy_zone_configuration3.dart';

class DistributionPolicy3 {
  /// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  final DistributionPolicyTargetShape3? targetShape;

  /// Zones where the regional managed instance group will create and manage its instances.
  final List<DistributionPolicyZoneConfiguration3>? zones;

  DistributionPolicy3({
    this.targetShape,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final targetShapeValue = targetShape;
    if (targetShapeValue != null) {
      map['targetShape'] = targetShapeValue.value;
    }
    final zonesValue = zones;
    if (zonesValue != null) {
      map['zones'] = Input.encodeList<DistributionPolicyZoneConfiguration3,
          Map<String, dynamic>>(zonesValue, (value) => value.toMap());
    }
    return map;
  }

  factory DistributionPolicy3.fromMap(Map<String, dynamic> map) {
    return DistributionPolicy3(
      targetShape: map['targetShape'] == null
          ? null
          : DistributionPolicyTargetShape3.fromValue(
              map['targetShape'] as String),
      zones: map['zones'] == null
          ? null
          : Input.decodeList<DistributionPolicyZoneConfiguration3>(
              map['zones'],
              (value) => DistributionPolicyZoneConfiguration3.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
