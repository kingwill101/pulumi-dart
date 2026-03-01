// ignore_for_file: unused_element, unnecessary_cast


/// Billing address.
class BillingProfilePropertiesResponseBillTo {
  /// Address line 1.
  final String addressLine1;
  /// Address line 2.
  final String? addressLine2;
  /// Address line 3.
  final String? addressLine3;
  /// Address city.
  final String? city;
  /// Company name. Optional for MCA Individual (Pay-as-you-go).
  final String? companyName;
  /// Country code uses ISO 3166-1 Alpha-2 format.
  final String country;
  /// Address district.
  final String? district;
  /// Email address.
  final String? email;
  /// First name. Optional for MCA Enterprise.
  final String? firstName;
  /// Indicates if the address is incomplete.
  final bool? isValidAddress;
  /// Last name. Optional for MCA Enterprise.
  final String? lastName;
  /// Middle name.
  final String? middleName;
  /// Phone number.
  final String? phoneNumber;
  /// Postal code.
  final String? postalCode;
  /// Address region.
  final String? region;

  /// Creates a new [BillingProfilePropertiesResponseBillTo].
  /// [addressLine1] Address line 1.
  /// [addressLine2] Address line 2.
  /// [addressLine3] Address line 3.
  /// [city] Address city.
  /// [companyName] Company name. Optional for MCA Individual (Pay-as-you-go).
  /// [country] Country code uses ISO 3166-1 Alpha-2 format.
  /// [district] Address district.
  /// [email] Email address.
  /// [firstName] First name. Optional for MCA Enterprise.
  /// [isValidAddress] Indicates if the address is incomplete.
  /// [lastName] Last name. Optional for MCA Enterprise.
  /// [middleName] Middle name.
  /// [phoneNumber] Phone number.
  /// [postalCode] Postal code.
  /// [region] Address region.
  BillingProfilePropertiesResponseBillTo({
    required this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.city,
    this.companyName,
    required this.country,
    this.district,
    this.email,
    this.firstName,
    this.isValidAddress,
    this.lastName,
    this.middleName,
    this.phoneNumber,
    this.postalCode,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressLine1': addressLine1,
      'addressLine2': ?addressLine2,
      'addressLine3': ?addressLine3,
      'city': ?city,
      'companyName': ?companyName,
      'country': country,
      'district': ?district,
      'email': ?email,
      'firstName': ?firstName,
      'isValidAddress': ?isValidAddress,
      'lastName': ?lastName,
      'middleName': ?middleName,
      'phoneNumber': ?phoneNumber,
      'postalCode': ?postalCode,
      'region': ?region,
    };
  }

  factory BillingProfilePropertiesResponseBillTo.fromMap(Map<String, dynamic> map) {
    return BillingProfilePropertiesResponseBillTo(
      addressLine1: map['addressLine1'] as String,
      addressLine2: map['addressLine2'] == null ? null : map['addressLine2'] as String,
      addressLine3: map['addressLine3'] == null ? null : map['addressLine3'] as String,
      city: map['city'] == null ? null : map['city'] as String,
      companyName: map['companyName'] == null ? null : map['companyName'] as String,
      country: map['country'] as String,
      district: map['district'] == null ? null : map['district'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      firstName: map['firstName'] == null ? null : map['firstName'] as String,
      isValidAddress: map['isValidAddress'] == null ? null : map['isValidAddress'] as bool,
      lastName: map['lastName'] == null ? null : map['lastName'] as String,
      middleName: map['middleName'] == null ? null : map['middleName'] as String,
      phoneNumber: map['phoneNumber'] == null ? null : map['phoneNumber'] as String,
      postalCode: map['postalCode'] == null ? null : map['postalCode'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

