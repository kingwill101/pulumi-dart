// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PrimaryContact.
class PrimaryContactArgs {
  /// The ID of the target account when managing member accounts. Will manage current user's account by default if omitted.
  final Input<String>? accountId;

  /// The first line of the primary contact address.
  final Input<String> addressLine1;

  /// The second line of the primary contact address, if any.
  final Input<String>? addressLine2;

  /// The third line of the primary contact address, if any.
  final Input<String>? addressLine3;

  /// The city of the primary contact address.
  final Input<String> city;

  /// The name of the company associated with the primary contact information, if any.
  final Input<String>? companyName;

  /// The ISO-3166 two-letter country code for the primary contact address.
  final Input<String> countryCode;

  /// The district or county of the primary contact address, if any.
  final Input<String>? districtOrCounty;

  /// The full name of the primary contact address.
  final Input<String> fullName;

  /// The phone number of the primary contact information. The number will be validated and, in some countries, checked for activation.
  final Input<String> phoneNumber;

  /// The postal code of the primary contact address.
  final Input<String> postalCode;

  /// The state or region of the primary contact address. This field is required in selected countries.
  final Input<String>? stateOrRegion;

  /// The URL of the website associated with the primary contact information, if any.
  final Input<String>? websiteUrl;

  PrimaryContactArgs({
    this.accountId,
    required this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    required this.city,
    this.companyName,
    required this.countryCode,
    this.districtOrCounty,
    required this.fullName,
    required this.phoneNumber,
    required this.postalCode,
    this.stateOrRegion,
    this.websiteUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['addressLine1'] = addressLine1;
    final addressLine2Value = addressLine2;
    if (addressLine2Value != null) {
      map['addressLine2'] = addressLine2Value;
    }
    final addressLine3Value = addressLine3;
    if (addressLine3Value != null) {
      map['addressLine3'] = addressLine3Value;
    }
    map['city'] = city;
    final companyNameValue = companyName;
    if (companyNameValue != null) {
      map['companyName'] = companyNameValue;
    }
    map['countryCode'] = countryCode;
    final districtOrCountyValue = districtOrCounty;
    if (districtOrCountyValue != null) {
      map['districtOrCounty'] = districtOrCountyValue;
    }
    map['fullName'] = fullName;
    map['phoneNumber'] = phoneNumber;
    map['postalCode'] = postalCode;
    final stateOrRegionValue = stateOrRegion;
    if (stateOrRegionValue != null) {
      map['stateOrRegion'] = stateOrRegionValue;
    }
    final websiteUrlValue = websiteUrl;
    if (websiteUrlValue != null) {
      map['websiteUrl'] = websiteUrlValue;
    }
    return map;
  }

  factory PrimaryContactArgs.fromMap(Map<String, dynamic> map) {
    return PrimaryContactArgs(
      accountId: Input.asOptionalInput<String>(map['accountId']),
      addressLine1: Input.asInput<String>(map['addressLine1']),
      addressLine2: Input.asOptionalInput<String>(map['addressLine2']),
      addressLine3: Input.asOptionalInput<String>(map['addressLine3']),
      city: Input.asInput<String>(map['city']),
      companyName: Input.asOptionalInput<String>(map['companyName']),
      countryCode: Input.asInput<String>(map['countryCode']),
      districtOrCounty: Input.asOptionalInput<String>(map['districtOrCounty']),
      fullName: Input.asInput<String>(map['fullName']),
      phoneNumber: Input.asInput<String>(map['phoneNumber']),
      postalCode: Input.asInput<String>(map['postalCode']),
      stateOrRegion: Input.asOptionalInput<String>(map['stateOrRegion']),
      websiteUrl: Input.asOptionalInput<String>(map['websiteUrl']),
    );
  }
}
