// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUser.
class GetUserResult {
  /// Whether or not the account is enabled.
  final bool accountEnabled;
  /// The age group of the user. Supported values are `Adult`, `NotAdult` and `Minor`.
  final String ageGroup;
  /// A list of telephone numbers for the user.
  final List<String> businessPhones;
  /// The city in which the user is located.
  final String city;
  /// The company name which the user is associated. This property can be useful for describing the company that an external user comes from.
  final String companyName;
  /// Whether consent has been obtained for minors. Supported values are `Granted`, `Denied` and `NotRequired`.
  final String consentProvidedForMinor;
  /// The cost center associated with the user.
  final String costCenter;
  /// The country/region in which the user is located, e.g. `US` or `UK`.
  final String country;
  /// Indicates whether the user account was created as a regular school or work account (`null`), an external account (`Invitation`), a local account for an Azure Active Directory B2C tenant (`LocalAccount`) or self-service sign-up using email verification (`EmailVerified`).
  final String creationType;
  /// The name for the department in which the user works.
  final String department;
  /// The display name of the user.
  final String displayName;
  /// The name of the division in which the user works.
  final String division;
  /// The hire date of the user, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`).
  final String employeeHireDate;
  /// The employee identifier assigned to the user by the organisation.
  final String employeeId;
  /// Captures enterprise worker type. For example, Employee, Contractor, Consultant, or Vendor.
  final String employeeType;
  /// For an external user invited to the tenant, this property represents the invited user's invitation status. Possible values are `PendingAcceptance` or `Accepted`.
  final String externalUserState;
  /// The fax number of the user.
  final String faxNumber;
  /// The given name (first name) of the user.
  final String givenName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of instant message voice over IP (VOIP) session initiation protocol (SIP) addresses for the user.
  final List<String> imAddresses;
  /// The user’s job title.
  final String jobTitle;
  /// The SMTP address for the user.
  final String mail;
  /// The email alias of the user.
  final String mailNickname;
  /// The object ID of the user's manager.
  final String managerId;
  /// The primary cellular telephone number for the user.
  final String mobilePhone;
  /// The object ID of the user.
  final String objectId;
  /// The office location in the user's place of business.
  final String officeLocation;
  /// The on-premises distinguished name (DN) of the user, synchronised from the on-premises directory when Azure AD Connect is used.
  final String onpremisesDistinguishedName;
  /// The on-premises FQDN, also called dnsDomainName, synchronised from the on-premises directory when Azure AD Connect is used.
  final String onpremisesDomainName;
  /// The value used to associate an on-premise Active Directory user account with their Azure AD user object.
  final String onpremisesImmutableId;
  /// The on-premise SAM account name of the user.
  final String onpremisesSamAccountName;
  /// The on-premises security identifier (SID), synchronised from the on-premises directory when Azure AD Connect is used.
  final String onpremisesSecurityIdentifier;
  /// Whether this user is synchronised from an on-premises directory (`true`), no longer synchronised (`false`), or has never been synchronised (`null`).
  final bool onpremisesSyncEnabled;
  /// The on-premise user principal name of the user.
  final String onpremisesUserPrincipalName;
  /// A list of additional email addresses for the user.
  final List<String> otherMails;
  /// The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code.
  final String postalCode;
  /// The user's preferred language, in ISO 639-1 notation.
  final String preferredLanguage;
  /// List of email addresses for the user that direct to the same mailbox.
  final List<String> proxyAddresses;
  /// Whether or not the Outlook global address list should include this user.
  final bool showInAddressList;
  /// The state or province in the user's address.
  final String state;
  /// The street address of the user's place of business.
  final String streetAddress;
  /// The user's surname (family name or last name).
  final String surname;
  /// The usage location of the user.
  final String usageLocation;
  /// The user principal name (UPN) of the user.
  final String userPrincipalName;
  /// The user type in the directory. Possible values are `Guest` or `Member`.
  final String userType;

