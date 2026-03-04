// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination {
  /// An IP address or a block of IP addresses in CIDR notation. AWS Network Firewall supports all address ranges for IPv4.
  final pulumi.Input<String> addressDefinition;

  /// Creates a new [TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination].
  /// [addressDefinition] An IP address or a block of IP addresses in CIDR notation. AWS Network Firewall supports all address ranges for IPv4.
  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination({
    required this.addressDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'addressDefinition': addressDefinition};
  }

  factory TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination(
      addressDefinition: pulumi.Input.fromValue(
        map['addressDefinition'] as String,
      ),
    );
  }
}
