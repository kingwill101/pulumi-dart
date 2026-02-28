// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_zone_configuration_response.dart';

class DistributionPolicyResponse {
  /// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  final String targetShape;

  /// Zones where the regional managed instance group will create and manage its instances.
  final List<DistributionPolicyZoneConfigurationResponse> zones;

  /// Creates a new [DistributionPolicyResponse].
  /// [targetShape] The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  /// [zones] Zones where the regional managed instance group will create and manage its instances.
  DistributionPolicyResponse({
    required this.targetShape,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetShape'] = targetShape;
    map['zones'] = pulumi.Input.encodeList<
        DistributionPolicyZoneConfigurationResponse,
        Map<String, dynamic>>(zones, (value) => value.toMap());
    return map;
  }

  factory DistributionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return DistributionPolicyResponse(
      targetShape: map['targetShape'] as String,
      zones:
          pulumi.Input.decodeList<DistributionPolicyZoneConfigurationResponse>(
              map['zones'],
              (value) => DistributionPolicyZoneConfigurationResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
