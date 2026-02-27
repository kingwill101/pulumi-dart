import 'package:pulumi/pulumi.dart';
import 'account_subscription_args.dart';

/// Resource for managing an AWS QuickSight Account Subscription.
///
/// > Due to the absence of the `admin_group`, `author_group`, `reader_group`, `admin_pro_group`, `author_pro_group`, and `reader_pro_group` fields in the [`DescribeAccountSettings`](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeAccountSettings.html) API response, changes made to these groups post-subscription will not be detected by this resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight Account Subscription using `aws_account_id`. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/accountSubscription:AccountSubscription example "012345678901"
/// ```
class AccountSubscription extends CustomResource {
  /// Name of your Amazon QuickSight account. This name is unique over all of AWS, and it appears only when users sign in.
  late final Output<String> accountName;

  /// Status of the Amazon QuickSight account's subscription.
  late final Output<String> accountSubscriptionStatus;

  /// Name of your Active Directory. This field is required if `ACTIVE_DIRECTORY` is the selected authentication method of the new Amazon QuickSight account.
  late final Output<String?> activeDirectoryName;

  /// Admin group associated with your Active Directory or IAM Identity Center account. This field is required if `ACTIVE_DIRECTORY` or `IAM_IDENTITY_CENTER` is the selected authentication method of the new Amazon QuickSight account.
  late final Output<List<String>?> adminGroups;

  /// Admin PRO group associated with your Active Directory or IAM Identity Center account.
  late final Output<List<String>?> adminProGroups;

  /// Method that you want to use to authenticate your Amazon QuickSight account. Currently, the valid values for this parameter are `IAM_AND_QUICKSIGHT`, `IAM_ONLY`, `IAM_IDENTITY_CENTER`, and `ACTIVE_DIRECTORY`.
  late final Output<String> authenticationMethod;

  /// Author group associated with your Active Directory or IAM Identity Center account.
  late final Output<List<String>?> authorGroups;

  /// Author PRO group associated with your Active Directory or IAM Identity Center account.
  late final Output<List<String>?> authorProGroups;

  /// AWS account ID. Defaults to automatically determined account ID of the Pulumi AWS provider.
  late final Output<String> awsAccountId;

  /// A 10-digit phone number for the author of the Amazon QuickSight account to use for future communications. This field is required if `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon QuickSight account.
  late final Output<String?> contactNumber;

  /// Active Directory ID that is associated with your Amazon QuickSight account.
  late final Output<String?> directoryId;

  /// Edition of Amazon QuickSight that you want your account to have. Currently, you can choose from `STANDARD`, `ENTERPRISE` or `ENTERPRISE_AND_Q`.
  late final Output<String> edition;

  /// Email address of the author of the Amazon QuickSight account to use for future communications. This field is required if `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon QuickSight account.
  late final Output<String?> emailAddress;

  /// First name of the author of the Amazon QuickSight account to use for future communications. This field is required if `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon QuickSight account.
  late final Output<String?> firstName;

  /// The Amazon Resource Name (ARN) for the IAM Identity Center instance.
  late final Output<String?> iamIdentityCenterInstanceArn;

  /// Last name of the author of the Amazon QuickSight account to use for future communications. This field is required if `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon QuickSight account.
  late final Output<String?> lastName;

  /// Email address that you want Amazon QuickSight to send notifications to regarding your Amazon QuickSight account or Amazon QuickSight subscription.
  ///
  /// The following arguments are optional:
  late final Output<String> notificationEmail;

  /// Reader group associated with your Active Directory or IAM Identity Center account.
  late final Output<List<String>?> readerGroups;

  /// Reader PRO group associated with your Active Directory or IAM Identity Center account.
  late final Output<List<String>?> readerProGroups;

  /// Realm of the Active Directory that is associated with your Amazon QuickSight account.
  late final Output<String?> realm;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  AccountSubscription(
    String name, {
    AccountSubscriptionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/accountSubscription:AccountSubscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountName = registerOutput<String>('accountName');
    this.accountSubscriptionStatus =
        registerOutput<String>('accountSubscriptionStatus');
    this.activeDirectoryName = registerOutput<String?>('activeDirectoryName');
    this.adminGroups = registerOutput<List<String>?>('adminGroups');
    this.adminProGroups = registerOutput<List<String>?>('adminProGroups');
    this.authenticationMethod = registerOutput<String>('authenticationMethod');
    this.authorGroups = registerOutput<List<String>?>('authorGroups');
    this.authorProGroups = registerOutput<List<String>?>('authorProGroups');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.contactNumber = registerOutput<String?>('contactNumber');
    this.directoryId = registerOutput<String?>('directoryId');
    this.edition = registerOutput<String>('edition');
    this.emailAddress = registerOutput<String?>('emailAddress');
    this.firstName = registerOutput<String?>('firstName');
    this.iamIdentityCenterInstanceArn =
        registerOutput<String?>('iamIdentityCenterInstanceArn');
    this.lastName = registerOutput<String?>('lastName');
    this.notificationEmail = registerOutput<String>('notificationEmail');
    this.readerGroups = registerOutput<List<String>?>('readerGroups');
    this.readerProGroups = registerOutput<List<String>?>('readerProGroups');
    this.realm = registerOutput<String?>('realm');
    this.region = registerOutput<String>('region');
  }
}
