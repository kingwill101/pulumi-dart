// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_account_primary_contact_primary_contact_args_doc}
/// The set of arguments for PrimaryContact.
/// {@endtemplate}
/// {@macro pulumi_account_primary_contact_primary_contact_args_doc}
class PrimaryContactArgs {
  /// The ID of the target account when managing member accounts. Will manage current user's account by default if omitted.
  final pulumi.Input<String>? accountId;

  /// The first line of the primary contact address.
  final pulumi.Input<String> addressLine1;

  /// The second line of the primary contact address, if any.
  final pulumi.Input<String>? addressLine2;

  /// The third line of the primary contact address, if any.
  final pulumi.Input<String>? addressLine3;

  /// The city of the primary contact address.
  final pulumi.Input<String> city;

  /// The name of the company associated with the primary contact information, if any.
  final pulumi.Input<String>? companyName;

  /// The ISO-3166 two-letter country code for the primary contact address.
  final pulumi.Input<String> countryCode;

  /// The district or county of the primary contact address, if any.
  final pulumi.Input<String>? districtOrCounty;

  /// The full name of the primary contact address.
  final pulumi.Input<String> fullName;

  /// The phone number of the primary contact information. The number will be validated and, in some countries, checked for activation.
  final pulumi.Input<String> phoneNumber;

  /// The postal code of the primary contact address.
  final pulumi.Input<String> postalCode;

  /// The state or region of the primary contact address. This field is required in selected countries.
  final pulumi.Input<String>? stateOrRegion;

  /// The URL of the website associated with the primary contact information, if any.
  final pulumi.Input<String>? websiteUrl;

  /// Creates a new [PrimaryContactArgs].
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
  PrimaryContactArgs({
    String? accountId,
    required String addressLine1,
    String? addressLine2,
    String? addressLine3,
    required String city,
    String? companyName,
    required String countryCode,
    String? districtOrCounty,
    required String fullName,
    required String phoneNumber,
    required String postalCode,
    String? stateOrRegion,
    String? websiteUrl,
  })  : accountId = pulumi.Input.asOptionalInput<String>(accountId),
        addressLine1 = pulumi.Input.asInput<String>(addressLine1),
        addressLine2 = pulumi.Input.asOptionalInput<String>(addressLine2),
        addressLine3 = pulumi.Input.asOptionalInput<String>(addressLine3),
        city = pulumi.Input.asInput<String>(city),
        companyName = pulumi.Input.asOptionalInput<String>(companyName),
        countryCode = pulumi.Input.asInput<String>(countryCode),
        districtOrCounty =
            pulumi.Input.asOptionalInput<String>(districtOrCounty),
        fullName = pulumi.Input.asInput<String>(fullName),
        phoneNumber = pulumi.Input.asInput<String>(phoneNumber),
        postalCode = pulumi.Input.asInput<String>(postalCode),
        stateOrRegion = pulumi.Input.asOptionalInput<String>(stateOrRegion),
        websiteUrl = pulumi.Input.asOptionalInput<String>(websiteUrl);

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
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      addressLine1: map['addressLine1'] as String,
      addressLine2:
          map['addressLine2'] == null ? null : map['addressLine2'] as String,
      addressLine3:
          map['addressLine3'] == null ? null : map['addressLine3'] as String,
      city: map['city'] as String,
      companyName:
          map['companyName'] == null ? null : map['companyName'] as String,
      countryCode: map['countryCode'] as String,
      districtOrCounty: map['districtOrCounty'] == null
          ? null
          : map['districtOrCounty'] as String,
      fullName: map['fullName'] as String,
      phoneNumber: map['phoneNumber'] as String,
      postalCode: map['postalCode'] as String,
      stateOrRegion:
          map['stateOrRegion'] == null ? null : map['stateOrRegion'] as String,
      websiteUrl:
          map['websiteUrl'] == null ? null : map['websiteUrl'] as String,
    );
  }
}
