// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_account_subscription_account_subscription_args_doc}
/// The set of arguments for AccountSubscription.
/// {@endtemplate}
/// {@macro pulumi_quicksight_account_subscription_account_subscription_args_doc}
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

  /// Creates a new [AccountSubscriptionArgs].
  /// [accountName] Name of your Amazon QuickSight account. This name is unique over all of AWS, and it appears only when users sign in.
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
    return <String, dynamic>{
      'accountName': accountName,
      'activeDirectoryName': ?activeDirectoryName,
      'adminGroups': ?adminGroups,
      'adminProGroups': ?adminProGroups,
      'authenticationMethod': authenticationMethod,
      'authorGroups': ?authorGroups,
      'authorProGroups': ?authorProGroups,
      'awsAccountId': ?awsAccountId,
      'contactNumber': ?contactNumber,
      'directoryId': ?directoryId,
      'edition': edition,
      'emailAddress': ?emailAddress,
      'firstName': ?firstName,
      'iamIdentityCenterInstanceArn': ?iamIdentityCenterInstanceArn,
      'lastName': ?lastName,
      'notificationEmail': notificationEmail,
      'readerGroups': ?readerGroups,
      'readerProGroups': ?readerProGroups,
      'realm': ?realm,
      'region': ?region,
    };
  }

  factory AccountSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return AccountSubscriptionArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      activeDirectoryName: (() {
        final guardedValue = map['activeDirectoryName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      adminGroups: (() {
        final guardedValue = map['adminGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      adminProGroups: (() {
        final guardedValue = map['adminProGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      authenticationMethod: pulumi.Input.fromValue(
        map['authenticationMethod'] as String,
      ),
      authorGroups: (() {
        final guardedValue = map['authorGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      authorProGroups: (() {
        final guardedValue = map['authorProGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      awsAccountId: (() {
        final guardedValue = map['awsAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      contactNumber: (() {
        final guardedValue = map['contactNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      directoryId: (() {
        final guardedValue = map['directoryId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      edition: pulumi.Input.fromValue(map['edition'] as String),
      emailAddress: (() {
        final guardedValue = map['emailAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firstName: (() {
        final guardedValue = map['firstName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iamIdentityCenterInstanceArn: (() {
        final guardedValue = map['iamIdentityCenterInstanceArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastName: (() {
        final guardedValue = map['lastName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationEmail: pulumi.Input.fromValue(
        map['notificationEmail'] as String,
      ),
      readerGroups: (() {
        final guardedValue = map['readerGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      readerProGroups: (() {
        final guardedValue = map['readerProGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      realm: (() {
        final guardedValue = map['realm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
