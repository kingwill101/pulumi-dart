// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountSubscription resources.
class AccountSubscriptionState {
  /// Name of your Amazon QuickSight account. This name is unique over all of AWS, and it appears only when users sign in.
  final pulumi.Input<String>? accountName;
  /// Status of the Amazon QuickSight account's subscription.
  final pulumi.Input<String>? accountSubscriptionStatus;
  /// Name of your Active Directory. This field is required if `ACTIVE_DIRECTORY` is the selected authentication method of the new Amazon QuickSight account.
  final pulumi.Input<String>? activeDirectoryName;
  /// Admin group associated with your Active Directory or IAM Identity Center account. This field is required if `ACTIVE_DIRECTORY` or `IAM_IDENTITY_CENTER` is the selected authentication method of the new Amazon QuickSight account.
  final pulumi.Input<List<String>>? adminGroups;
  /// Admin PRO group associated with your Active Directory or IAM Identity Center account.
  final pulumi.Input<List<String>>? adminProGroups;
  /// Method that you want to use to authenticate your Amazon QuickSight account. Currently, the valid values for this parameter are `IAM_AND_QUICKSIGHT`, `IAM_ONLY`, `IAM_IDENTITY_CENTER`, and `ACTIVE_DIRECTORY`.
  final pulumi.Input<String>? authenticationMethod;
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
  final pulumi.Input<String>? edition;
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
  final pulumi.Input<String>? notificationEmail;
  /// Reader group associated with your Active Directory or IAM Identity Center account.
  final pulumi.Input<List<String>>? readerGroups;
  /// Reader PRO group associated with your Active Directory or IAM Identity Center account.
  final pulumi.Input<List<String>>? readerProGroups;
  /// Realm of the Active Directory that is associated with your Amazon QuickSight account.
  final pulumi.Input<String>? realm;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AccountSubscriptionState].
  /// [accountName] Name of your Amazon QuickSight account. This name is unique over all of AWS, and it appears only when users sign in.
  /// [accountSubscriptionStatus] Status of the Amazon QuickSight account's subscription.
  /// [activeDirectoryName] Name of your Active Directory. This field is required if `ACTIVE_DIRECTORY` is the selected authentication method of the new Amazon QuickSight account.
  /// [adminGroups] Admin group associated with your Active Directory or IAM Identity Center account. This field is required if `ACTIVE_DIRECTORY` or `IAM_IDENTITY_CENTER` is the selected authentication method of the new Amazon QuickSight account.
  /// [adminProGroups] Admin PRO group associated with your Active Directory or IAM Identity Center account.
  /// [authenticationMethod] Method that you want to use to authenticate your Amazon QuickSight account. Currently, the valid values for this parameter are `IAM_AND_QUICKSIGHT`, `IAM_ONLY`, `IAM_IDENTITY_CENTER`, and `ACTIVE_DIRECTORY`.
  /// [authorGroups] Author group associated with your Active Directory or IAM Identity Center account.
  /// [authorProGroups] Author PRO group associated with your Active Directory or IAM Identity Center account.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Pulumi AWS provider.
  /// [contactNumber] A 10-digit phone number for the author of the Amazon QuickSight account to use for future communications. This field is required if `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon QuickSight account.
  /// [directoryId] Active Directory ID that is associated with your Amazon QuickSight account.
  /// [edition] Edition of Amazon QuickSight that you want your account to have. Currently, you can choose from `STANDARD`, `ENTERPRISE` or `ENTERPRISE_AND_Q`.
  /// [emailAddress] Email address of the author of the Amazon QuickSight account to use for future communications. This field is required if `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon QuickSight account.
  /// [firstName] First name of the author of the Amazon QuickSight account to use for future communications. This field is required if `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon QuickSight account.
  /// [iamIdentityCenterInstanceArn] The Amazon Resource Name (ARN) for the IAM Identity Center instance.
  /// [lastName] Last name of the author of the Amazon QuickSight account to use for future communications. This field is required if `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon QuickSight account.
  /// [notificationEmail] Email address that you want Amazon QuickSight to send notifications to regarding your Amazon QuickSight account or Amazon QuickSight subscription.
  /// [readerGroups] Reader group associated with your Active Directory or IAM Identity Center account.
  /// [readerProGroups] Reader PRO group associated with your Active Directory or IAM Identity Center account.
  /// [realm] Realm of the Active Directory that is associated with your Amazon QuickSight account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AccountSubscriptionState({
    this.accountName,
    this.accountSubscriptionStatus,
    this.activeDirectoryName,
    this.adminGroups,
    this.adminProGroups,
    this.authenticationMethod,
    this.authorGroups,
    this.authorProGroups,
    this.awsAccountId,
    this.contactNumber,
    this.directoryId,
    this.edition,
    this.emailAddress,
    this.firstName,
    this.iamIdentityCenterInstanceArn,
    this.lastName,
    this.notificationEmail,
    this.readerGroups,
    this.readerProGroups,
    this.realm,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'accountSubscriptionStatus': ?accountSubscriptionStatus,
      'activeDirectoryName': ?activeDirectoryName,
      'adminGroups': ?adminGroups,
      'adminProGroups': ?adminProGroups,
      'authenticationMethod': ?authenticationMethod,
      'authorGroups': ?authorGroups,
      'authorProGroups': ?authorProGroups,
      'awsAccountId': ?awsAccountId,
      'contactNumber': ?contactNumber,
      'directoryId': ?directoryId,
      'edition': ?edition,
      'emailAddress': ?emailAddress,
      'firstName': ?firstName,
      'iamIdentityCenterInstanceArn': ?iamIdentityCenterInstanceArn,
      'lastName': ?lastName,
      'notificationEmail': ?notificationEmail,
      'readerGroups': ?readerGroups,
      'readerProGroups': ?readerProGroups,
      'realm': ?realm,
      'region': ?region,
    };
  }

  factory AccountSubscriptionState.fromMap(Map<String, dynamic> map) {
    return AccountSubscriptionState(
      accountName: map['accountName'] == null ? null : ((map['accountName'] as String).input()).input(),
      accountSubscriptionStatus: map['accountSubscriptionStatus'] == null ? null : ((map['accountSubscriptionStatus'] as String).input()).input(),
      activeDirectoryName: map['activeDirectoryName'] == null ? null : ((map['activeDirectoryName'] as String).input()).input(),
      adminGroups: map['adminGroups'] == null ? null : (((map['adminGroups'] as List).cast<String>()).input()).input(),
      adminProGroups: map['adminProGroups'] == null ? null : (((map['adminProGroups'] as List).cast<String>()).input()).input(),
      authenticationMethod: map['authenticationMethod'] == null ? null : ((map['authenticationMethod'] as String).input()).input(),
      authorGroups: map['authorGroups'] == null ? null : (((map['authorGroups'] as List).cast<String>()).input()).input(),
      authorProGroups: map['authorProGroups'] == null ? null : (((map['authorProGroups'] as List).cast<String>()).input()).input(),
      awsAccountId: map['awsAccountId'] == null ? null : ((map['awsAccountId'] as String).input()).input(),
      contactNumber: map['contactNumber'] == null ? null : ((map['contactNumber'] as String).input()).input(),
      directoryId: map['directoryId'] == null ? null : ((map['directoryId'] as String).input()).input(),
      edition: map['edition'] == null ? null : ((map['edition'] as String).input()).input(),
      emailAddress: map['emailAddress'] == null ? null : ((map['emailAddress'] as String).input()).input(),
      firstName: map['firstName'] == null ? null : ((map['firstName'] as String).input()).input(),
      iamIdentityCenterInstanceArn: map['iamIdentityCenterInstanceArn'] == null ? null : ((map['iamIdentityCenterInstanceArn'] as String).input()).input(),
      lastName: map['lastName'] == null ? null : ((map['lastName'] as String).input()).input(),
      notificationEmail: map['notificationEmail'] == null ? null : ((map['notificationEmail'] as String).input()).input(),
      readerGroups: map['readerGroups'] == null ? null : (((map['readerGroups'] as List).cast<String>()).input()).input(),
      readerProGroups: map['readerProGroups'] == null ? null : (((map['readerProGroups'] as List).cast<String>()).input()).input(),
      realm: map['realm'] == null ? null : ((map['realm'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