  /// Creates a new [GetUserResult].
  /// [accountEnabled] Whether or not the account is enabled.
  /// [ageGroup] The age group of the user. Supported values are `Adult`, `NotAdult` and `Minor`.
  /// [businessPhones] A list of telephone numbers for the user.
  /// [city] The city in which the user is located.
  /// [companyName] The company name which the user is associated. This property can be useful for describing the company that an external user comes from.
  /// [consentProvidedForMinor] Whether consent has been obtained for minors. Supported values are `Granted`, `Denied` and `NotRequired`.
  /// [costCenter] The cost center associated with the user.
  /// [country] The country/region in which the user is located, e.g. `US` or `UK`.
  /// [creationType] Indicates whether the user account was created as a regular school or work account (`null`), an external account (`Invitation`), a local account for an Azure Active Directory B2C tenant (`LocalAccount`) or self-service sign-up using email verification (`EmailVerified`).
  /// [department] The name for the department in which the user works.
  /// [displayName] The display name of the user.
  /// [division] The name of the division in which the user works.
  /// [employeeHireDate] The hire date of the user, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`).
  /// [employeeId] The employee identifier assigned to the user by the organisation.
  /// [employeeType] Captures enterprise worker type. For example, Employee, Contractor, Consultant, or Vendor.
  /// [externalUserState] For an external user invited to the tenant, this property represents the invited user's invitation status. Possible values are `PendingAcceptance` or `Accepted`.
  /// [faxNumber] The fax number of the user.
  /// [givenName] The given name (first name) of the user.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imAddresses] A list of instant message voice over IP (VOIP) session initiation protocol (SIP) addresses for the user.
  /// [jobTitle] The user’s job title.
  /// [mail] The SMTP address for the user.
  /// [mailNickname] The email alias of the user.
  /// [managerId] The object ID of the user's manager.
  /// [mobilePhone] The primary cellular telephone number for the user.
  /// [objectId] The object ID of the user.
  /// [officeLocation] The office location in the user's place of business.
  /// [onpremisesDistinguishedName] The on-premises distinguished name (DN) of the user, synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesDomainName] The on-premises FQDN, also called dnsDomainName, synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesImmutableId] The value used to associate an on-premise Active Directory user account with their Azure AD user object.
  /// [onpremisesSamAccountName] The on-premise SAM account name of the user.
  /// [onpremisesSecurityIdentifier] The on-premises security identifier (SID), synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesSyncEnabled] Whether this user is synchronised from an on-premises directory (`true`), no longer synchronised (`false`), or has never been synchronised (`null`).
  /// [onpremisesUserPrincipalName] The on-premise user principal name of the user.
  /// [otherMails] A list of additional email addresses for the user.
  /// [postalCode] The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code.
  /// [preferredLanguage] The user's preferred language, in ISO 639-1 notation.
  /// [proxyAddresses] List of email addresses for the user that direct to the same mailbox.
  /// [showInAddressList] Whether or not the Outlook global address list should include this user.
  /// [state] The state or province in the user's address.
  /// [streetAddress] The street address of the user's place of business.
  /// [surname] The user's surname (family name or last name).
  /// [usageLocation] The usage location of the user.
  /// [userPrincipalName] The user principal name (UPN) of the user.
  /// [userType] The user type in the directory. Possible values are `Guest` or `Member`.
  GetUserResult({
    required this.accountEnabled,
    required this.ageGroup,
    required this.businessPhones,
    required this.city,
    required this.companyName,
    required this.consentProvidedForMinor,
    required this.costCenter,
    required this.country,
    required this.creationType,
    required this.department,
    required this.displayName,
    required this.division,
    required this.employeeHireDate,
    required this.employeeId,
    required this.employeeType,
    required this.externalUserState,
    required this.faxNumber,
    required this.givenName,
    required this.id,
    required this.imAddresses,
    required this.jobTitle,
    required this.mail,
    required this.mailNickname,
    required this.managerId,
    required this.mobilePhone,
    required this.objectId,
    required this.officeLocation,
    required this.onpremisesDistinguishedName,
    required this.onpremisesDomainName,
    required this.onpremisesImmutableId,
    required this.onpremisesSamAccountName,
    required this.onpremisesSecurityIdentifier,
    required this.onpremisesSyncEnabled,
    required this.onpremisesUserPrincipalName,
    required this.otherMails,
    required this.postalCode,
    required this.preferredLanguage,
    required this.proxyAddresses,
    required this.showInAddressList,
    required this.state,
    required this.streetAddress,
    required this.surname,
    required this.usageLocation,
    required this.userPrincipalName,
    required this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEnabled': accountEnabled,
      'ageGroup': ageGroup,
      'businessPhones': businessPhones,
      'city': city,
      'companyName': companyName,
      'consentProvidedForMinor': consentProvidedForMinor,
      'costCenter': costCenter,
      'country': country,
      'creationType': creationType,
      'department': department,
      'displayName': displayName,
      'division': division,
      'employeeHireDate': employeeHireDate,
      'employeeId': employeeId,
      'employeeType': employeeType,
      'externalUserState': externalUserState,
      'faxNumber': faxNumber,
      'givenName': givenName,
      'id': id,
      'imAddresses': imAddresses,
      'jobTitle': jobTitle,
      'mail': mail,
      'mailNickname': mailNickname,
      'managerId': managerId,
      'mobilePhone': mobilePhone,
      'objectId': objectId,
      'officeLocation': officeLocation,
      'onpremisesDistinguishedName': onpremisesDistinguishedName,
      'onpremisesDomainName': onpremisesDomainName,
      'onpremisesImmutableId': onpremisesImmutableId,
      'onpremisesSamAccountName': onpremisesSamAccountName,
      'onpremisesSecurityIdentifier': onpremisesSecurityIdentifier,
      'onpremisesSyncEnabled': onpremisesSyncEnabled,
      'onpremisesUserPrincipalName': onpremisesUserPrincipalName,
      'otherMails': otherMails,
      'postalCode': postalCode,
      'preferredLanguage': preferredLanguage,
      'proxyAddresses': proxyAddresses,
      'showInAddressList': showInAddressList,
      'state': state,
      'streetAddress': streetAddress,
      'surname': surname,
      'usageLocation': usageLocation,
      'userPrincipalName': userPrincipalName,
      'userType': userType,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      accountEnabled: map['accountEnabled'] as bool,
      ageGroup: map['ageGroup'] as String,
      businessPhones: (map['businessPhones'] as List).cast<String>(),
      city: map['city'] as String,
      companyName: map['companyName'] as String,
      consentProvidedForMinor: map['consentProvidedForMinor'] as String,
      costCenter: map['costCenter'] as String,
      country: map['country'] as String,
      creationType: map['creationType'] as String,
      department: map['department'] as String,
      displayName: map['displayName'] as String,
      division: map['division'] as String,
      employeeHireDate: map['employeeHireDate'] as String,
      employeeId: map['employeeId'] as String,
      employeeType: map['employeeType'] as String,
      externalUserState: map['externalUserState'] as String,
      faxNumber: map['faxNumber'] as String,
      givenName: map['givenName'] as String,
      id: map['id'] as String,
      imAddresses: (map['imAddresses'] as List).cast<String>(),
      jobTitle: map['jobTitle'] as String,
      mail: map['mail'] as String,
      mailNickname: map['mailNickname'] as String,
      managerId: map['managerId'] as String,
      mobilePhone: map['mobilePhone'] as String,
      objectId: map['objectId'] as String,
      officeLocation: map['officeLocation'] as String,
      onpremisesDistinguishedName: map['onpremisesDistinguishedName'] as String,
      onpremisesDomainName: map['onpremisesDomainName'] as String,
      onpremisesImmutableId: map['onpremisesImmutableId'] as String,
      onpremisesSamAccountName: map['onpremisesSamAccountName'] as String,
      onpremisesSecurityIdentifier: map['onpremisesSecurityIdentifier'] as String,
      onpremisesSyncEnabled: map['onpremisesSyncEnabled'] as bool,
      onpremisesUserPrincipalName: map['onpremisesUserPrincipalName'] as String,
      otherMails: (map['otherMails'] as List).cast<String>(),
      postalCode: map['postalCode'] as String,
      preferredLanguage: map['preferredLanguage'] as String,
      proxyAddresses: (map['proxyAddresses'] as List).cast<String>(),
      showInAddressList: map['showInAddressList'] as bool,
      state: map['state'] as String,
      streetAddress: map['streetAddress'] as String,
      surname: map['surname'] as String,
      usageLocation: map['usageLocation'] as String,
      userPrincipalName: map['userPrincipalName'] as String,
      userType: map['userType'] as String,
    );
  }
}

