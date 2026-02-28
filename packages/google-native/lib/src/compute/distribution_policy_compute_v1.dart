// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_target_shape_compute_v1.dart';
import 'distribution_policy_zone_configuration_compute_v1.dart';

class DistributionPolicyComputeV1 {
  /// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  final DistributionPolicyTargetShapeComputeV1? targetShape;
  /// Zones where the regional managed instance group will create and manage its instances.
  final List<DistributionPolicyZoneConfigurationComputeV1>? zones;

  /// Creates a new [DistributionPolicyComputeV1].
  /// [targetShape] The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  /// [zones] Zones where the regional managed instance group will create and manage its instances.
  DistributionPolicyComputeV1({
    this.targetShape,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetShape': ?targetShape == null ? null : targetShape!.value,
      'zones': ?zones == null ? null : pulumi.Input.encodeList<DistributionPolicyZoneConfigurationComputeV1, Map<String, dynamic>>(zones!, (value) => value.toMap()),
    };
  }

  factory DistributionPolicyComputeV1.fromMap(Map<String, dynamic> map) {
    return DistributionPolicyComputeV1(
      targetShape: map['targetShape'] == null ? null : DistributionPolicyTargetShapeComputeV1.fromValue(map['targetShape'] as String),
      zones: map['zones'] == null ? null : pulumi.Input.decodeList<DistributionPolicyZoneConfigurationComputeV1>(map['zones'], (value) => DistributionPolicyZoneConfigurationComputeV1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

