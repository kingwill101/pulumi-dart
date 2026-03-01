// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_billing_contact_extra_param.dart';

class DomainBillingContact {
  /// First line of the contact's address.
  final String addressLine1;

  /// Second line of contact's address, if any.
  final String addressLine2;

  /// The city of the contact's address.
  final String city;

  /// Indicates whether the contact is a person, company, association, or public organization. See the [AWS API documentation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html#Route53Domains-Type-domains_ContactDetail-ContactType) for valid values.
  final String contactType;

  /// Code for the country of the contact's address. See the [AWS API documentation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html#Route53Domains-Type-domains_ContactDetail-CountryCode) for valid values.
  final String countryCode;

  /// Email address of the contact.
  final String email;

  /// A list of name-value pairs for parameters required by certain top-level domains.
  final List<DomainBillingContactExtraParam> extraParams;

  /// Fax number of the contact. Phone number must be specified in the format "+[country dialing code].[number including any area code]".
  final String fax;

  /// First name of contact.
  final String firstName;

  /// Last name of contact.
  final String lastName;

  /// Name of the organization for contact types other than `PERSON`.
  final String organizationName;

  /// The phone number of the contact. Phone number must be specified in the format "+[country dialing code].[number including any area code]".
  final String phoneNumber;

  /// The state or province of the contact's city.
  final String state;

  /// The zip or postal code of the contact's address.
  final String zipCode;

  /// Creates a new [DomainBillingContact].
  /// [addressLine1] First line of the contact's address.
  /// [addressLine2] Second line of contact's address, if any.
  /// [city] The city of the contact's address.
  /// [contactType] Indicates whether the contact is a person, company, association, or public organization. See the [AWS API documentation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html#Route53Domains-Type-domains_ContactDetail-ContactType) for valid values.
  /// [countryCode] Code for the country of the contact's address. See the [AWS API documentation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html#Route53Domains-Type-domains_ContactDetail-CountryCode) for valid values.
  /// [email] Email address of the contact.
  /// [extraParams] A list of name-value pairs for parameters required by certain top-level domains.
  /// [fax] Fax number of the contact. Phone number must be specified in the format "+[country dialing code].[number including any area code]".
  /// [firstName] First name of contact.
  /// [lastName] Last name of contact.
  /// [organizationName] Name of the organization for contact types other than `PERSON`.
  /// [phoneNumber] The phone number of the contact. Phone number must be specified in the format "+[country dialing code].[number including any area code]".
  /// [state] The state or province of the contact's city.
  /// [zipCode] The zip or postal code of the contact's address.
  DomainBillingContact({
    required this.addressLine1,
    required this.addressLine2,
    required this.city,
    required this.contactType,
    required this.countryCode,
    required this.email,
    required this.extraParams,
    required this.fax,
    required this.firstName,
    required this.lastName,
    required this.organizationName,
    required this.phoneNumber,
    required this.state,
    required this.zipCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressLine1': addressLine1,
      'addressLine2': addressLine2,
      'city': city,
      'contactType': contactType,
      'countryCode': countryCode,
      'email': email,
      'extraParams':
          pulumi.Input.encodeList<
            DomainBillingContactExtraParam,
            Map<String, dynamic>
          >(extraParams, (value) => value.toMap()),
      'fax': fax,
      'firstName': firstName,
      'lastName': lastName,
      'organizationName': organizationName,
      'phoneNumber': phoneNumber,
      'state': state,
      'zipCode': zipCode,
    };
  }

  factory DomainBillingContact.fromMap(Map<String, dynamic> map) {
    return DomainBillingContact(
      addressLine1: map['addressLine1'] as String,
      addressLine2: map['addressLine2'] as String,
      city: map['city'] as String,
      contactType: map['contactType'] as String,
      countryCode: map['countryCode'] as String,
      email: map['email'] as String,
      extraParams: pulumi.Input.decodeList<DomainBillingContactExtraParam>(
        map['extraParams'],
        (value) => DomainBillingContactExtraParam.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      fax: map['fax'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      organizationName: map['organizationName'] as String,
      phoneNumber: map['phoneNumber'] as String,
      state: map['state'] as String,
      zipCode: map['zipCode'] as String,
    );
  }
}
