// ignore_for_file: unused_element, unnecessary_cast


/// Public IP Address associated with azure firewall.
class AzureFirewallPublicIPAddressResponse {
  /// Public IP Address value.
  final String? address;

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
      address: map['address'] == null ? null : map['address'] as String,
    );
  }
}

