// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_tech_contact_extra_param/domain_tech_contact_extra_param.dart';

class DomainTechContact {
  /// First line of the contact's address.
  final String? addressLine1;

  /// Second line of contact's address, if any.
  final String? addressLine2;

  /// The city of the contact's address.
  final String? city;

  /// Indicates whether the contact is a person, company, association, or public organization. See the [AWS API documentation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html#Route53Domains-Type-domains_ContactDetail-ContactType) for valid values.
  final String? contactType;

  /// Code for the country of the contact's address. See the [AWS API documentation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html#Route53Domains-Type-domains_ContactDetail-CountryCode) for valid values.
  final String? countryCode;

  /// Email address of the contact.
  final String? email;

  /// A list of name-value pairs for parameters required by certain top-level domains.
  final List<DomainTechContactExtraParam>? extraParams;

  /// Fax number of the contact. Phone number must be specified in the format "+[country dialing code].[number including any area code]".
  final String? fax;

  /// First name of contact.
  final String? firstName;

  /// Last name of contact.
  final String? lastName;

  /// Name of the organization for contact types other than `PERSON`.
  final String? organizationName;

  /// The phone number of the contact. Phone number must be specified in the format "+[country dialing code].[number including any area code]".
  final String? phoneNumber;

  /// The state or province of the contact's city.
  final String? state;

  /// The zip or postal code of the contact's address.
  final String? zipCode;

  DomainTechContact({
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.contactType,
    this.countryCode,
    this.email,
    this.extraParams,
    this.fax,
    this.firstName,
    this.lastName,
    this.organizationName,
    this.phoneNumber,
    this.state,
    this.zipCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressLine1Value = addressLine1;
    if (addressLine1Value != null) {
      map['addressLine1'] = addressLine1Value;
    }
    final addressLine2Value = addressLine2;
    if (addressLine2Value != null) {
      map['addressLine2'] = addressLine2Value;
    }
    final cityValue = city;
    if (cityValue != null) {
      map['city'] = cityValue;
    }
    final contactTypeValue = contactType;
    if (contactTypeValue != null) {
      map['contactType'] = contactTypeValue;
    }
    final countryCodeValue = countryCode;
    if (countryCodeValue != null) {
      map['countryCode'] = countryCodeValue;
    }
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue;
    }
    final extraParamsValue = extraParams;
    if (extraParamsValue != null) {
      map['extraParams'] =
          Input.encodeList<DomainTechContactExtraParam, Map<String, dynamic>>(
              extraParamsValue, (value) => value.toMap());
    }
    final faxValue = fax;
    if (faxValue != null) {
      map['fax'] = faxValue;
    }
    final firstNameValue = firstName;
    if (firstNameValue != null) {
      map['firstName'] = firstNameValue;
    }
    final lastNameValue = lastName;
    if (lastNameValue != null) {
      map['lastName'] = lastNameValue;
    }
    final organizationNameValue = organizationName;
    if (organizationNameValue != null) {
      map['organizationName'] = organizationNameValue;
    }
    final phoneNumberValue = phoneNumber;
    if (phoneNumberValue != null) {
      map['phoneNumber'] = phoneNumberValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final zipCodeValue = zipCode;
    if (zipCodeValue != null) {
      map['zipCode'] = zipCodeValue;
    }
    return map;
  }

  factory DomainTechContact.fromMap(Map<String, dynamic> map) {
    return DomainTechContact(
      addressLine1:
          map['addressLine1'] == null ? null : map['addressLine1'] as String,
      addressLine2:
          map['addressLine2'] == null ? null : map['addressLine2'] as String,
      city: map['city'] == null ? null : map['city'] as String,
      contactType:
          map['contactType'] == null ? null : map['contactType'] as String,
      countryCode:
          map['countryCode'] == null ? null : map['countryCode'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      extraParams: map['extraParams'] == null
          ? null
          : Input.decodeList<DomainTechContactExtraParam>(
              map['extraParams'],
              (value) => DomainTechContactExtraParam.fromMap(
                  (value as Map).cast<String, dynamic>())),
      fax: map['fax'] == null ? null : map['fax'] as String,
      firstName: map['firstName'] == null ? null : map['firstName'] as String,
      lastName: map['lastName'] == null ? null : map['lastName'] as String,
      organizationName: map['organizationName'] == null
          ? null
          : map['organizationName'] as String,
      phoneNumber:
          map['phoneNumber'] == null ? null : map['phoneNumber'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      zipCode: map['zipCode'] == null ? null : map['zipCode'] as String,
    );
  }
}
