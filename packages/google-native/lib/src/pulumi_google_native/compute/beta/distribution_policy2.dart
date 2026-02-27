// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'distribution_policy_target_shape2.dart';
import 'distribution_policy_zone_configuration2.dart';

class DistributionPolicy2 {
  /// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  final DistributionPolicyTargetShape2? targetShape;

  /// Zones where the regional managed instance group will create and manage its instances.
  final List<DistributionPolicyZoneConfiguration2>? zones;

  DistributionPolicy2({
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
      map['zones'] = Input.encodeList<DistributionPolicyZoneConfiguration2,
          Map<String, dynamic>>(zonesValue, (value) => value.toMap());
    }
    return map;
  }

  factory DistributionPolicy2.fromMap(Map<String, dynamic> map) {
    return DistributionPolicy2(
      targetShape: map['targetShape'] == null
          ? null
          : DistributionPolicyTargetShape2.fromValue(
              map['targetShape'] as String),
      zones: map['zones'] == null
          ? null
          : Input.decodeList<DistributionPolicyZoneConfiguration2>(
              map['zones'],
              (value) => DistributionPolicyZoneConfiguration2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
