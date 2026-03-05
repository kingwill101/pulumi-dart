// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains custom Dns resolution configuration from customer.
class CustomDnsConfigPropertiesFormatResponse {
  /// Fqdn that resolves to private endpoint ip address.
  final pulumi.Input<String>? fqdn;
  /// A list of private ip addresses of the private endpoint.
  final pulumi.Input<List<String>>? ipAddresses;

  /// Creates a new [CustomDnsConfigPropertiesFormatResponse].
  /// [fqdn] Fqdn that resolves to private endpoint ip address.
  /// [ipAddresses] A list of private ip addresses of the private endpoint.
  CustomDnsConfigPropertiesFormatResponse({
    this.fqdn,
    this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'ipAddresses': ?ipAddresses,
    };
  }

  factory CustomDnsConfigPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return CustomDnsConfigPropertiesFormatResponse(
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

