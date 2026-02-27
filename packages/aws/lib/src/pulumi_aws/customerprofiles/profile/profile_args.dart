// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../profile_address/profile_address.dart';
import '../profile_billing_address/profile_billing_address.dart';
import '../profile_mailing_address/profile_mailing_address.dart';
import '../profile_shipping_address/profile_shipping_address.dart';

/// The set of arguments for Profile.
class ProfileArgs {
  /// A unique account number that you have given to the customer.
  final pulumi.Input<String>? accountNumber;

  /// Any additional information relevant to the customer’s profile.
  final pulumi.Input<String>? additionalInformation;

  /// A block that specifies a generic address associated with the customer that is not mailing, shipping, or billing. Documented below.
  final pulumi.Input<ProfileAddress>? address;

  /// A key value pair of attributes of a customer profile.
  final pulumi.Input<Map<String, String>>? attributes;

  /// A block that specifies the customer’s billing address. Documented below.
  final pulumi.Input<ProfileBillingAddress>? billingAddress;

  /// The customer’s birth date.
  final pulumi.Input<String>? birthDate;

  /// The customer’s business email address.
  final pulumi.Input<String>? businessEmailAddress;

  /// The name of the customer’s business.
  final pulumi.Input<String>? businessName;

  /// The customer’s business phone number.
  final pulumi.Input<String>? businessPhoneNumber;

  /// The name of your Customer Profile domain. It must be unique for your AWS account.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> domainName;

  /// The customer’s email address, which has not been specified as a personal or business address.
  final pulumi.Input<String>? emailAddress;

  /// The customer’s first name.
  final pulumi.Input<String>? firstName;

  /// The gender with which the customer identifies.
  final pulumi.Input<String>? genderString;

  /// The customer’s home phone number.
  final pulumi.Input<String>? homePhoneNumber;

  /// The customer’s last name.
  final pulumi.Input<String>? lastName;

  /// A block that specifies the customer’s mailing address. Documented below.
  final pulumi.Input<ProfileMailingAddress>? mailingAddress;

  /// The customer’s middle name.
  final pulumi.Input<String>? middleName;

  /// The customer’s mobile phone number.
  final pulumi.Input<String>? mobilePhoneNumber;

  /// The type of profile used to describe the customer.
  final pulumi.Input<String>? partyTypeString;

  /// The customer’s personal email address.
  final pulumi.Input<String>? personalEmailAddress;

  /// The customer’s phone number, which has not been specified as a mobile, home, or business number.
  final pulumi.Input<String>? phoneNumber;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A block that specifies the customer’s shipping address. Documented below.
  final pulumi.Input<ProfileShippingAddress>? shippingAddress;

