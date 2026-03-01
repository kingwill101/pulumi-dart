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
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? activeDirectoryName,
    pulumi.Output<List<String>>? adminGroups,
    pulumi.Output<List<String>>? adminProGroups,
    required pulumi.Output<String> authenticationMethod,
    pulumi.Output<List<String>>? authorGroups,
    pulumi.Output<List<String>>? authorProGroups,
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? contactNumber,
    pulumi.Output<String>? directoryId,
    required pulumi.Output<String> edition,
    pulumi.Output<String>? emailAddress,
    pulumi.Output<String>? firstName,
    pulumi.Output<String>? iamIdentityCenterInstanceArn,
    pulumi.Output<String>? lastName,
    required pulumi.Output<String> notificationEmail,
    pulumi.Output<List<String>>? readerGroups,
    pulumi.Output<List<String>>? readerProGroups,
    pulumi.Output<String>? realm,
    pulumi.Output<String>? region,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      activeDirectoryName = pulumi.Input.asOptionalInput<String>(activeDirectoryName),
      adminGroups = pulumi.Input.asOptionalInput<List<String>>(adminGroups),
      adminProGroups = pulumi.Input.asOptionalInput<List<String>>(adminProGroups),
      authenticationMethod = pulumi.Input.asInput<String>(authenticationMethod),
      authorGroups = pulumi.Input.asOptionalInput<List<String>>(authorGroups),
      authorProGroups = pulumi.Input.asOptionalInput<List<String>>(authorProGroups),
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      contactNumber = pulumi.Input.asOptionalInput<String>(contactNumber),
      directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
      edition = pulumi.Input.asInput<String>(edition),
      emailAddress = pulumi.Input.asOptionalInput<String>(emailAddress),
      firstName = pulumi.Input.asOptionalInput<String>(firstName),
      iamIdentityCenterInstanceArn = pulumi.Input.asOptionalInput<String>(iamIdentityCenterInstanceArn),
      lastName = pulumi.Input.asOptionalInput<String>(lastName),
      notificationEmail = pulumi.Input.asInput<String>(notificationEmail),
      readerGroups = pulumi.Input.asOptionalInput<List<String>>(readerGroups),
      readerProGroups = pulumi.Input.asOptionalInput<List<String>>(readerProGroups),
      realm = pulumi.Input.asOptionalInput<String>(realm),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      activeDirectoryName: map['activeDirectoryName'] == null ? null : pulumi.Output.create<String>(map['activeDirectoryName'] as String),
      adminGroups: map['adminGroups'] == null ? null : pulumi.Output.create<List<String>>((map['adminGroups'] as List).cast<String>()),
      adminProGroups: map['adminProGroups'] == null ? null : pulumi.Output.create<List<String>>((map['adminProGroups'] as List).cast<String>()),
      authenticationMethod: pulumi.Output.create<String>(map['authenticationMethod'] as String),
      authorGroups: map['authorGroups'] == null ? null : pulumi.Output.create<List<String>>((map['authorGroups'] as List).cast<String>()),
      authorProGroups: map['authorProGroups'] == null ? null : pulumi.Output.create<List<String>>((map['authorProGroups'] as List).cast<String>()),
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      contactNumber: map['contactNumber'] == null ? null : pulumi.Output.create<String>(map['contactNumber'] as String),
      directoryId: map['directoryId'] == null ? null : pulumi.Output.create<String>(map['directoryId'] as String),
      edition: pulumi.Output.create<String>(map['edition'] as String),
      emailAddress: map['emailAddress'] == null ? null : pulumi.Output.create<String>(map['emailAddress'] as String),
      firstName: map['firstName'] == null ? null : pulumi.Output.create<String>(map['firstName'] as String),
      iamIdentityCenterInstanceArn: map['iamIdentityCenterInstanceArn'] == null ? null : pulumi.Output.create<String>(map['iamIdentityCenterInstanceArn'] as String),
      lastName: map['lastName'] == null ? null : pulumi.Output.create<String>(map['lastName'] as String),
      notificationEmail: pulumi.Output.create<String>(map['notificationEmail'] as String),
      readerGroups: map['readerGroups'] == null ? null : pulumi.Output.create<List<String>>((map['readerGroups'] as List).cast<String>()),
      readerProGroups: map['readerProGroups'] == null ? null : pulumi.Output.create<List<String>>((map['readerProGroups'] as List).cast<String>()),
      realm: map['realm'] == null ? null : pulumi.Output.create<String>(map['realm'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

