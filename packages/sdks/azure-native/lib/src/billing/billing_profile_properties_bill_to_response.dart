// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Billing address.
class BillingProfilePropertiesBillToResponse {
  /// Address line 1.
  final pulumi.Input<String> addressLine1;
  /// Address line 2.
  final pulumi.Input<String?>? addressLine2;
  /// Address line 3.
  final pulumi.Input<String?>? addressLine3;
  /// Address city.
  final pulumi.Input<String?>? city;
  /// Company name. Optional for MCA Individual (Pay-as-you-go).
  final pulumi.Input<String?>? companyName;
  /// Country code uses ISO 3166-1 Alpha-2 format.
  final pulumi.Input<String> country;
  /// Address district.
  final pulumi.Input<String?>? district;
  /// Email address.
  final pulumi.Input<String?>? email;
  /// First name. Optional for MCA Enterprise.
  final pulumi.Input<String?>? firstName;
  /// Indicates if the address is incomplete.
  final pulumi.Input<bool?>? isValidAddress;
  /// Last name. Optional for MCA Enterprise.
  final pulumi.Input<String?>? lastName;
  /// Middle name.
  final pulumi.Input<String?>? middleName;
  /// Phone number.
  final pulumi.Input<String?>? phoneNumber;
  /// Postal code.
  final pulumi.Input<String?>? postalCode;
  /// Address region.
  final pulumi.Input<String?>? region;

  /// Creates a new [BillingProfilePropertiesBillToResponse].
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
  const BillingProfilePropertiesBillToResponse({
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

  factory BillingProfilePropertiesBillToResponse.fromMap(Map<String, dynamic> map) {
    return BillingProfilePropertiesBillToResponse(
      addressLine1: pulumi.Input.fromValue(map['addressLine1'] as String),
      addressLine2: (() { final guardedValue = map['addressLine2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressLine3: (() { final guardedValue = map['addressLine3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      companyName: (() { final guardedValue = map['companyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      country: pulumi.Input.fromValue(map['country'] as String),
      district: (() { final guardedValue = map['district']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isValidAddress: (() { final guardedValue = map['isValidAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      middleName: (() { final guardedValue = map['middleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phoneNumber: (() { final guardedValue = map['phoneNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postalCode: (() { final guardedValue = map['postalCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
