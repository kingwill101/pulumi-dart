// ignore_for_file: unused_element, unnecessary_cast


/// Public IP Address associated with azure firewall.
class AzureFirewallPublicIPAddress {
  /// Public IP Address value.
  final String? address;

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
      address: map['address'] == null ? null : map['address'] as String,
    );
  }
}

