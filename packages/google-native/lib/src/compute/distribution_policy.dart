// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_target_shape.dart';
import 'distribution_policy_zone_configuration.dart';

class DistributionPolicy {
  /// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  final DistributionPolicyTargetShape? targetShape;

  /// Zones where the regional managed instance group will create and manage its instances.
  final List<DistributionPolicyZoneConfiguration>? zones;

  /// Creates a new [DistributionPolicy].
  /// [targetShape] The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  /// [zones] Zones where the regional managed instance group will create and manage its instances.
  DistributionPolicy({
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
      map['zones'] = pulumi.Input.encodeList<
          DistributionPolicyZoneConfiguration,
          Map<String, dynamic>>(zonesValue, (value) => value.toMap());
    }
    return map;
  }

  factory DistributionPolicy.fromMap(Map<String, dynamic> map) {
    return DistributionPolicy(
      targetShape: map['targetShape'] == null
          ? null
          : DistributionPolicyTargetShape.fromValue(
              map['targetShape'] as String),
      zones: map['zones'] == null
          ? null
          : pulumi.Input.decodeList<DistributionPolicyZoneConfiguration>(
              map['zones'],
              (value) => DistributionPolicyZoneConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
