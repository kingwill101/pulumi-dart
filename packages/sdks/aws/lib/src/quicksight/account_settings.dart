import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_settings_args.dart';
import 'account_settings_state.dart';
import 'account_settings_timeouts.dart';

/// Resource for managing an AWS QuickSight Account Settings.
///
/// &gt; Deletion of this resource will not modify any settings, only remove the resource from state.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const subscription = new aws.quicksight.AccountSubscription("subscription", {
///     accountName: "quicksight-terraform",
///     authenticationMethod: "IAM_AND_QUICKSIGHT",
///     edition: "ENTERPRISE",
///     notificationEmail: "notification@email.com",
/// });
/// const example = new aws.quicksight.AccountSettings("example", {terminationProtectionEnabled: false}, {
///     dependsOn: [subscription],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// subscription = aws.quicksight.AccountSubscription("subscription",
///     account_name="quicksight-terraform",
///     authentication_method="IAM_AND_QUICKSIGHT",
///     edition="ENTERPRISE",
///     notification_email="notification@email.com")
/// example = aws.quicksight.AccountSettings("example", termination_protection_enabled=False,
/// opts = pulumi.ResourceOptions(depends_on=[subscription]))
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
///         AccountName = "quicksight-terraform",
///         AuthenticationMethod = "IAM_AND_QUICKSIGHT",
///         Edition = "ENTERPRISE",
///         NotificationEmail = "notification@email.com",
///     });
///
///     var example = new Aws.Quicksight.AccountSettings("example", new()
///     {
///         TerminationProtectionEnabled = false,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             subscription,
///         },
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
/// 		subscription, err := quicksight.NewAccountSubscription(ctx, "subscription", &quicksight.AccountSubscriptionArgs{
/// 			AccountName:          pulumi.String("quicksight-terraform"),
/// 			AuthenticationMethod: pulumi.String("IAM_AND_QUICKSIGHT"),
/// 			Edition:              pulumi.String("ENTERPRISE"),
/// 			NotificationEmail:    pulumi.String("notification@email.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = quicksight.NewAccountSettings(ctx, "example", &quicksight.AccountSettingsArgs{
/// 			TerminationProtectionEnabled: pulumi.Bool(false),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			subscription,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.aws.quicksight.AccountSettings;
/// import com.pulumi.aws.quicksight.AccountSettingsArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .accountName("quicksight-terraform")
///             .authenticationMethod("IAM_AND_QUICKSIGHT")
///             .edition("ENTERPRISE")
///             .notificationEmail("notification@email.com")
///             .build());
///
///         var example = new AccountSettings("example", AccountSettingsArgs.builder()
///             .terminationProtectionEnabled(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(subscription)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subscription:
///     type: aws:quicksight:AccountSubscription
///     properties:
///       accountName: quicksight-terraform
///       authenticationMethod: IAM_AND_QUICKSIGHT
///       edition: ENTERPRISE
///       notificationEmail: notification@email.com
///   example:
///     type: aws:quicksight:AccountSettings
///     properties:
///       terminationProtectionEnabled: false
///     options:
///       dependsOn:
///         - ${subscription}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Account Settings using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/accountSettings:AccountSettings example "012345678901"
/// ```
class AccountSettings extends pulumi.CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// The default namespace for this Amazon Web Services account. Currently, the default is `default`.
  late final pulumi.Output<String> defaultNamespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A boolean value that determines whether or not an Amazon QuickSight account can be deleted. If `true`, it does not allow the account to be deleted and results in an error message if a user tries to make a DeleteAccountSubscription request. If `false`, it will allow the account to be deleted.
  late final pulumi.Output<bool> terminationProtectionEnabled;
  late final pulumi.Output<AccountSettingsTimeouts?> timeouts;

  /// Creates a new [AccountSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountSettings]. {@macro pulumi_quicksight_account_settings_account_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountSettings(
    String name, {
    AccountSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:quicksight/accountSettings:AccountSettings',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    awsAccountId = registerOutput<String>('awsAccountId');
    defaultNamespace = registerOutput<String>('defaultNamespace');
    region = registerOutput<String>('region');
    terminationProtectionEnabled = registerOutput<bool>(
      'terminationProtectionEnabled',
    );
    timeouts = registerOutput<AccountSettingsTimeouts?>('timeouts');
  }

  /// Gets an existing [AccountSettings] resource's state with the given [name] and [id].
  static AccountSettings get(
    String name,
    pulumi.Input<String> id, {
    AccountSettingsState? state,
  }) {
    return AccountSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:quicksight/accountSettings:AccountSettings',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    awsAccountId = registerOutput<String>('awsAccountId');
    defaultNamespace = registerOutput<String>('defaultNamespace');
    region = registerOutput<String>('region');
    terminationProtectionEnabled = registerOutput<bool>(
      'terminationProtectionEnabled',
    );
    timeouts = registerOutput<AccountSettingsTimeouts?>('timeouts');
  }
}
