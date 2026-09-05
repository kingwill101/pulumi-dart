// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPrimaryContact.
class GetPrimaryContactResult {
  final String? accountId;
  /// The first line of the primary contact address.
  final String? addressLine1;
  /// The second line of the primary contact address.
  final String? addressLine2;
  /// The third line of the primary contact address.
  final String? addressLine3;
  /// The city of the primary contact address.
  final String? city;
  /// The name of the company associated with the primary contact information.
  final String? companyName;
  /// The ISO-3166 two-letter country code for the primary contact address.
  final String? countryCode;
  /// The district or county of the primary contact address.
  final String? districtOrCounty;
  /// The full name of the primary contact address.
  final String? fullName;
  /// The phone number of the primary contact information.
  final String? phoneNumber;
  /// The postal code of the primary contact address.
  final String? postalCode;
  /// The state or region of the primary contact address.
  final String? stateOrRegion;
  /// The URL of the website associated with the primary contact information.
  final String? websiteUrl;

  /// Creates a new [GetPrimaryContactResult].
  /// [accountId] Optional.
  /// [addressLine1] The first line of the primary contact address.
  /// [addressLine2] The second line of the primary contact address.
  /// [addressLine3] The third line of the primary contact address.
  /// [city] The city of the primary contact address.
  /// [companyName] The name of the company associated with the primary contact information.
  /// [countryCode] The ISO-3166 two-letter country code for the primary contact address.
  /// [districtOrCounty] The district or county of the primary contact address.
  /// [fullName] The full name of the primary contact address.
  /// [phoneNumber] The phone number of the primary contact information.
  /// [postalCode] The postal code of the primary contact address.
  /// [stateOrRegion] The state or region of the primary contact address.
  /// [websiteUrl] The URL of the website associated with the primary contact information.
  const GetPrimaryContactResult({
    this.accountId,
    this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.city,
    this.companyName,
    this.countryCode,
    this.districtOrCounty,
    this.fullName,
    this.phoneNumber,
    this.postalCode,
    this.stateOrRegion,
    this.websiteUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'addressLine1': ?addressLine1,
      'addressLine2': ?addressLine2,
      'addressLine3': ?addressLine3,
      'city': ?city,
      'companyName': ?companyName,
      'countryCode': ?countryCode,
      'districtOrCounty': ?districtOrCounty,
      'fullName': ?fullName,
      'phoneNumber': ?phoneNumber,
      'postalCode': ?postalCode,
      'stateOrRegion': ?stateOrRegion,
      'websiteUrl': ?websiteUrl,
    };
  }

  factory GetPrimaryContactResult.fromMap(Map<String, dynamic> map) {
    return GetPrimaryContactResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      addressLine1: (() { final guardedValue = map['addressLine1']; if (guardedValue == null) return null; return guardedValue as String; })(),
      addressLine2: (() { final guardedValue = map['addressLine2']; if (guardedValue == null) return null; return guardedValue as String; })(),
      addressLine3: (() { final guardedValue = map['addressLine3']; if (guardedValue == null) return null; return guardedValue as String; })(),
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return guardedValue as String; })(),
      companyName: (() { final guardedValue = map['companyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      countryCode: (() { final guardedValue = map['countryCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      districtOrCounty: (() { final guardedValue = map['districtOrCounty']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fullName: (() { final guardedValue = map['fullName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      phoneNumber: (() { final guardedValue = map['phoneNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      postalCode: (() { final guardedValue = map['postalCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateOrRegion: (() { final guardedValue = map['stateOrRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      websiteUrl: (() { final guardedValue = map['websiteUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
