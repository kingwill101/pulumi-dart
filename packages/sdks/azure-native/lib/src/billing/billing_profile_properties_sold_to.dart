// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The address of the individual or organization that is responsible for the billing account.
class BillingProfilePropertiesSoldTo {
  /// Address line 1.
  final pulumi.Input<String> addressLine1;
  /// Address line 2.
  final pulumi.Input<String>? addressLine2;
  /// Address line 3.
  final pulumi.Input<String>? addressLine3;
  /// Address city.
  final pulumi.Input<String>? city;
  /// Company name. Optional for MCA Individual (Pay-as-you-go).
  final pulumi.Input<String>? companyName;
  /// Country code uses ISO 3166-1 Alpha-2 format.
  final pulumi.Input<String> country;
  /// Address district.
  final pulumi.Input<String>? district;
  /// Email address.
  final pulumi.Input<String>? email;
  /// First name. Optional for MCA Enterprise.
  final pulumi.Input<String>? firstName;
  /// Indicates if the address is incomplete.
  final pulumi.Input<bool>? isValidAddress;
  /// Last name. Optional for MCA Enterprise.
  final pulumi.Input<String>? lastName;
  /// Middle name.
  final pulumi.Input<String>? middleName;
  /// Phone number.
  final pulumi.Input<String>? phoneNumber;
  /// Postal code.
  final pulumi.Input<String>? postalCode;
  /// Address region.
  final pulumi.Input<String>? region;

  /// Creates a new [BillingProfilePropertiesSoldTo].
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
  BillingProfilePropertiesSoldTo({
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

  factory BillingProfilePropertiesSoldTo.fromMap(Map<String, dynamic> map) {
    return BillingProfilePropertiesSoldTo(
      addressLine1: (map['addressLine1'] as String).input(),
      addressLine2: map['addressLine2'] == null ? null : (map['addressLine2'] as String).input(),
      addressLine3: map['addressLine3'] == null ? null : (map['addressLine3'] as String).input(),
      city: map['city'] == null ? null : (map['city'] as String).input(),
      companyName: map['companyName'] == null ? null : (map['companyName'] as String).input(),
      country: (map['country'] as String).input(),
      district: map['district'] == null ? null : (map['district'] as String).input(),
      email: map['email'] == null ? null : (map['email'] as String).input(),
      firstName: map['firstName'] == null ? null : (map['firstName'] as String).input(),
      isValidAddress: map['isValidAddress'] == null ? null : (map['isValidAddress'] as bool).input(),
      lastName: map['lastName'] == null ? null : (map['lastName'] as String).input(),
      middleName: map['middleName'] == null ? null : (map['middleName'] as String).input(),
      phoneNumber: map['phoneNumber'] == null ? null : (map['phoneNumber'] as String).input(),
      postalCode: map['postalCode'] == null ? null : (map['postalCode'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

