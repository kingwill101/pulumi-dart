// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPrimaryContact.
class GetPrimaryContactResult {
  final String accountId;

  /// The first line of the primary contact address.
  final String addressLine1;

  /// The second line of the primary contact address.
  final String addressLine2;

  /// The third line of the primary contact address.
  final String addressLine3;

  /// The city of the primary contact address.
  final String city;

  /// The name of the company associated with the primary contact information.
  final String companyName;

  /// The ISO-3166 two-letter country code for the primary contact address.
  final String countryCode;

  /// The district or county of the primary contact address.
  final String districtOrCounty;

  /// The full name of the primary contact address.
  final String fullName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The phone number of the primary contact information.
  final String phoneNumber;

  /// The postal code of the primary contact address.
  final String postalCode;

  /// The state or region of the primary contact address.
  final String stateOrRegion;

  /// The URL of the website associated with the primary contact information.
  final String websiteUrl;

  GetPrimaryContactResult({
    required this.accountId,
    required this.addressLine1,
    required this.addressLine2,
    required this.addressLine3,
    required this.city,
    required this.companyName,
    required this.countryCode,
    required this.districtOrCounty,
    required this.fullName,
    required this.id,
    required this.phoneNumber,
    required this.postalCode,
    required this.stateOrRegion,
    required this.websiteUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['addressLine1'] = addressLine1;
    map['addressLine2'] = addressLine2;
    map['addressLine3'] = addressLine3;
    map['city'] = city;
    map['companyName'] = companyName;
    map['countryCode'] = countryCode;
    map['districtOrCounty'] = districtOrCounty;
    map['fullName'] = fullName;
    map['id'] = id;
    map['phoneNumber'] = phoneNumber;
    map['postalCode'] = postalCode;
    map['stateOrRegion'] = stateOrRegion;
    map['websiteUrl'] = websiteUrl;
    return map;
  }

  factory GetPrimaryContactResult.fromMap(Map<String, dynamic> map) {
    return GetPrimaryContactResult(
      accountId: map['accountId'] as String,
      addressLine1: map['addressLine1'] as String,
      addressLine2: map['addressLine2'] as String,
      addressLine3: map['addressLine3'] as String,
      city: map['city'] as String,
      companyName: map['companyName'] as String,
      countryCode: map['countryCode'] as String,
      districtOrCounty: map['districtOrCounty'] as String,
      fullName: map['fullName'] as String,
      id: map['id'] as String,
      phoneNumber: map['phoneNumber'] as String,
      postalCode: map['postalCode'] as String,
      stateOrRegion: map['stateOrRegion'] as String,
      websiteUrl: map['websiteUrl'] as String,
    );
  }
}
