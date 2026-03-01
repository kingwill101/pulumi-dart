// ignore_for_file: unused_element, unnecessary_cast


class RegisteredDomainTechContact {
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
  /// A key-value map of parameters required by certain top-level domains.
  final Map<String, String>? extraParams;
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
      addressLine1: map['addressLine1'] == null ? null : map['addressLine1'] as String,
      addressLine2: map['addressLine2'] == null ? null : map['addressLine2'] as String,
      city: map['city'] == null ? null : map['city'] as String,
      contactType: map['contactType'] == null ? null : map['contactType'] as String,
      countryCode: map['countryCode'] == null ? null : map['countryCode'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      extraParams: map['extraParams'] == null ? null : (map['extraParams'] as Map).cast<String, String>(),
      fax: map['fax'] == null ? null : map['fax'] as String,
      firstName: map['firstName'] == null ? null : map['firstName'] as String,
      lastName: map['lastName'] == null ? null : map['lastName'] as String,
      organizationName: map['organizationName'] == null ? null : map['organizationName'] as String,
      phoneNumber: map['phoneNumber'] == null ? null : map['phoneNumber'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      zipCode: map['zipCode'] == null ? null : map['zipCode'] as String,
    );
  }
}

