// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AccountSubscription.
class AccountSubscriptionArgs {
  /// Name of your Amazon QuickSight account. This name is unique over all of AWS, and it appears only when users sign in.
  final pulumi.Input<String> accountName;

  /// Name of your Active Directory. This field is required if `ACTIVE_DIRECTORY` is the selected authentication method of the new Amazon QuickSight account.
  final pulumi.Input<String>? activeDirectoryName;

  /// Admin group associated with your Active Directory or IAM Identity Center account. This field is required if `ACTIVE_DIRECTORY` or `IAM_IDENTITY_CENTER` is the selected authentication method of the new Amazon QuickSight account.
  final pulumi.Input<List<String>>? adminGroups;

  /// Admin PRO group associated with your Active Directory or IAM Identity Center account.
  final pulumi.Input<List<String>>? adminProGroups;

  /// Method that you want to use to authenticate your Amazon QuickSight account. Currently, the valid values for this parameter are `IAM_AND_QUICKSIGHT`, `IAM_ONLY`, `IAM_IDENTITY_CENTER`, and `ACTIVE_DIRECTORY`.
  final pulumi.Input<String> authenticationMethod;

  /// Author group associated with your Active Directory or IAM Identity Center account.
  final pulumi.Input<List<String>>? authorGroups;

  /// Author PRO group associated with your Active Directory or IAM Identity Center account.
  final pulumi.Input<List<String>>? authorProGroups;

  /// AWS account ID. Defaults to automatically determined account ID of the Pulumi AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// A 10-digit phone number for the author of the Amazon QuickSight account to use for future communications. This field is required if `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon QuickSight account.
  final pulumi.Input<String>? contactNumber;

  /// Active Directory ID that is associated with your Amazon QuickSight account.
  final pulumi.Input<String>? directoryId;

  /// Edition of Amazon QuickSight that you want your account to have. Currently, you can choose from `STANDARD`, `ENTERPRISE` or `ENTERPRISE_AND_Q`.
  final pulumi.Input<String> edition;

  /// Email address of the author of the Amazon QuickSight account to use for future communications. This field is required if `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon QuickSight account.
  final pulumi.Input<String>? emailAddress;

  /// First name of the author of the Amazon QuickSight account to use for future communications. This field is required if `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon QuickSight account.
  final pulumi.Input<String>? firstName;

  /// The Amazon Resource Name (ARN) for the IAM Identity Center instance.
  final pulumi.Input<String>? iamIdentityCenterInstanceArn;

  /// Last name of the author of the Amazon QuickSight account to use for future communications. This field is required if `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon QuickSight account.
  final pulumi.Input<String>? lastName;

  /// Email address that you want Amazon QuickSight to send notifications to regarding your Amazon QuickSight account or Amazon QuickSight subscription.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> notificationEmail;

  /// Reader group associated with your Active Directory or IAM Identity Center account.
  final pulumi.Input<List<String>>? readerGroups;

  /// Reader PRO group associated with your Active Directory or IAM Identity Center account.
  final pulumi.Input<List<String>>? readerProGroups;

