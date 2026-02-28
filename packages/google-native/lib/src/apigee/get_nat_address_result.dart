// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNatAddress.
class GetNatAddressResult {
  /// The static IPV4 address.
  final String ipAddress;
  /// Resource ID of the NAT address.
  final String name;
  /// State of the nat address.
  final String state;

  /// Creates a new [GetNatAddressResult].
  /// [ipAddress] The static IPV4 address.
  /// [name] Resource ID of the NAT address.
  /// [state] State of the nat address.
  GetNatAddressResult({
    required this.ipAddress,
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'name': name,
      'state': state,
    };
  }

  factory GetNatAddressResult.fromMap(Map<String, dynamic> map) {
    return GetNatAddressResult(
      ipAddress: map['ipAddress'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
    );
  }
}

