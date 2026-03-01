// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the return address information for the job.
class ReturnAddressResponse {
  /// The city name to use when returning the drives.
  final String city;
  /// The country or region to use when returning the drives.
  final String countryOrRegion;
  /// Email address of the recipient of the returned drives.
  final String email;
  /// Phone number of the recipient of the returned drives.
  final String phone;
  /// The postal code to use when returning the drives.
  final String postalCode;
  /// The name of the recipient who will receive the hard drives when they are returned.
  final String recipientName;
  /// The state or province to use when returning the drives.
  final String? stateOrProvince;
  /// The first line of the street address to use when returning the drives.
  final String streetAddress1;
  /// The second line of the street address to use when returning the drives.
  final String? streetAddress2;

  /// Creates a new [ReturnAddressResponse].
  /// [city] The city name to use when returning the drives.
  /// [countryOrRegion] The country or region to use when returning the drives.
  /// [email] Email address of the recipient of the returned drives.
  /// [phone] Phone number of the recipient of the returned drives.
  /// [postalCode] The postal code to use when returning the drives.
  /// [recipientName] The name of the recipient who will receive the hard drives when they are returned.
  /// [stateOrProvince] The state or province to use when returning the drives.
  /// [streetAddress1] The first line of the street address to use when returning the drives.
  /// [streetAddress2] The second line of the street address to use when returning the drives.
  ReturnAddressResponse({
    required this.city,
    required this.countryOrRegion,
    required this.email,
    required this.phone,
    required this.postalCode,
    required this.recipientName,
    this.stateOrProvince,
    required this.streetAddress1,
    this.streetAddress2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': city,
      'countryOrRegion': countryOrRegion,
      'email': email,
      'phone': phone,
      'postalCode': postalCode,
      'recipientName': recipientName,
      'stateOrProvince': ?stateOrProvince,
      'streetAddress1': streetAddress1,
      'streetAddress2': ?streetAddress2,
    };
  }

  factory ReturnAddressResponse.fromMap(Map<String, dynamic> map) {
    return ReturnAddressResponse(
      city: map['city'] as String,
      countryOrRegion: map['countryOrRegion'] as String,
      email: map['email'] as String,
      phone: map['phone'] as String,
      postalCode: map['postalCode'] as String,
      recipientName: map['recipientName'] as String,
      stateOrProvince: map['stateOrProvince'] == null ? null : map['stateOrProvince'] as String,
      streetAddress1: map['streetAddress1'] as String,
      streetAddress2: map['streetAddress2'] == null ? null : map['streetAddress2'] as String,
    );
  }
}

