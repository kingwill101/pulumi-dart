// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Public IP Address associated with azure firewall.
class AzureFirewallPublicIPAddress {
  /// Public IP Address value.
  final pulumi.Input<String>? address;

  /// Creates a new [AzureFirewallPublicIPAddress].
  /// [address] Public IP Address value.
  AzureFirewallPublicIPAddress({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory AzureFirewallPublicIPAddress.fromMap(Map<String, dynamic> map) {
    return AzureFirewallPublicIPAddress(
      address: map['address'] == null ? null : (map['address']! as String).input(),
    );
  }
}

