// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrimaryContact resources.
class PrimaryContactState {
  /// The ID of the target account when managing member accounts. Will manage current user's account by default if omitted.
  final pulumi.Input<String>? accountId;
  /// The first line of the primary contact address.
  final pulumi.Input<String>? addressLine1;
  /// The second line of the primary contact address, if any.
  final pulumi.Input<String>? addressLine2;
  /// The third line of the primary contact address, if any.
  final pulumi.Input<String>? addressLine3;
  /// The city of the primary contact address.
  final pulumi.Input<String>? city;
  /// The name of the company associated with the primary contact information, if any.
  final pulumi.Input<String>? companyName;
  /// The ISO-3166 two-letter country code for the primary contact address.
  final pulumi.Input<String>? countryCode;
  /// The district or county of the primary contact address, if any.
  final pulumi.Input<String>? districtOrCounty;
  /// The full name of the primary contact address.
  final pulumi.Input<String>? fullName;
  /// The phone number of the primary contact information. The number will be validated and, in some countries, checked for activation.
  final pulumi.Input<String>? phoneNumber;
  /// The postal code of the primary contact address.
  final pulumi.Input<String>? postalCode;
  /// The state or region of the primary contact address. This field is required in selected countries.
  final pulumi.Input<String>? stateOrRegion;
  /// The URL of the website associated with the primary contact information, if any.
  final pulumi.Input<String>? websiteUrl;

  /// Creates a new [PrimaryContactState].
  /// [accountId] The ID of the target account when managing member accounts. Will manage current user's account by default if omitted.
  /// [addressLine1] The first line of the primary contact address.
  /// [addressLine2] The second line of the primary contact address, if any.
  /// [addressLine3] The third line of the primary contact address, if any.
  /// [city] The city of the primary contact address.
  /// [companyName] The name of the company associated with the primary contact information, if any.
  /// [countryCode] The ISO-3166 two-letter country code for the primary contact address.
  /// [districtOrCounty] The district or county of the primary contact address, if any.
  /// [fullName] The full name of the primary contact address.
  /// [phoneNumber] The phone number of the primary contact information. The number will be validated and, in some countries, checked for activation.
  /// [postalCode] The postal code of the primary contact address.
  /// [stateOrRegion] The state or region of the primary contact address. This field is required in selected countries.
  /// [websiteUrl] The URL of the website associated with the primary contact information, if any.
  PrimaryContactState({
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

  factory PrimaryContactState.fromMap(Map<String, dynamic> map) {
    return PrimaryContactState(
      accountId: map['accountId'] == null ? null : ((map['accountId'] as String).input()).input(),
      addressLine1: map['addressLine1'] == null ? null : ((map['addressLine1'] as String).input()).input(),
      addressLine2: map['addressLine2'] == null ? null : ((map['addressLine2'] as String).input()).input(),
      addressLine3: map['addressLine3'] == null ? null : ((map['addressLine3'] as String).input()).input(),
      city: map['city'] == null ? null : ((map['city'] as String).input()).input(),
      companyName: map['companyName'] == null ? null : ((map['companyName'] as String).input()).input(),
      countryCode: map['countryCode'] == null ? null : ((map['countryCode'] as String).input()).input(),
      districtOrCounty: map['districtOrCounty'] == null ? null : ((map['districtOrCounty'] as String).input()).input(),
      fullName: map['fullName'] == null ? null : ((map['fullName'] as String).input()).input(),
      phoneNumber: map['phoneNumber'] == null ? null : ((map['phoneNumber'] as String).input()).input(),
      postalCode: map['postalCode'] == null ? null : ((map['postalCode'] as String).input()).input(),
      stateOrRegion: map['stateOrRegion'] == null ? null : ((map['stateOrRegion'] as String).input()).input(),
      websiteUrl: map['websiteUrl'] == null ? null : ((map['websiteUrl'] as String).input()).input(),
    );
  }
}

