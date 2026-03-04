// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegisteredDomainTechContact {
  /// First line of the contact's address.
  final pulumi.Input<String>? addressLine1;

  /// Second line of contact's address, if any.
  final pulumi.Input<String>? addressLine2;

  /// The city of the contact's address.
  final pulumi.Input<String>? city;

  /// Indicates whether the contact is a person, company, association, or public organization. See the [AWS API documentation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html#Route53Domains-Type-domains_ContactDetail-ContactType) for valid values.
  final pulumi.Input<String>? contactType;

  /// Code for the country of the contact's address. See the [AWS API documentation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html#Route53Domains-Type-domains_ContactDetail-CountryCode) for valid values.
  final pulumi.Input<String>? countryCode;

  /// Email address of the contact.
  final pulumi.Input<String>? email;

  /// A key-value map of parameters required by certain top-level domains.
  final pulumi.Input<Map<String, String>>? extraParams;

  /// Fax number of the contact. Phone number must be specified in the format "+[country dialing code].[number including any area code]".
  final pulumi.Input<String>? fax;

  /// First name of contact.
  final pulumi.Input<String>? firstName;

  /// Last name of contact.
  final pulumi.Input<String>? lastName;

  /// Name of the organization for contact types other than `PERSON`.
  final pulumi.Input<String>? organizationName;

  /// The phone number of the contact. Phone number must be specified in the format "+[country dialing code].[number including any area code]".
  final pulumi.Input<String>? phoneNumber;

  /// The state or province of the contact's city.
  final pulumi.Input<String>? state;

  /// The zip or postal code of the contact's address.
  final pulumi.Input<String>? zipCode;

  /// Creates a new [RegisteredDomainTechContact].
  /// [addressLine1] First line of the contact's address.
  /// [addressLine2] Second line of contact's address, if any.
  /// [city] The city of the contact's address.
  /// [contactType] Indicates whether the contact is a person, company, association, or public organization. See the [AWS API documentation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html#Route53Domains-Type-domains_ContactDetail-ContactType) for valid values.
  /// [countryCode] Code for the country of the contact's address. See the [AWS API documentation](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html#Route53Domains-Type-domains_ContactDetail-CountryCode) for valid values.
  /// [email] Email address of the contact.
  /// [extraParams] A key-value map of parameters required by certain top-level domains.
  /// [fax] Fax number of the contact. Phone number must be specified in the format "+[country dialing code].[number including any area code]".
  /// [firstName] First name of contact.
  /// [lastName] Last name of contact.
  /// [organizationName] Name of the organization for contact types other than `PERSON`.
  /// [phoneNumber] The phone number of the contact. Phone number must be specified in the format "+[country dialing code].[number including any area code]".
  /// [state] The state or province of the contact's city.
  /// [zipCode] The zip or postal code of the contact's address.
  RegisteredDomainTechContact({
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
    return <String, dynamic>{
      'addressLine1': ?addressLine1,
      'addressLine2': ?addressLine2,
      'city': ?city,
      'contactType': ?contactType,
      'countryCode': ?countryCode,
      'email': ?email,
      'extraParams': ?extraParams,
      'fax': ?fax,
      'firstName': ?firstName,
      'lastName': ?lastName,
      'organizationName': ?organizationName,
      'phoneNumber': ?phoneNumber,
      'state': ?state,
      'zipCode': ?zipCode,
    };
  }

  factory RegisteredDomainTechContact.fromMap(Map<String, dynamic> map) {
    return RegisteredDomainTechContact(
      addressLine1: (() {
        final guardedValue = map['addressLine1'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      addressLine2: (() {
        final guardedValue = map['addressLine2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      city: (() {
        final guardedValue = map['city'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      contactType: (() {
        final guardedValue = map['contactType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      countryCode: (() {
        final guardedValue = map['countryCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      extraParams: (() {
        final guardedValue = map['extraParams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      fax: (() {
        final guardedValue = map['fax'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firstName: (() {
        final guardedValue = map['firstName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastName: (() {
        final guardedValue = map['lastName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organizationName: (() {
        final guardedValue = map['organizationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      phoneNumber: (() {
        final guardedValue = map['phoneNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zipCode: (() {
        final guardedValue = map['zipCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
