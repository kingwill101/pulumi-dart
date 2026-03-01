// ignore_for_file: unused_element, unnecessary_cast


/// Describes a virtual machines scale sets network configuration's DNS settings.
class VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsResponse {
  /// The Domain name label.The concatenation of the domain name label and vm index will be the domain name labels of the PublicIPAddress resources that will be created
  final String domainNameLabel;
  /// The Domain name label scope.The concatenation of the hashed domain name label that generated according to the policy from domain name label scope and vm index will be the domain name labels of the PublicIPAddress resources that will be created
  final String? domainNameLabelScope;

  /// Creates a new [VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsResponse].
  /// [domainNameLabel] The Domain name label.The concatenation of the domain name label and vm index will be the domain name labels of the PublicIPAddress resources that will be created
  /// [domainNameLabelScope] The Domain name label scope.The concatenation of the hashed domain name label that generated according to the policy from domain name label scope and vm index will be the domain name labels of the PublicIPAddress resources that will be created
  VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsResponse({
    required this.domainNameLabel,
    this.domainNameLabelScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNameLabel': domainNameLabel,
      'domainNameLabelScope': ?domainNameLabelScope,
    };
  }

  factory VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettingsResponse(
      domainNameLabel: map['domainNameLabel'] as String,
      domainNameLabelScope: map['domainNameLabelScope'] == null ? null : map['domainNameLabelScope'] as String,
    );
  }
}

