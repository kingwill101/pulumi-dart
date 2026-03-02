// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a vSphere Replication (VR) addon
class AddonVrPropertiesResponse {
  /// Addon type
  /// Expected value is 'VR'.
  final pulumi.Input<String> addonType;
  /// The state of the addon provisioning
  final pulumi.Input<String> provisioningState;
  /// The vSphere Replication Server (VRS) count
  final pulumi.Input<int> vrsCount;

  /// Creates a new [AddonVrPropertiesResponse].
  /// [addonType] Addon type
  /// [provisioningState] The state of the addon provisioning
  /// [vrsCount] The vSphere Replication Server (VRS) count
  AddonVrPropertiesResponse({
    required this.addonType,
    required this.provisioningState,
    required this.vrsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonType': addonType,
      'provisioningState': provisioningState,
      'vrsCount': vrsCount,
    };
  }

  factory AddonVrPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AddonVrPropertiesResponse(
      addonType: (map['addonType'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      vrsCount: (map['vrsCount'] as int).input(),
    );
  }
}

