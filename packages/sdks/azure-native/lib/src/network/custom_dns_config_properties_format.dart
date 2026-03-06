// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains custom Dns resolution configuration from customer.
class CustomDnsConfigPropertiesFormat {
  /// Fqdn that resolves to private endpoint ip address.
  final pulumi.Input<String>? fqdn;
  /// A list of private ip addresses of the private endpoint.
  final pulumi.Input<List<String>>? ipAddresses;

  /// Creates a new [CustomDnsConfigPropertiesFormat].
  /// [fqdn] Fqdn that resolves to private endpoint ip address.
  /// [ipAddresses] A list of private ip addresses of the private endpoint.
  const CustomDnsConfigPropertiesFormat({
    this.fqdn,
    this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'ipAddresses': ?ipAddresses,
    };
  }

  factory CustomDnsConfigPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return CustomDnsConfigPropertiesFormat(
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

