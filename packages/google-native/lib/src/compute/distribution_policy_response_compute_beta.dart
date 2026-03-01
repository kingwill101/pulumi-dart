// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_zone_configuration_response_compute_beta.dart';

class DistributionPolicyResponseComputeBeta {
  /// The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  final String targetShape;

  /// Zones where the regional managed instance group will create and manage its instances.
  final List<DistributionPolicyZoneConfigurationResponseComputeBeta> zones;

  /// Creates a new [DistributionPolicyResponseComputeBeta].
  /// [targetShape] The distribution shape to which the group converges either proactively or on resize events (depending on the value set in updatePolicy.instanceRedistributionType).
  /// [zones] Zones where the regional managed instance group will create and manage its instances.
  DistributionPolicyResponseComputeBeta({
    required this.targetShape,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetShape': targetShape,
      'zones':
          pulumi.Input.encodeList<
            DistributionPolicyZoneConfigurationResponseComputeBeta,
            Map<String, dynamic>
          >(zones, (value) => value.toMap()),
    };
  }

  factory DistributionPolicyResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return DistributionPolicyResponseComputeBeta(
      targetShape: map['targetShape'] as String,
      zones:
          pulumi.Input.decodeList<
            DistributionPolicyZoneConfigurationResponseComputeBeta
          >(
            map['zones'],
            (value) =>
                DistributionPolicyZoneConfigurationResponseComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
