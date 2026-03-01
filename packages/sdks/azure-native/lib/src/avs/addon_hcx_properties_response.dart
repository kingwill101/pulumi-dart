// ignore_for_file: unused_element, unnecessary_cast


/// The properties of an HCX addon
class AddonHcxPropertiesResponse {
  /// Addon type
  /// Expected value is 'HCX'.
  final String addonType;
  /// The HCX offer, example VMware MaaS Cloud Provider (Enterprise)
  final String offer;
  /// The state of the addon provisioning
  final String provisioningState;

  /// Creates a new [AddonHcxPropertiesResponse].
  /// [addonType] Addon type
  /// [offer] The HCX offer, example VMware MaaS Cloud Provider (Enterprise)
  /// [provisioningState] The state of the addon provisioning
  AddonHcxPropertiesResponse({
    required this.addonType,
    required this.offer,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonType': addonType,
      'offer': offer,
      'provisioningState': provisioningState,
    };
  }

  factory AddonHcxPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AddonHcxPropertiesResponse(
      addonType: map['addonType'] as String,
      offer: map['offer'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

