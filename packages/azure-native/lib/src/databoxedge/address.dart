// ignore_for_file: unused_element, unnecessary_cast


/// The shipping address of the customer.
class Address {
  /// The address line1.
  final String? addressLine1;
  /// The address line2.
  final String? addressLine2;
  /// The address line3.
  final String? addressLine3;
  /// The city name.
  final String? city;
  /// The country name.
  final String country;
  /// The postal code.
  final String? postalCode;
  /// The state name.
  final String? state;

  /// Creates a new [Address].
  /// [addressLine1] The address line1.
  /// [addressLine2] The address line2.
  /// [addressLine3] The address line3.
  /// [city] The city name.
  /// [country] The country name.
  /// [postalCode] The postal code.
  /// [state] The state name.
  Address({
    this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.city,
    required this.country,
    this.postalCode,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressLine1': ?addressLine1,
      'addressLine2': ?addressLine2,
      'addressLine3': ?addressLine3,
      'city': ?city,
      'country': country,
      'postalCode': ?postalCode,
      'state': ?state,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      addressLine1: map['addressLine1'] == null ? null : map['addressLine1'] as String,
      addressLine2: map['addressLine2'] == null ? null : map['addressLine2'] as String,
      addressLine3: map['addressLine3'] == null ? null : map['addressLine3'] as String,
      city: map['city'] == null ? null : map['city'] as String,
      country: map['country'] as String,
      postalCode: map['postalCode'] == null ? null : map['postalCode'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

