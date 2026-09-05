import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_subscription_args.dart';
import 'account_subscription_state.dart';

/// Resource for managing an AWS QuickSight Account Subscription.
///
/// &gt; Due to the absence of the `adminGroup`, `authorGroup`, `readerGroup`, `adminProGroup`, `authorProGroup`, and `readerProGroup` fields in the [`DescribeAccountSettings`](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeAccountSettings.html) API response, changes made to these groups post-subscription will not be detected by this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const subscription = new aws.quicksight.AccountSubscription("subscription", {
///     accountName: "quicksight-pulumi",
///     authenticationMethod: "IAM_AND_QUICKSIGHT",
///     edition: "ENTERPRISE",
///     notificationEmail: "notification@email.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// subscription = aws.quicksight.AccountSubscription("subscription",
///     account_name="quicksight-pulumi",
///     authentication_method="IAM_AND_QUICKSIGHT",
///     edition="ENTERPRISE",
///     notification_email="notification@email.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subscription = new Aws.Quicksight.AccountSubscription("subscription", new()
///     {
///         AccountName = "quicksight-pulumi",
///         AuthenticationMethod = "IAM_AND_QUICKSIGHT",
///         Edition = "ENTERPRISE",
///         NotificationEmail = "notification@email.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewAccountSubscription(ctx, "subscription", &quicksight.AccountSubscriptionArgs{
/// 			AccountName:          pulumi.String("quicksight-pulumi"),
/// 			AuthenticationMethod: pulumi.String("IAM_AND_QUICKSIGHT"),
/// 			Edition:              pulumi.String("ENTERPRISE"),
/// 			NotificationEmail:    pulumi.String("notification@email.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_quicksight_accountsubscription" "subscription" {
///   account_name          = "quicksight-pulumi"
///   authentication_method = "IAM_AND_QUICKSIGHT"
///   edition               = "ENTERPRISE"
///   notification_email    = "notification@email.com"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var subscription = new AccountSubscription("subscription", AccountSubscriptionArgs.builder()
///             .accountName("quicksight-pulumi")
///             .authenticationMethod("IAM_AND_QUICKSIGHT")
///             .edition("ENTERPRISE")
///             .notificationEmail("notification@email.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subscription:
///     type: aws:quicksight:AccountSubscription
///     properties:
///       accountName: quicksight-pulumi
///       authenticationMethod: IAM_AND_QUICKSIGHT
///       edition: ENTERPRISE
///       notificationEmail: notification@email.com
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight Account Subscription using `awsAccountId`. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/accountSubscription:AccountSubscription example "012345678901"
/// ```
class AccountSubscription extends pulumi.CustomResource {
  /// Name of your Amazon QuickSight account. This name is unique over all of AWS, and it appears only when users sign in.
  late final pulumi.Output<String> accountName;
  /// Status of the Amazon QuickSight account's subscription.
  late final pulumi.Output<String> accountSubscriptionStatus;
  /// Name of your Active Directory. This field is required if `ACTIVE_DIRECTORY` is the selected authentication method of the new Amazon QuickSight account.
  late final pulumi.Output<String?> activeDirectoryName;
  /// Admin group associated with your Active Directory or IAM Identity Center account. This field is required if `ACTIVE_DIRECTORY` or `IAM_IDENTITY_CENTER` is the selected authentication method of the new Amazon QuickSight account.
  late final pulumi.Output<List<String>?> adminGroups;
  /// Admin PRO group associated with your Active Directory or IAM Identity Center account.
  late final pulumi.Output<List<String>?> adminProGroups;
  /// Method that you want to use to authenticate your Amazon QuickSight account. Currently, the valid values for this parameter are `IAM_AND_QUICKSIGHT`, `IAM_ONLY`, `IAM_IDENTITY_CENTER`, and `ACTIVE_DIRECTORY`.
  late final pulumi.Output<String> authenticationMethod;
  /// Author group associated with your Active Directory or IAM Identity Center account.
  late final pulumi.Output<List<String>?> authorGroups;
  /// Author PRO group associated with your Active Directory or IAM Identity Center account.
  late final pulumi.Output<List<String>?> authorProGroups;
  /// AWS account ID. Defaults to automatically determined account ID of the Pulumi AWS provider.
  late final pulumi.Output<String> awsAccountId;
  /// A 10-digit phone number for the author of the Amazon QuickSight account to use for future communications. This field is required if `ENTERPRISE_AND_Q` is the selected edition of the new Amazon QuickSight account.
  late final pulumi.Output<String?> contactNumber;
  /// Active Directory ID that is associated with your Amazon QuickSight account.
  late final pulumi.Output<String?> directoryId;
  /// Edition of Amazon QuickSight that you want your account to have. Currently, you can choose from `STANDARD`, `ENTERPRISE` or `ENTERPRISE_AND_Q`.
  late final pulumi.Output<String> edition;
  /// Email address of the author of the Amazon QuickSight account to use for future communications. This field is required if `ENTERPRISE_AND_Q` is the selected edition of the new Amazon QuickSight account.
  late final pulumi.Output<String?> emailAddress;
  /// First name of the author of the Amazon QuickSight account to use for future communications. This field is required if `ENTERPRISE_AND_Q` is the selected edition of the new Amazon QuickSight account.
  late final pulumi.Output<String?> firstName;
  /// ARN for the IAM Identity Center instance.
  late final pulumi.Output<String?> iamIdentityCenterInstanceArn;
  /// Last name of the author of the Amazon QuickSight account to use for future communications. This field is required if `ENTERPRISE_AND_Q` is the selected edition of the new Amazon QuickSight account.
  late final pulumi.Output<String?> lastName;
  /// Email address that you want Amazon QuickSight to send notifications to regarding your Amazon QuickSight account or Amazon QuickSight subscription.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> notificationEmail;
  /// Reader group associated with your Active Directory or IAM Identity Center account.
  late final pulumi.Output<List<String>?> readerGroups;
  /// Reader PRO group associated with your Active Directory or IAM Identity Center account.
  late final pulumi.Output<List<String>?> readerProGroups;
  /// Realm of the Active Directory that is associated with your Amazon QuickSight account.
  late final pulumi.Output<String?> realm;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [AccountSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountSubscription]. {@macro pulumi_quicksight_account_subscription_account_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountSubscription(
    String name, {
    AccountSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/accountSubscription:AccountSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accountName = registerOutput<String>('accountName');
    accountSubscriptionStatus = registerOutput<String>('accountSubscriptionStatus');
    activeDirectoryName = registerOutput<String?>('activeDirectoryName');
    adminGroups = registerOutput<List<String>?>('adminGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    adminProGroups = registerOutput<List<String>?>('adminProGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authenticationMethod = registerOutput<String>('authenticationMethod');
    authorGroups = registerOutput<List<String>?>('authorGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authorProGroups = registerOutput<List<String>?>('authorProGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    awsAccountId = registerOutput<String>('awsAccountId');
    contactNumber = registerOutput<String?>('contactNumber');
    directoryId = registerOutput<String?>('directoryId');
    edition = registerOutput<String>('edition');
    emailAddress = registerOutput<String?>('emailAddress');
    firstName = registerOutput<String?>('firstName');
    iamIdentityCenterInstanceArn = registerOutput<String?>('iamIdentityCenterInstanceArn');
    lastName = registerOutput<String?>('lastName');
    notificationEmail = registerOutput<String>('notificationEmail');
    readerGroups = registerOutput<List<String>?>('readerGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    readerProGroups = registerOutput<List<String>?>('readerProGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    realm = registerOutput<String?>('realm');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [AccountSubscription] resource's state with the given [name] and [id].
  static AccountSubscription get(
    String name,
    pulumi.Input<String> id, {
    AccountSubscriptionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccountSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccountSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/accountSubscription:AccountSubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    accountSubscriptionStatus = registerOutput<String>('accountSubscriptionStatus');
    activeDirectoryName = registerOutput<String?>('activeDirectoryName');
    adminGroups = registerOutput<List<String>?>('adminGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    adminProGroups = registerOutput<List<String>?>('adminProGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authenticationMethod = registerOutput<String>('authenticationMethod');
    authorGroups = registerOutput<List<String>?>('authorGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authorProGroups = registerOutput<List<String>?>('authorProGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    awsAccountId = registerOutput<String>('awsAccountId');
    contactNumber = registerOutput<String?>('contactNumber');
    directoryId = registerOutput<String?>('directoryId');
    edition = registerOutput<String>('edition');
    emailAddress = registerOutput<String?>('emailAddress');
    firstName = registerOutput<String?>('firstName');
    iamIdentityCenterInstanceArn = registerOutput<String?>('iamIdentityCenterInstanceArn');
    lastName = registerOutput<String?>('lastName');
    notificationEmail = registerOutput<String>('notificationEmail');
    readerGroups = registerOutput<List<String>?>('readerGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    readerProGroups = registerOutput<List<String>?>('readerProGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    realm = registerOutput<String?>('realm');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [AccountSubscription] resource.
  AccountSubscription.reference(String urn)
    : super(
        'aws:quicksight/accountSubscription:AccountSubscription',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountName = registerOutput<String>('accountName');
    accountSubscriptionStatus = registerOutput<String>('accountSubscriptionStatus');
    activeDirectoryName = registerOutput<String?>('activeDirectoryName');
    adminGroups = registerOutput<List<String>?>('adminGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    adminProGroups = registerOutput<List<String>?>('adminProGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authenticationMethod = registerOutput<String>('authenticationMethod');
    authorGroups = registerOutput<List<String>?>('authorGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authorProGroups = registerOutput<List<String>?>('authorProGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    awsAccountId = registerOutput<String>('awsAccountId');
    contactNumber = registerOutput<String?>('contactNumber');
    directoryId = registerOutput<String?>('directoryId');
    edition = registerOutput<String>('edition');
    emailAddress = registerOutput<String?>('emailAddress');
    firstName = registerOutput<String?>('firstName');
    iamIdentityCenterInstanceArn = registerOutput<String?>('iamIdentityCenterInstanceArn');
    lastName = registerOutput<String?>('lastName');
    notificationEmail = registerOutput<String>('notificationEmail');
    readerGroups = registerOutput<List<String>?>('readerGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    readerProGroups = registerOutput<List<String>?>('readerProGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    realm = registerOutput<String?>('realm');
    region = registerOutput<String>('region');
  }
}
