// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_zone_configuration_response_compute_v1.dart';

class DistributionPolicyResponseComputeV1 {
  /// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  final String targetShape;
  /// Zones where the regional managed instance group will create and manage its instances.
  final List<DistributionPolicyZoneConfigurationResponseComputeV1> zones;

  /// Creates a new [DistributionPolicyResponseComputeV1].
  /// [targetShape] The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  /// [zones] Zones where the regional managed instance group will create and manage its instances.
  DistributionPolicyResponseComputeV1({
    required this.targetShape,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetShape': targetShape,
      'zones': pulumi.Input.encodeList<DistributionPolicyZoneConfigurationResponseComputeV1, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory DistributionPolicyResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return DistributionPolicyResponseComputeV1(
      targetShape: map['targetShape'] as String,
      zones: pulumi.Input.decodeList<DistributionPolicyZoneConfigurationResponseComputeV1>(map['zones'], (value) => DistributionPolicyZoneConfigurationResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

