import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_pool_account_recovery_setting.dart';
import 'user_pool_admin_create_user_config.dart';
import 'user_pool_args.dart';
import 'user_pool_device_configuration.dart';
import 'user_pool_email_configuration.dart';
import 'user_pool_email_mfa_configuration.dart';
import 'user_pool_lambda_config.dart';
import 'user_pool_password_policy.dart';
import 'user_pool_schema.dart';
import 'user_pool_sign_in_policy.dart';
import 'user_pool_sms_configuration.dart';
import 'user_pool_software_token_mfa_configuration.dart';
import 'user_pool_user_attribute_update_settings.dart';
import 'user_pool_user_pool_add_ons.dart';
import 'user_pool_username_configuration.dart';
import 'user_pool_verification_message_template.dart';
import 'user_pool_web_authn_configuration.dart';

/// Provides a Cognito User Pool resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const pool = new aws.cognito.UserPool("pool", {name: "mypool"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// pool = aws.cognito.UserPool("pool", name="mypool")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new Aws.Cognito.UserPool("pool", new()
///     {
///         Name = "mypool",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognito.NewUserPool(ctx, "pool", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("mypool"),
/// 		})
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
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
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
///         var pool = new UserPool("pool", UserPoolArgs.builder()
///             .name("mypool")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pool:
///     type: aws:cognito:UserPool
///     properties:
///       name: mypool
/// ```
///
///
/// ### Enabling SMS and Software Token Multi-Factor Authentication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.UserPool("example", {
///     mfaConfiguration: "ON",
///     smsAuthenticationMessage: "Your code is {####}",
///     smsConfiguration: {
///         externalId: "example",
///         snsCallerArn: exampleAwsIamRole.arn,
///         snsRegion: "us-east-1",
///     },
///     softwareTokenMfaConfiguration: {
///         enabled: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example",
///     mfa_configuration="ON",
///     sms_authentication_message="Your code is {####}",
///     sms_configuration={
///         "external_id": "example",
///         "sns_caller_arn": example_aws_iam_role["arn"],
///         "sns_region": "us-east-1",
///     },
///     software_token_mfa_configuration={
///         "enabled": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cognito.UserPool("example", new()
///     {
///         MfaConfiguration = "ON",
///         SmsAuthenticationMessage = "Your code is {####}",
///         SmsConfiguration = new Aws.Cognito.Inputs.UserPoolSmsConfigurationArgs
///         {
///             ExternalId = "example",
///             SnsCallerArn = exampleAwsIamRole.Arn,
///             SnsRegion = "us-east-1",
///         },
///         SoftwareTokenMfaConfiguration = new Aws.Cognito.Inputs.UserPoolSoftwareTokenMfaConfigurationArgs
///         {
///             Enabled = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// 			MfaConfiguration:         pulumi.String("ON"),
/// 			SmsAuthenticationMessage: pulumi.String("Your code is {####}"),
/// 			SmsConfiguration: &cognito.UserPoolSmsConfigurationArgs{
/// 				ExternalId:   pulumi.String("example"),
/// 				SnsCallerArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 				SnsRegion:    pulumi.String("us-east-1"),
/// 			},
/// 			SoftwareTokenMfaConfiguration: &cognito.UserPoolSoftwareTokenMfaConfigurationArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 		})
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
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.cognito.inputs.UserPoolSmsConfigurationArgs;
/// import com.pulumi.aws.cognito.inputs.UserPoolSoftwareTokenMfaConfigurationArgs;
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
///         var example = new UserPool("example", UserPoolArgs.builder()
///             .mfaConfiguration("ON")
///             .smsAuthenticationMessage("Your code is {####}")
///             .smsConfiguration(UserPoolSmsConfigurationArgs.builder()
///                 .externalId("example")
///                 .snsCallerArn(exampleAwsIamRole.arn())
///                 .snsRegion("us-east-1")
///                 .build())
///             .softwareTokenMfaConfiguration(UserPoolSoftwareTokenMfaConfigurationArgs.builder()
///                 .enabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cognito:UserPool
///     properties:
///       mfaConfiguration: ON
///       smsAuthenticationMessage: Your code is {####}
///       smsConfiguration:
///         externalId: example
///         snsCallerArn: ${exampleAwsIamRole.arn}
///         snsRegion: us-east-1
///       softwareTokenMfaConfiguration:
///         enabled: true
/// ```
///
///
/// ### Using Account Recovery Setting
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.cognito.UserPool("test", {
///     name: "mypool",
///     accountRecoverySetting: {
///         recoveryMechanisms: [
///             {
///                 name: "verified_email",
///                 priority: 1,
///             },
///             {
///                 name: "verified_phone_number",
///                 priority: 2,
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cognito.UserPool("test",
///     name="mypool",
///     account_recovery_setting={
///         "recovery_mechanisms": [
///             {
///                 "name": "verified_email",
///                 "priority": 1,
///             },
///             {
///                 "name": "verified_phone_number",
///                 "priority": 2,
///             },
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Cognito.UserPool("test", new()
///     {
///         Name = "mypool",
///         AccountRecoverySetting = new Aws.Cognito.Inputs.UserPoolAccountRecoverySettingArgs
///         {
///             RecoveryMechanisms = new[]
///             {
///                 new Aws.Cognito.Inputs.UserPoolAccountRecoverySettingRecoveryMechanismArgs
///                 {
///                     Name = "verified_email",
///                     Priority = 1,
///                 },
///                 new Aws.Cognito.Inputs.UserPoolAccountRecoverySettingRecoveryMechanismArgs
///                 {
///                     Name = "verified_phone_number",
///                     Priority = 2,
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognito.NewUserPool(ctx, "test", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("mypool"),
/// 			AccountRecoverySetting: &cognito.UserPoolAccountRecoverySettingArgs{
/// 				RecoveryMechanisms: cognito.UserPoolAccountRecoverySettingRecoveryMechanismArray{
/// 					&cognito.UserPoolAccountRecoverySettingRecoveryMechanismArgs{
/// 						Name:     pulumi.String("verified_email"),
/// 						Priority: pulumi.Int(1),
/// 					},
/// 					&cognito.UserPoolAccountRecoverySettingRecoveryMechanismArgs{
/// 						Name:     pulumi.String("verified_phone_number"),
/// 						Priority: pulumi.Int(2),
/// 					},
/// 				},
/// 			},
/// 		})
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
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.cognito.inputs.UserPoolAccountRecoverySettingArgs;
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
///         var test = new UserPool("test", UserPoolArgs.builder()
///             .name("mypool")
///             .accountRecoverySetting(UserPoolAccountRecoverySettingArgs.builder()
///                 .recoveryMechanisms(
///                     UserPoolAccountRecoverySettingRecoveryMechanismArgs.builder()
///                         .name("verified_email")
///                         .priority(1)
///                         .build(),
///                     UserPoolAccountRecoverySettingRecoveryMechanismArgs.builder()
///                         .name("verified_phone_number")
///                         .priority(2)
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:cognito:UserPool
///     properties:
///       name: mypool
///       accountRecoverySetting:
///         recoveryMechanisms:
///           - name: verified_email
///             priority: 1
///           - name: verified_phone_number
///             priority: 2
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito User Pools using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/userPool:UserPool pool us-west-2_abc123
/// ```
class UserPool extends pulumi.CustomResource {
  /// Configuration block to define which verified available method a user can use to recover their forgotten password. Detailed below.
  late final pulumi.Output<UserPoolAccountRecoverySetting?>
  accountRecoverySetting;

  /// Configuration block for creating a new user profile. Detailed below.
  late final pulumi.Output<UserPoolAdminCreateUserConfig> adminCreateUserConfig;

  /// Attributes supported as an alias for this user pool. Valid values: `phone_number`, `email`, or `preferred_username`. Conflicts with `username_attributes`.
  late final pulumi.Output<List<String>?> aliasAttributes;

  /// ARN of the user pool.
  late final pulumi.Output<String> arn;

  /// Attributes to be auto-verified. Valid values: `email`, `phone_number`.
  late final pulumi.Output<List<String>?> autoVerifiedAttributes;

  /// Date the user pool was created.
  late final pulumi.Output<String> creationDate;

  /// A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use a custom domain to host the sign-up and sign-in pages for your application. For example: `auth.example.com`.
  late final pulumi.Output<String> customDomain;

  /// When active, DeletionProtection prevents accidental deletion of your user pool. Before you can delete a user pool that you have protected against deletion, you must deactivate this feature. Valid values are `ACTIVE` and `INACTIVE`, Default value is `INACTIVE`.
  late final pulumi.Output<String?> deletionProtection;

  /// Configuration block for the user pool's device tracking. Detailed below.
  late final pulumi.Output<UserPoolDeviceConfiguration?> deviceConfiguration;

  /// Holds the domain prefix if the user pool has a domain associated with it.
  late final pulumi.Output<String> domain;

  /// Configuration block for configuring email. Detailed below.
  late final pulumi.Output<UserPoolEmailConfiguration?> emailConfiguration;

  /// Configuration block for configuring email Multi-Factor Authentication (MFA); requires at least 2 `account_recovery_setting` entries; requires an `email_configuration` configuration block. Effective only when `mfa_configuration` is `ON` or `OPTIONAL`. Detailed below.
  late final pulumi.Output<UserPoolEmailMfaConfiguration?>
  emailMfaConfiguration;

  /// String representing the email verification message. Conflicts with `verification_message_template` configuration block `email_message` argument.
  late final pulumi.Output<String> emailVerificationMessage;

  /// String representing the email verification subject. Conflicts with `verification_message_template` configuration block `email_subject` argument.
  late final pulumi.Output<String> emailVerificationSubject;

  /// Endpoint name of the user pool. Example format: `cognito-idp.REGION.amazonaws.com/xxxx_yyyyy`
  late final pulumi.Output<String> endpoint;

  /// A number estimating the size of the user pool.
  late final pulumi.Output<int> estimatedNumberOfUsers;

  /// Configuration block for the AWS Lambda triggers associated with the user pool. Detailed below.
  late final pulumi.Output<UserPoolLambdaConfig?> lambdaConfig;

  /// Date the user pool was last modified.
  late final pulumi.Output<String> lastModifiedDate;

  /// Multi-Factor Authentication (MFA) configuration for the User Pool. Defaults of `OFF`. Valid values are `OFF` (MFA Tokens are not required), `ON` (MFA is required for all users to sign in; requires at least one of `email_mfa_configuration`, `sms_configuration` or `software_token_mfa_configuration` to be configured), or `OPTIONAL` (MFA Will be required only for individual users who have MFA Enabled; requires at least one of `email_mfa_configuration`, `sms_configuration` or `software_token_mfa_configuration` to be configured).
  late final pulumi.Output<String?> mfaConfiguration;

  /// Name of the user pool.
  late final pulumi.Output<String> name;

  /// Configuration block for information about the user pool password policy. Detailed below.
  late final pulumi.Output<UserPoolPasswordPolicy> passwordPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block for the schema attributes of a user pool. Detailed below. Schema attributes from the [standard attribute set](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#cognito-user-pools-standard-attributes) only need to be specified if they are different from the default configuration. Attributes can be added, but not modified or removed. Maximum of 50 attributes.
  late final pulumi.Output<List<UserPoolSchema>?> schemas;

  /// Configuration block for information about the user pool sign in policy. Detailed below.
  late final pulumi.Output<UserPoolSignInPolicy> signInPolicy;

  /// String representing the SMS authentication message. The Message must contain the `{####}` placeholder, which will be replaced with the code.
  late final pulumi.Output<String?> smsAuthenticationMessage;

  /// Configuration block for Short Message Service (SMS) settings. Detailed below. These settings apply to SMS user verification and SMS Multi-Factor Authentication (MFA). SMS MFA is activated only when `mfa_configuration` is set to `ON` or `OPTIONAL` along with this block. Due to Cognito API restrictions, the SMS configuration cannot be removed without recreating the Cognito User Pool. For user data safety, this resource will ignore the removal of this configuration by disabling drift detection. To force resource recreation after this configuration has been applied, see the `taint` command.
  late final pulumi.Output<UserPoolSmsConfiguration> smsConfiguration;

  /// String representing the SMS verification message. Conflicts with `verification_message_template` configuration block `sms_message` argument.
  late final pulumi.Output<String> smsVerificationMessage;

  /// Configuration block for software token Mult-Factor Authentication (MFA) settings. Effective only when `mfa_configuration` is `ON` or `OPTIONAL`. Detailed below.
  late final pulumi.Output<UserPoolSoftwareTokenMfaConfiguration?>
  softwareTokenMfaConfiguration;

  /// Map of tags to assign to the User Pool. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Configuration block for user attribute update settings. Detailed below.
  late final pulumi.Output<UserPoolUserAttributeUpdateSettings?>
  userAttributeUpdateSettings;

  /// Configuration block for user pool add-ons to enable user pool advanced security mode features. Detailed below.
  late final pulumi.Output<UserPoolUserPoolAddOns?> userPoolAddOns;

  /// The user pool [feature plan](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html), or tier. Valid values: `LITE`, `ESSENTIALS`, `PLUS`.
  late final pulumi.Output<String> userPoolTier;

  /// Whether email addresses or phone numbers can be specified as usernames when a user signs up. Conflicts with `alias_attributes`.
  late final pulumi.Output<List<String>?> usernameAttributes;

  /// Configuration block for username configuration. Detailed below.
  late final pulumi.Output<UserPoolUsernameConfiguration> usernameConfiguration;

  /// Configuration block for verification message templates. Detailed below.
  late final pulumi.Output<UserPoolVerificationMessageTemplate>
  verificationMessageTemplate;

  /// Configuration block for web authn configuration. Detailed below.
  late final pulumi.Output<UserPoolWebAuthnConfiguration?>
  webAuthnConfiguration;

  /// Creates a new [UserPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserPool]. {@macro pulumi_cognito_user_pool_user_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserPool(
    String name, {
    UserPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cognito/userPool:UserPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.accountRecoverySetting =
        registerOutput<UserPoolAccountRecoverySetting?>(
          'accountRecoverySetting',
        );
    this.adminCreateUserConfig = registerOutput<UserPoolAdminCreateUserConfig>(
      'adminCreateUserConfig',
    );
    this.aliasAttributes = registerOutput<List<String>?>('aliasAttributes');
    this.arn = registerOutput<String>('arn');
    this.autoVerifiedAttributes = registerOutput<List<String>?>(
      'autoVerifiedAttributes',
    );
    this.creationDate = registerOutput<String>('creationDate');
    this.customDomain = registerOutput<String>('customDomain');
    this.deletionProtection = registerOutput<String?>('deletionProtection');
    this.deviceConfiguration = registerOutput<UserPoolDeviceConfiguration?>(
      'deviceConfiguration',
    );
    this.domain = registerOutput<String>('domain');
    this.emailConfiguration = registerOutput<UserPoolEmailConfiguration?>(
      'emailConfiguration',
    );
    this.emailMfaConfiguration = registerOutput<UserPoolEmailMfaConfiguration?>(
      'emailMfaConfiguration',
    );
    this.emailVerificationMessage = registerOutput<String>(
      'emailVerificationMessage',
    );
    this.emailVerificationSubject = registerOutput<String>(
      'emailVerificationSubject',
    );
    this.endpoint = registerOutput<String>('endpoint');
    this.estimatedNumberOfUsers = registerOutput<int>('estimatedNumberOfUsers');
    this.lambdaConfig = registerOutput<UserPoolLambdaConfig?>('lambdaConfig');
    this.lastModifiedDate = registerOutput<String>('lastModifiedDate');
    this.mfaConfiguration = registerOutput<String?>('mfaConfiguration');
    this.name = registerOutput<String>('name');
    this.passwordPolicy = registerOutput<UserPoolPasswordPolicy>(
      'passwordPolicy',
    );
    this.region = registerOutput<String>('region');
    this.schemas = registerOutput<List<UserPoolSchema>?>('schemas');
    this.signInPolicy = registerOutput<UserPoolSignInPolicy>('signInPolicy');
    this.smsAuthenticationMessage = registerOutput<String?>(
      'smsAuthenticationMessage',
    );
    this.smsConfiguration = registerOutput<UserPoolSmsConfiguration>(
      'smsConfiguration',
    );
    this.smsVerificationMessage = registerOutput<String>(
      'smsVerificationMessage',
    );
    this.softwareTokenMfaConfiguration =
        registerOutput<UserPoolSoftwareTokenMfaConfiguration?>(
          'softwareTokenMfaConfiguration',
        );
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userAttributeUpdateSettings =
        registerOutput<UserPoolUserAttributeUpdateSettings?>(
          'userAttributeUpdateSettings',
        );
    this.userPoolAddOns = registerOutput<UserPoolUserPoolAddOns?>(
      'userPoolAddOns',
    );
    this.userPoolTier = registerOutput<String>('userPoolTier');
    this.usernameAttributes = registerOutput<List<String>?>(
      'usernameAttributes',
    );
    this.usernameConfiguration = registerOutput<UserPoolUsernameConfiguration>(
      'usernameConfiguration',
    );
    this.verificationMessageTemplate =
        registerOutput<UserPoolVerificationMessageTemplate>(
          'verificationMessageTemplate',
        );
    this.webAuthnConfiguration = registerOutput<UserPoolWebAuthnConfiguration?>(
      'webAuthnConfiguration',
    );
  }
}
