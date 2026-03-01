// ignore_for_file: unused_element, unnecessary_cast


/// Describes a virtual machines network configuration's DNS settings.
class VirtualMachinePublicIPAddressDnsSettingsConfiguration {
  /// The Domain name label prefix of the PublicIPAddress resources that will be created. The generated name label is the concatenation of the domain name label and vm network profile unique ID.
  final String domainNameLabel;
  /// The Domain name label scope of the PublicIPAddress resources that will be created. The generated name label is the concatenation of the hashed domain name label with policy according to the domain name label scope and vm network profile unique ID.
  final String? domainNameLabelScope;

  /// Creates a new [VirtualMachinePublicIPAddressDnsSettingsConfiguration].
  /// [domainNameLabel] The Domain name label prefix of the PublicIPAddress resources that will be created. The generated name label is the concatenation of the domain name label and vm network profile unique ID.
  /// [domainNameLabelScope] The Domain name label scope of the PublicIPAddress resources that will be created. The generated name label is the concatenation of the hashed domain name label with policy according to the domain name label scope and vm network profile unique ID.
  VirtualMachinePublicIPAddressDnsSettingsConfiguration({
    required this.domainNameLabel,
    this.domainNameLabelScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNameLabel': domainNameLabel,
      'domainNameLabelScope': ?domainNameLabelScope,
    };
  }

  factory VirtualMachinePublicIPAddressDnsSettingsConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePublicIPAddressDnsSettingsConfiguration(
      domainNameLabel: map['domainNameLabel'] as String,
      domainNameLabelScope: map['domainNameLabelScope'] == null ? null : map['domainNameLabelScope'] as String,
    );
  }
}

