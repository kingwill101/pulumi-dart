// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_address.dart';
import 'profile_billing_address.dart';
import 'profile_mailing_address.dart';
import 'profile_shipping_address.dart';

/// {@template pulumi_customerprofiles_profile_profile_args_doc}
/// The set of arguments for Profile.
/// {@endtemplate}
/// {@macro pulumi_customerprofiles_profile_profile_args_doc}
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

  /// Creates a new [ProfileArgs].
  /// [accountNumber] A unique account number that you have given to the customer.
  /// [additionalInformation] Any additional information relevant to the customer’s profile.
  /// [address] A block that specifies a generic address associated with the customer that is not mailing, shipping, or billing. Documented below.
  /// [attributes] A key value pair of attributes of a customer profile.
  /// [billingAddress] A block that specifies the customer’s billing address. Documented below.
  /// [birthDate] The customer’s birth date.
  /// [businessEmailAddress] The customer’s business email address.
  /// [businessName] The name of the customer’s business.
  /// [businessPhoneNumber] The customer’s business phone number.
  /// [domainName] The name of your Customer Profile domain. It must be unique for your AWS account.
  /// [emailAddress] The customer’s email address, which has not been specified as a personal or business address.
  /// [firstName] The customer’s first name.
  /// [genderString] The gender with which the customer identifies.
  /// [homePhoneNumber] The customer’s home phone number.
  /// [lastName] The customer’s last name.
  /// [mailingAddress] A block that specifies the customer’s mailing address. Documented below.
  /// [middleName] The customer’s middle name.
  /// [mobilePhoneNumber] The customer’s mobile phone number.
  /// [partyTypeString] The type of profile used to describe the customer.
  /// [personalEmailAddress] The customer’s personal email address.
  /// [phoneNumber] The customer’s phone number, which has not been specified as a mobile, home, or business number.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shippingAddress] A block that specifies the customer’s shipping address. Documented below.
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
    return <String, dynamic>{
      'accountNumber': ?accountNumber,
      'additionalInformation': ?additionalInformation,
      'address': ?pulumi.Input.mapOptionalInputValue<ProfileAddress, Map<String, dynamic>>(address, (value) => value.toMap()),
      'attributes': ?attributes,
      'billingAddress': ?pulumi.Input.mapOptionalInputValue<ProfileBillingAddress, Map<String, dynamic>>(billingAddress, (value) => value.toMap()),
      'birthDate': ?birthDate,
      'businessEmailAddress': ?businessEmailAddress,
      'businessName': ?businessName,
      'businessPhoneNumber': ?businessPhoneNumber,
      'domainName': domainName,
      'emailAddress': ?emailAddress,
      'firstName': ?firstName,
      'genderString': ?genderString,
      'homePhoneNumber': ?homePhoneNumber,
      'lastName': ?lastName,
      'mailingAddress': ?pulumi.Input.mapOptionalInputValue<ProfileMailingAddress, Map<String, dynamic>>(mailingAddress, (value) => value.toMap()),
      'middleName': ?middleName,
      'mobilePhoneNumber': ?mobilePhoneNumber,
      'partyTypeString': ?partyTypeString,
      'personalEmailAddress': ?personalEmailAddress,
      'phoneNumber': ?phoneNumber,
      'region': ?region,
      'shippingAddress': ?pulumi.Input.mapOptionalInputValue<ProfileShippingAddress, Map<String, dynamic>>(shippingAddress, (value) => value.toMap()),
    };
  }

  factory ProfileArgs.fromMap(Map<String, dynamic> map) {
    return ProfileArgs(
      accountNumber: map['accountNumber'] == null ? null : (map['accountNumber'] as String).input(),
      additionalInformation: map['additionalInformation'] == null ? null : (map['additionalInformation'] as String).input(),
      address: map['address'] == null ? null : (ProfileAddress.fromMap((map['address'] as Map).cast<String, dynamic>())).input(),
      attributes: map['attributes'] == null ? null : ((map['attributes'] as Map).cast<String, String>()).input(),
      billingAddress: map['billingAddress'] == null ? null : (ProfileBillingAddress.fromMap((map['billingAddress'] as Map).cast<String, dynamic>())).input(),
      birthDate: map['birthDate'] == null ? null : (map['birthDate'] as String).input(),
      businessEmailAddress: map['businessEmailAddress'] == null ? null : (map['businessEmailAddress'] as String).input(),
      businessName: map['businessName'] == null ? null : (map['businessName'] as String).input(),
      businessPhoneNumber: map['businessPhoneNumber'] == null ? null : (map['businessPhoneNumber'] as String).input(),
      domainName: (map['domainName'] as String).input(),
      emailAddress: map['emailAddress'] == null ? null : (map['emailAddress'] as String).input(),
      firstName: map['firstName'] == null ? null : (map['firstName'] as String).input(),
      genderString: map['genderString'] == null ? null : (map['genderString'] as String).input(),
      homePhoneNumber: map['homePhoneNumber'] == null ? null : (map['homePhoneNumber'] as String).input(),
      lastName: map['lastName'] == null ? null : (map['lastName'] as String).input(),
      mailingAddress: map['mailingAddress'] == null ? null : (ProfileMailingAddress.fromMap((map['mailingAddress'] as Map).cast<String, dynamic>())).input(),
      middleName: map['middleName'] == null ? null : (map['middleName'] as String).input(),
      mobilePhoneNumber: map['mobilePhoneNumber'] == null ? null : (map['mobilePhoneNumber'] as String).input(),
      partyTypeString: map['partyTypeString'] == null ? null : (map['partyTypeString'] as String).input(),
      personalEmailAddress: map['personalEmailAddress'] == null ? null : (map['personalEmailAddress'] as String).input(),
      phoneNumber: map['phoneNumber'] == null ? null : (map['phoneNumber'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      shippingAddress: map['shippingAddress'] == null ? null : (ProfileShippingAddress.fromMap((map['shippingAddress'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

