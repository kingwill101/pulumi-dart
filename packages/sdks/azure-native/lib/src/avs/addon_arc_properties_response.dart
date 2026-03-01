// ignore_for_file: unused_element, unnecessary_cast


/// The properties of an Arc addon
class AddonArcPropertiesResponse {
  /// Addon type
  /// Expected value is 'Arc'.
  final String addonType;
  /// The state of the addon provisioning
  final String provisioningState;
  /// The VMware vCenter resource ID
  final String? vCenter;

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
      addonType: map['addonType'] as String,
      provisioningState: map['provisioningState'] as String,
      vCenter: map['vCenter'] == null ? null : map['vCenter'] as String,
    );
  }
}