  /// Realm of the Active Directory that is associated with your Amazon QuickSight account.
  final pulumi.Input<String>? realm;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  AccountSubscriptionArgs({
    required this.accountName,
    this.activeDirectoryName,
    this.adminGroups,
    this.adminProGroups,
    required this.authenticationMethod,
    this.authorGroups,
    this.authorProGroups,
    this.awsAccountId,
    this.contactNumber,
    this.directoryId,
    required this.edition,
    this.emailAddress,
    this.firstName,
    this.iamIdentityCenterInstanceArn,
    this.lastName,
    required this.notificationEmail,
    this.readerGroups,
    this.readerProGroups,
    this.realm,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountName'] = accountName;
    final activeDirectoryNameValue = activeDirectoryName;
    if (activeDirectoryNameValue != null) {
      map['activeDirectoryName'] = activeDirectoryNameValue;
    }
    final adminGroupsValue = adminGroups;
    if (adminGroupsValue != null) {
      map['adminGroups'] = adminGroupsValue;
    }
    final adminProGroupsValue = adminProGroups;
    if (adminProGroupsValue != null) {
      map['adminProGroups'] = adminProGroupsValue;
    }
    map['authenticationMethod'] = authenticationMethod;
    final authorGroupsValue = authorGroups;
    if (authorGroupsValue != null) {
      map['authorGroups'] = authorGroupsValue;
    }
    final authorProGroupsValue = authorProGroups;
    if (authorProGroupsValue != null) {
      map['authorProGroups'] = authorProGroupsValue;
    }
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    final contactNumberValue = contactNumber;
    if (contactNumberValue != null) {
      map['contactNumber'] = contactNumberValue;
    }
    final directoryIdValue = directoryId;
    if (directoryIdValue != null) {
      map['directoryId'] = directoryIdValue;
    }
    map['edition'] = edition;
    final emailAddressValue = emailAddress;
    if (emailAddressValue != null) {
      map['emailAddress'] = emailAddressValue;
    }
    final firstNameValue = firstName;
    if (firstNameValue != null) {
      map['firstName'] = firstNameValue;
    }
    final iamIdentityCenterInstanceArnValue = iamIdentityCenterInstanceArn;
    if (iamIdentityCenterInstanceArnValue != null) {
      map['iamIdentityCenterInstanceArn'] = iamIdentityCenterInstanceArnValue;
    }
    final lastNameValue = lastName;
    if (lastNameValue != null) {
      map['lastName'] = lastNameValue;
    }
    map['notificationEmail'] = notificationEmail;
    final readerGroupsValue = readerGroups;
    if (readerGroupsValue != null) {
      map['readerGroups'] = readerGroupsValue;
    }
    final readerProGroupsValue = readerProGroups;
    if (readerProGroupsValue != null) {
      map['readerProGroups'] = readerProGroupsValue;
    }
    final realmValue = realm;
    if (realmValue != null) {
      map['realm'] = realmValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AccountSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return AccountSubscriptionArgs(
      accountName: pulumi.Input.asInput<String>(map['accountName']),
      activeDirectoryName:
          pulumi.Input.asOptionalInput<String>(map['activeDirectoryName']),
      adminGroups:
          pulumi.Input.asOptionalInput<List<String>>(map['adminGroups']),
      adminProGroups:
          pulumi.Input.asOptionalInput<List<String>>(map['adminProGroups']),
      authenticationMethod:
          pulumi.Input.asInput<String>(map['authenticationMethod']),
      authorGroups:
          pulumi.Input.asOptionalInput<List<String>>(map['authorGroups']),
      authorProGroups:
          pulumi.Input.asOptionalInput<List<String>>(map['authorProGroups']),
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      contactNumber: pulumi.Input.asOptionalInput<String>(map['contactNumber']),
      directoryId: pulumi.Input.asOptionalInput<String>(map['directoryId']),
      edition: pulumi.Input.asInput<String>(map['edition']),
      emailAddress: pulumi.Input.asOptionalInput<String>(map['emailAddress']),
      firstName: pulumi.Input.asOptionalInput<String>(map['firstName']),
      iamIdentityCenterInstanceArn: pulumi.Input.asOptionalInput<String>(
          map['iamIdentityCenterInstanceArn']),
      lastName: pulumi.Input.asOptionalInput<String>(map['lastName']),
      notificationEmail: pulumi.Input.asInput<String>(map['notificationEmail']),
      readerGroups:
          pulumi.Input.asOptionalInput<List<String>>(map['readerGroups']),
      readerProGroups:
          pulumi.Input.asOptionalInput<List<String>>(map['readerProGroups']),
      realm: pulumi.Input.asOptionalInput<String>(map['realm']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
