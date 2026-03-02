// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Public IP Address associated with azure firewall.
class AzureFirewallPublicIPAddressResponse {
  /// Public IP Address value.
  final pulumi.Input<String>? address;

  /// Creates a new [AzureFirewallPublicIPAddressResponse].
  /// [address] Public IP Address value.
  AzureFirewallPublicIPAddressResponse({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory AzureFirewallPublicIPAddressResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirewallPublicIPAddressResponse(
      address: map['address'] == null ? null : (map['address']! as String).input(),
    );
  }
}

