// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a virtual machines scale sets network configuration's DNS settings.
class VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings {
  /// The Domain name label.The concatenation of the domain name label and vm index will be the domain name labels of the PublicIPAddress resources that will be created
  final pulumi.Input<String> domainNameLabel;
  /// The Domain name label scope.The concatenation of the hashed domain name label that generated according to the policy from domain name label scope and vm index will be the domain name labels of the PublicIPAddress resources that will be created
  final pulumi.Input<String>? domainNameLabelScope;

  /// Creates a new [VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings].
  /// [domainNameLabel] The Domain name label.The concatenation of the domain name label and vm index will be the domain name labels of the PublicIPAddress resources that will be created
  /// [domainNameLabelScope] The Domain name label scope.The concatenation of the hashed domain name label that generated according to the policy from domain name label scope and vm index will be the domain name labels of the PublicIPAddress resources that will be created
  VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings({
    required this.domainNameLabel,
    this.domainNameLabelScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNameLabel': domainNameLabel,
      'domainNameLabelScope': ?domainNameLabelScope,
    };
  }

  factory VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings(
      domainNameLabel: pulumi.Input.fromValue(map['domainNameLabel'] as String),
      domainNameLabelScope: (() { final guardedValue = map['domainNameLabelScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

