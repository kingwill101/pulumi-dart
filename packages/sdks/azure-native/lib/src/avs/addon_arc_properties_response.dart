// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of an Arc addon
class AddonArcPropertiesResponse {
  /// Addon type
  /// Expected value is 'Arc'.
  final pulumi.Input<String> addonType;
  /// The state of the addon provisioning
  final pulumi.Input<String> provisioningState;
  /// The VMware vCenter resource ID
  final pulumi.Input<String>? vCenter;

  /// Creates a new [AddonArcPropertiesResponse].
  /// [addonType] Addon type
  /// [provisioningState] The state of the addon provisioning
  /// [vCenter] The VMware vCenter resource ID
  AddonArcPropertiesResponse({
    required this.addonType,
    required this.provisioningState,
    this.vCenter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonType': addonType,
      'provisioningState': provisioningState,
      'vCenter': ?vCenter,
    };
  }

  factory AddonArcPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AddonArcPropertiesResponse(
      addonType: (map['addonType'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      vCenter: map['vCenter'] == null ? null : (map['vCenter']! as String).input(),
    );
  }
}

