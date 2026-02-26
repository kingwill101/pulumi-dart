import 'package:pulumi/pulumi.dart';
import 'account_subscription_args.dart';

/// Resource for managing an AWS QuickSight Account Subscription.
///
/// > Due to the absence of the <span pulumi-lang-nodejs="`adminGroup`" pulumi-lang-dotnet="`AdminGroup`" pulumi-lang-go="`adminGroup`" pulumi-lang-python="`admin_group`" pulumi-lang-yaml="`adminGroup`" pulumi-lang-java="`adminGroup`">`admin_group`</span>, <span pulumi-lang-nodejs="`authorGroup`" pulumi-lang-dotnet="`AuthorGroup`" pulumi-lang-go="`authorGroup`" pulumi-lang-python="`author_group`" pulumi-lang-yaml="`authorGroup`" pulumi-lang-java="`authorGroup`">`author_group`</span>, <span pulumi-lang-nodejs="`readerGroup`" pulumi-lang-dotnet="`ReaderGroup`" pulumi-lang-go="`readerGroup`" pulumi-lang-python="`reader_group`" pulumi-lang-yaml="`readerGroup`" pulumi-lang-java="`readerGroup`">`reader_group`</span>, <span pulumi-lang-nodejs="`adminProGroup`" pulumi-lang-dotnet="`AdminProGroup`" pulumi-lang-go="`adminProGroup`" pulumi-lang-python="`admin_pro_group`" pulumi-lang-yaml="`adminProGroup`" pulumi-lang-java="`adminProGroup`">`admin_pro_group`</span>, <span pulumi-lang-nodejs="`authorProGroup`" pulumi-lang-dotnet="`AuthorProGroup`" pulumi-lang-go="`authorProGroup`" pulumi-lang-python="`author_pro_group`" pulumi-lang-yaml="`authorProGroup`" pulumi-lang-java="`authorProGroup`">`author_pro_group`</span>, and <span pulumi-lang-nodejs="`readerProGroup`" pulumi-lang-dotnet="`ReaderProGroup`" pulumi-lang-go="`readerProGroup`" pulumi-lang-python="`reader_pro_group`" pulumi-lang-yaml="`readerProGroup`" pulumi-lang-java="`readerProGroup`">`reader_pro_group`</span> fields in the [`DescribeAccountSettings`](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeAccountSettings.html) API response, changes made to these groups post-subscription will not be detected by this resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const subscription = new aws.quicksight.AccountSubscription("subscription", {
/// accountName: "quicksight-pulumi",
/// authenticationMethod: "IAM_AND_QUICKSIGHT",
/// edition: "ENTERPRISE",
/// notificationEmail: "notification@email.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// subscription = aws.quicksight.AccountSubscription("subscription",
/// account_name="quicksight-pulumi",
/// authentication_method="IAM_AND_QUICKSIGHT",
/// edition="ENTERPRISE",
/// notification_email="notification@email.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var subscription = new Aws.Quicksight.AccountSubscription("subscription", new()
/// {
/// AccountName = "quicksight-pulumi",
/// AuthenticationMethod = "IAM_AND_QUICKSIGHT",
/// Edition = "ENTERPRISE",
/// NotificationEmail = "notification@email.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := quicksight.NewAccountSubscription(ctx, "subscription", &quicksight.AccountSubscriptionArgs{
/// AccountName:          pulumi.String("quicksight-pulumi"),
/// AuthenticationMethod: pulumi.String("IAM_AND_QUICKSIGHT"),
/// Edition:              pulumi.String("ENTERPRISE"),
/// NotificationEmail:    pulumi.String("notification@email.com"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.AccountSubscription;
/// import com.pulumi.aws.quicksight.AccountSubscriptionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var subscription = new AccountSubscription("subscription", AccountSubscriptionArgs.builder()
/// .accountName("quicksight-pulumi")
/// .authenticationMethod("IAM_AND_QUICKSIGHT")
/// .edition("ENTERPRISE")
/// .notificationEmail("notification@email.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// subscription:
/// type: aws:quicksight:AccountSubscription
/// properties:
/// accountName: quicksight-pulumi
/// authenticationMethod: IAM_AND_QUICKSIGHT
/// edition: ENTERPRISE
/// notificationEmail: notification@email.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight Account Subscription using <span pulumi-lang-nodejs="`awsAccountId`" pulumi-lang-dotnet="`AwsAccountId`" pulumi-lang-go="`awsAccountId`" pulumi-lang-python="`aws_account_id`" pulumi-lang-yaml="`awsAccountId`" pulumi-lang-java="`awsAccountId`">`aws_account_id`</span>. For example:
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
