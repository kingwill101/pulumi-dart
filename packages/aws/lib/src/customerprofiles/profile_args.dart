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
    String? accountNumber,
    String? additionalInformation,
    ProfileAddress? address,
    Map<String, String>? attributes,
    ProfileBillingAddress? billingAddress,
    String? birthDate,
    String? businessEmailAddress,
    String? businessName,
    String? businessPhoneNumber,
    required String domainName,
    String? emailAddress,
    String? firstName,
    String? genderString,
    String? homePhoneNumber,
    String? lastName,
    ProfileMailingAddress? mailingAddress,
    String? middleName,
    String? mobilePhoneNumber,
    String? partyTypeString,
    String? personalEmailAddress,
    String? phoneNumber,
    String? region,
    ProfileShippingAddress? shippingAddress,
  }) : accountNumber = pulumi.Input.asOptionalInput<String>(accountNumber),
       additionalInformation = pulumi.Input.asOptionalInput<String>(
         additionalInformation,
       ),
       address = pulumi.Input.asOptionalInput<ProfileAddress>(address),
       attributes = pulumi.Input.asOptionalInput<Map<String, String>>(
         attributes,
       ),
       billingAddress = pulumi.Input.asOptionalInput<ProfileBillingAddress>(
         billingAddress,
       ),
       birthDate = pulumi.Input.asOptionalInput<String>(birthDate),
       businessEmailAddress = pulumi.Input.asOptionalInput<String>(
         businessEmailAddress,
       ),
       businessName = pulumi.Input.asOptionalInput<String>(businessName),
       businessPhoneNumber = pulumi.Input.asOptionalInput<String>(
         businessPhoneNumber,
       ),
       domainName = pulumi.Input.asInput<String>(domainName),
       emailAddress = pulumi.Input.asOptionalInput<String>(emailAddress),
       firstName = pulumi.Input.asOptionalInput<String>(firstName),
       genderString = pulumi.Input.asOptionalInput<String>(genderString),
       homePhoneNumber = pulumi.Input.asOptionalInput<String>(homePhoneNumber),
       lastName = pulumi.Input.asOptionalInput<String>(lastName),
       mailingAddress = pulumi.Input.asOptionalInput<ProfileMailingAddress>(
         mailingAddress,
       ),
       middleName = pulumi.Input.asOptionalInput<String>(middleName),
       mobilePhoneNumber = pulumi.Input.asOptionalInput<String>(
         mobilePhoneNumber,
       ),
       partyTypeString = pulumi.Input.asOptionalInput<String>(partyTypeString),
       personalEmailAddress = pulumi.Input.asOptionalInput<String>(
         personalEmailAddress,
       ),
       phoneNumber = pulumi.Input.asOptionalInput<String>(phoneNumber),
       region = pulumi.Input.asOptionalInput<String>(region),
       shippingAddress = pulumi.Input.asOptionalInput<ProfileShippingAddress>(
         shippingAddress,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountNumber': ?accountNumber,
      'additionalInformation': ?additionalInformation,
      'address':
          ?pulumi.Input.mapOptionalInputValue<
            ProfileAddress,
            Map<String, dynamic>
          >(address, (value) => value.toMap()),
      'attributes': ?attributes,
      'billingAddress':
          ?pulumi.Input.mapOptionalInputValue<
            ProfileBillingAddress,
            Map<String, dynamic>
          >(billingAddress, (value) => value.toMap()),
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
      'mailingAddress':
          ?pulumi.Input.mapOptionalInputValue<
            ProfileMailingAddress,
            Map<String, dynamic>
          >(mailingAddress, (value) => value.toMap()),
      'middleName': ?middleName,
      'mobilePhoneNumber': ?mobilePhoneNumber,
      'partyTypeString': ?partyTypeString,
      'personalEmailAddress': ?personalEmailAddress,
      'phoneNumber': ?phoneNumber,
      'region': ?region,
      'shippingAddress':
          ?pulumi.Input.mapOptionalInputValue<
            ProfileShippingAddress,
            Map<String, dynamic>
          >(shippingAddress, (value) => value.toMap()),
    };
  }

  factory ProfileArgs.fromMap(Map<String, dynamic> map) {
    return ProfileArgs(
      accountNumber: map['accountNumber'] == null
          ? null
          : map['accountNumber'] as String,
      additionalInformation: map['additionalInformation'] == null
          ? null
          : map['additionalInformation'] as String,
      address: map['address'] == null
          ? null
          : ProfileAddress.fromMap(
              (map['address'] as Map).cast<String, dynamic>(),
            ),
      attributes: map['attributes'] == null
          ? null
          : (map['attributes'] as Map).cast<String, String>(),
      billingAddress: map['billingAddress'] == null
          ? null
          : ProfileBillingAddress.fromMap(
              (map['billingAddress'] as Map).cast<String, dynamic>(),
            ),
      birthDate: map['birthDate'] == null ? null : map['birthDate'] as String,
      businessEmailAddress: map['businessEmailAddress'] == null
          ? null
          : map['businessEmailAddress'] as String,
      businessName: map['businessName'] == null
          ? null
          : map['businessName'] as String,
      businessPhoneNumber: map['businessPhoneNumber'] == null
          ? null
          : map['businessPhoneNumber'] as String,
      domainName: map['domainName'] as String,
      emailAddress: map['emailAddress'] == null
          ? null
          : map['emailAddress'] as String,
      firstName: map['firstName'] == null ? null : map['firstName'] as String,
      genderString: map['genderString'] == null
          ? null
          : map['genderString'] as String,
      homePhoneNumber: map['homePhoneNumber'] == null
          ? null
          : map['homePhoneNumber'] as String,
      lastName: map['lastName'] == null ? null : map['lastName'] as String,
      mailingAddress: map['mailingAddress'] == null
          ? null
          : ProfileMailingAddress.fromMap(
              (map['mailingAddress'] as Map).cast<String, dynamic>(),
            ),
      middleName: map['middleName'] == null
          ? null
          : map['middleName'] as String,
      mobilePhoneNumber: map['mobilePhoneNumber'] == null
          ? null
          : map['mobilePhoneNumber'] as String,
      partyTypeString: map['partyTypeString'] == null
          ? null
          : map['partyTypeString'] as String,
      personalEmailAddress: map['personalEmailAddress'] == null
          ? null
          : map['personalEmailAddress'] as String,
      phoneNumber: map['phoneNumber'] == null
          ? null
          : map['phoneNumber'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      shippingAddress: map['shippingAddress'] == null
          ? null
          : ProfileShippingAddress.fromMap(
              (map['shippingAddress'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