  ProfileArgs({
    this.accountNumber,
    this.additionalInformation,
    this.address,
    this.attributes,
    this.billingAddress,
    this.birthDate,
    this.businessEmailAddress,
    this.businessName,
    this.businessPhoneNumber,
    required this.domainName,
    this.emailAddress,
    this.firstName,
    this.genderString,
    this.homePhoneNumber,
    this.lastName,
    this.mailingAddress,
    this.middleName,
    this.mobilePhoneNumber,
    this.partyTypeString,
    this.personalEmailAddress,
    this.phoneNumber,
    this.region,
    this.shippingAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountNumberValue = accountNumber;
    if (accountNumberValue != null) {
      map['accountNumber'] = accountNumberValue;
    }
    final additionalInformationValue = additionalInformation;
    if (additionalInformationValue != null) {
      map['additionalInformation'] = additionalInformationValue;
    }
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = pulumi.Input.mapOptionalInputValue<ProfileAddress,
          Map<String, dynamic>>(addressValue, (value) => value.toMap());
    }
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = attributesValue;
    }
    final billingAddressValue = billingAddress;
    if (billingAddressValue != null) {
      map['billingAddress'] = pulumi.Input.mapOptionalInputValue<
          ProfileBillingAddress,
          Map<String, dynamic>>(billingAddressValue, (value) => value.toMap());
    }
    final birthDateValue = birthDate;
    if (birthDateValue != null) {
      map['birthDate'] = birthDateValue;
    }
    final businessEmailAddressValue = businessEmailAddress;
    if (businessEmailAddressValue != null) {
      map['businessEmailAddress'] = businessEmailAddressValue;
    }
    final businessNameValue = businessName;
    if (businessNameValue != null) {
      map['businessName'] = businessNameValue;
    }
    final businessPhoneNumberValue = businessPhoneNumber;
    if (businessPhoneNumberValue != null) {
      map['businessPhoneNumber'] = businessPhoneNumberValue;
    }
    map['domainName'] = domainName;
    final emailAddressValue = emailAddress;
    if (emailAddressValue != null) {
      map['emailAddress'] = emailAddressValue;
    }
    final firstNameValue = firstName;
    if (firstNameValue != null) {
      map['firstName'] = firstNameValue;
    }
    final genderStringValue = genderString;
    if (genderStringValue != null) {
      map['genderString'] = genderStringValue;
    }
    final homePhoneNumberValue = homePhoneNumber;
    if (homePhoneNumberValue != null) {
      map['homePhoneNumber'] = homePhoneNumberValue;
    }
    final lastNameValue = lastName;
    if (lastNameValue != null) {
      map['lastName'] = lastNameValue;
    }
    final mailingAddressValue = mailingAddress;
    if (mailingAddressValue != null) {
      map['mailingAddress'] = pulumi.Input.mapOptionalInputValue<
          ProfileMailingAddress,
          Map<String, dynamic>>(mailingAddressValue, (value) => value.toMap());
    }
    final middleNameValue = middleName;
    if (middleNameValue != null) {
      map['middleName'] = middleNameValue;
    }
    final mobilePhoneNumberValue = mobilePhoneNumber;
    if (mobilePhoneNumberValue != null) {
      map['mobilePhoneNumber'] = mobilePhoneNumberValue;
    }
    final partyTypeStringValue = partyTypeString;
    if (partyTypeStringValue != null) {
      map['partyTypeString'] = partyTypeStringValue;
    }
    final personalEmailAddressValue = personalEmailAddress;
    if (personalEmailAddressValue != null) {
      map['personalEmailAddress'] = personalEmailAddressValue;
    }
    final phoneNumberValue = phoneNumber;
    if (phoneNumberValue != null) {
      map['phoneNumber'] = phoneNumberValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final shippingAddressValue = shippingAddress;
    if (shippingAddressValue != null) {
      map['shippingAddress'] = pulumi.Input.mapOptionalInputValue<
          ProfileShippingAddress,
          Map<String, dynamic>>(shippingAddressValue, (value) => value.toMap());
    }
    return map;
  }

  factory ProfileArgs.fromMap(Map<String, dynamic> map) {
    return ProfileArgs(
      accountNumber: pulumi.Input.asOptionalInput<String>(map['accountNumber']),
      additionalInformation:
          pulumi.Input.asOptionalInput<String>(map['additionalInformation']),
      address: pulumi.Input.asOptionalInput<ProfileAddress>(map['address']),
      attributes:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['attributes']),
      billingAddress: pulumi.Input.asOptionalInput<ProfileBillingAddress>(
          map['billingAddress']),
      birthDate: pulumi.Input.asOptionalInput<String>(map['birthDate']),
      businessEmailAddress:
          pulumi.Input.asOptionalInput<String>(map['businessEmailAddress']),
      businessName: pulumi.Input.asOptionalInput<String>(map['businessName']),
      businessPhoneNumber:
          pulumi.Input.asOptionalInput<String>(map['businessPhoneNumber']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      emailAddress: pulumi.Input.asOptionalInput<String>(map['emailAddress']),
      firstName: pulumi.Input.asOptionalInput<String>(map['firstName']),
      genderString: pulumi.Input.asOptionalInput<String>(map['genderString']),
      homePhoneNumber:
          pulumi.Input.asOptionalInput<String>(map['homePhoneNumber']),
      lastName: pulumi.Input.asOptionalInput<String>(map['lastName']),
      mailingAddress: pulumi.Input.asOptionalInput<ProfileMailingAddress>(
          map['mailingAddress']),
      middleName: pulumi.Input.asOptionalInput<String>(map['middleName']),
      mobilePhoneNumber:
          pulumi.Input.asOptionalInput<String>(map['mobilePhoneNumber']),
      partyTypeString:
          pulumi.Input.asOptionalInput<String>(map['partyTypeString']),
      personalEmailAddress:
          pulumi.Input.asOptionalInput<String>(map['personalEmailAddress']),
      phoneNumber: pulumi.Input.asOptionalInput<String>(map['phoneNumber']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      shippingAddress: pulumi.Input.asOptionalInput<ProfileShippingAddress>(
          map['shippingAddress']),
    );
  }
}
