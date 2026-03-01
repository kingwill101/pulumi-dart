// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFlowSourceAddresses.
class GetFlowSourceAddressesResult {
  /// A source IP address or CIDR range
  final List<String>? sourceAddresses;

  /// Creates a new [GetFlowSourceAddressesResult].
  /// [sourceAddresses] A source IP address or CIDR range
  GetFlowSourceAddressesResult({
    this.sourceAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceAddresses': ?sourceAddresses,
    };
  }

  factory GetFlowSourceAddressesResult.fromMap(Map<String, dynamic> map) {
    return GetFlowSourceAddressesResult(
      sourceAddresses: map['sourceAddresses'] == null ? null : (map['sourceAddresses'] as List).cast<String>(),
    );
  }
}

