// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'distribution_policy_zone_configuration_response3.dart';

class DistributionPolicyResponse3 {
  /// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  final String targetShape;

  /// Zones where the regional managed instance group will create and manage its instances.
  final List<DistributionPolicyZoneConfigurationResponse3> zones;

  DistributionPolicyResponse3({
    required this.targetShape,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetShape'] = targetShape;
    map['zones'] = Input.encodeList<
        DistributionPolicyZoneConfigurationResponse3,
        Map<String, dynamic>>(zones, (value) => value.toMap());
    return map;
  }

  factory DistributionPolicyResponse3.fromMap(Map<String, dynamic> map) {
    return DistributionPolicyResponse3(
      targetShape: map['targetShape'] as String,
      zones: Input.decodeList<DistributionPolicyZoneConfigurationResponse3>(
          map['zones'],
          (value) => DistributionPolicyZoneConfigurationResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
