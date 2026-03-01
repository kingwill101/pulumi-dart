// ignore_for_file: unused_element, unnecessary_cast


/// Address information for domain registration.
class Address {
  /// First line of an Address.
  final String address1;
  /// The second line of the Address. Optional.
  final String? address2;
  /// The city for the address.
  final String city;
  /// The country for the address.
  final String country;
  /// The postal code for the address.
  final String postalCode;
  /// The state or province for the address.
  final String state;

  /// Creates a new [Address].
  /// [address1] First line of an Address.
  /// [address2] The second line of the Address. Optional.
  /// [city] The city for the address.
  /// [country] The country for the address.
  /// [postalCode] The postal code for the address.
  /// [state] The state or province for the address.
  Address({
    required this.address1,
    this.address2,
    required this.city,
    required this.country,
    required this.postalCode,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address1': address1,
      'address2': ?address2,
      'city': city,
      'country': country,
      'postalCode': postalCode,
      'state': state,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      address1: map['address1'] as String,
      address2: map['address2'] == null ? null : map['address2'] as String,
      city: map['city'] as String,
      country: map['country'] as String,
      postalCode: map['postalCode'] as String,
      state: map['state'] as String,
    );
  }
}

