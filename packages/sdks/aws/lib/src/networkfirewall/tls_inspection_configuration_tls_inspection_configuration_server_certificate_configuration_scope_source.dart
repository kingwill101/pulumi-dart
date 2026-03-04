// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource {
  /// An IP address or a block of IP addresses in CIDR notation. AWS Network Firewall supports all address ranges for IPv4.
  final pulumi.Input<String> addressDefinition;

  /// Creates a new [TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource].
  /// [addressDefinition] An IP address or a block of IP addresses in CIDR notation. AWS Network Firewall supports all address ranges for IPv4.
  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource({
    required this.addressDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'addressDefinition': addressDefinition};
  }

  factory TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSource(
      addressDefinition: pulumi.Input.fromValue(
        map['addressDefinition'] as String,
      ),
    );
  }
}
