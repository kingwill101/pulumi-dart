import 'package:pulumi/pulumi.dart';
import '../user_pool_account_recovery_setting/user_pool_account_recovery_setting.dart';
import '../user_pool_admin_create_user_config/user_pool_admin_create_user_config.dart';
import '../user_pool_device_configuration/user_pool_device_configuration.dart';
import '../user_pool_email_configuration/user_pool_email_configuration.dart';
import '../user_pool_email_mfa_configuration/user_pool_email_mfa_configuration.dart';
import '../user_pool_lambda_config/user_pool_lambda_config.dart';
import '../user_pool_password_policy/user_pool_password_policy.dart';
import '../user_pool_schema/user_pool_schema.dart';
import '../user_pool_sign_in_policy/user_pool_sign_in_policy.dart';
import '../user_pool_sms_configuration/user_pool_sms_configuration.dart';
import '../user_pool_software_token_mfa_configuration/user_pool_software_token_mfa_configuration.dart';
import '../user_pool_user_attribute_update_settings/user_pool_user_attribute_update_settings.dart';
import '../user_pool_user_pool_add_ons/user_pool_user_pool_add_ons.dart';
import '../user_pool_username_configuration/user_pool_username_configuration.dart';
import '../user_pool_verification_message_template/user_pool_verification_message_template.dart';
import '../user_pool_web_authn_configuration/user_pool_web_authn_configuration.dart';
import 'user_pool_args.dart';

/// Provides a Cognito User Pool resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
/// <!--Start PulumiCodeChooser -->
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
/// var pool = new Aws.Cognito.UserPool("pool", new()
/// {
/// Name = "mypool",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cognito.NewUserPool(ctx, "pool", &cognito.UserPoolArgs{
/// Name: pulumi.String("mypool"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var pool = new UserPool("pool", UserPoolArgs.builder()
/// .name("mypool")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pool:
/// type: aws:cognito:UserPool
/// properties:
/// name: mypool
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Enabling SMS and Software Token Multi-Factor Authentication
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.UserPool("example", {
/// mfaConfiguration: "ON",
/// smsAuthenticationMessage: "Your code is {####}",
/// smsConfiguration: {
/// externalId: "example",
/// snsCallerArn: exampleAwsIamRole.arn,
/// snsRegion: "us-east-1",
/// },
/// softwareTokenMfaConfiguration: {
/// enabled: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example",
/// mfa_configuration="ON",
/// sms_authentication_message="Your code is {####}",
/// sms_configuration={
/// "external_id": "example",
/// "sns_caller_arn": example_aws_iam_role["arn"],
/// "sns_region": "us-east-1",
/// },
/// software_token_mfa_configuration={
/// "enabled": True,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Cognito.UserPool("example", new()
/// {
/// MfaConfiguration = "ON",
/// SmsAuthenticationMessage = "Your code is {####}",
/// SmsConfiguration = new Aws.Cognito.Inputs.UserPoolSmsConfigurationArgs
/// {
/// ExternalId = "example",
/// SnsCallerArn = exampleAwsIamRole.Arn,
/// SnsRegion = "us-east-1",
/// },
/// SoftwareTokenMfaConfiguration = new Aws.Cognito.Inputs.UserPoolSoftwareTokenMfaConfigurationArgs
/// {
/// Enabled = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// MfaConfiguration:         pulumi.String("ON"),
/// SmsAuthenticationMessage: pulumi.String("Your code is {####}"),
/// SmsConfiguration: &cognito.UserPoolSmsConfigurationArgs{
/// ExternalId:   pulumi.String("example"),
/// SnsCallerArn: pulumi.Any(exampleAwsIamRole.Arn),
/// SnsRegion:    pulumi.String("us-east-1"),
/// },
/// SoftwareTokenMfaConfiguration: &cognito.UserPoolSoftwareTokenMfaConfigurationArgs{
/// Enabled: pulumi.Bool(true),
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new UserPool("example", UserPoolArgs.builder()
/// .mfaConfiguration("ON")
/// .smsAuthenticationMessage("Your code is {####}")
/// .smsConfiguration(UserPoolSmsConfigurationArgs.builder()
/// .externalId("example")
/// .snsCallerArn(exampleAwsIamRole.arn())
/// .snsRegion("us-east-1")
/// .build())
/// .softwareTokenMfaConfiguration(UserPoolSoftwareTokenMfaConfigurationArgs.builder()
/// .enabled(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cognito:UserPool
/// properties:
/// mfaConfiguration: ON
/// smsAuthenticationMessage: Your code is {####}
/// smsConfiguration:
/// externalId: example
/// snsCallerArn: ${exampleAwsIamRole.arn}
/// snsRegion: us-east-1
/// softwareTokenMfaConfiguration:
/// enabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Using Account Recovery Setting
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.cognito.UserPool("test", {
/// name: "mypool",
/// accountRecoverySetting: {
/// recoveryMechanisms: [
/// {
/// name: "verified_email",
/// priority: 1,
/// },
/// {
/// name: "verified_phone_number",
/// priority: 2,
/// },
/// ],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cognito.UserPool("test",
/// name="mypool",
/// account_recovery_setting={
/// "recovery_mechanisms": [
/// {
/// "name": "verified_email",
/// "priority": 1,
/// },
/// {
/// "name": "verified_phone_number",
/// "priority": 2,
/// },
/// ],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Cognito.UserPool("test", new()
/// {
/// Name = "mypool",
/// AccountRecoverySetting = new Aws.Cognito.Inputs.UserPoolAccountRecoverySettingArgs
/// {
/// RecoveryMechanisms = new[]
/// {
/// new Aws.Cognito.Inputs.UserPoolAccountRecoverySettingRecoveryMechanismArgs
/// {
/// Name = "verified_email",
/// Priority = 1,
/// },
/// new Aws.Cognito.Inputs.UserPoolAccountRecoverySettingRecoveryMechanismArgs
/// {
/// Name = "verified_phone_number",
/// Priority = 2,
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cognito.NewUserPool(ctx, "test", &cognito.UserPoolArgs{
/// Name: pulumi.String("mypool"),
/// AccountRecoverySetting: &cognito.UserPoolAccountRecoverySettingArgs{
/// RecoveryMechanisms: cognito.UserPoolAccountRecoverySettingRecoveryMechanismArray{
/// &cognito.UserPoolAccountRecoverySettingRecoveryMechanismArgs{
/// Name:     pulumi.String("verified_email"),
/// Priority: pulumi.Int(1),
/// },
/// &cognito.UserPoolAccountRecoverySettingRecoveryMechanismArgs{
/// Name:     pulumi.String("verified_phone_number"),
/// Priority: pulumi.Int(2),
/// },
/// },
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new UserPool("test", UserPoolArgs.builder()
/// .name("mypool")
/// .accountRecoverySetting(UserPoolAccountRecoverySettingArgs.builder()
/// .recoveryMechanisms(
/// UserPoolAccountRecoverySettingRecoveryMechanismArgs.builder()
/// .name("verified_email")
/// .priority(1)
/// .build(),
/// UserPoolAccountRecoverySettingRecoveryMechanismArgs.builder()
/// .name("verified_phone_number")
/// .priority(2)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:cognito:UserPool
/// properties:
/// name: mypool
/// accountRecoverySetting:
/// recoveryMechanisms:
/// - name: verified_email
/// priority: 1
/// - name: verified_phone_number
/// priority: 2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Cognito User Pools using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/userPool:UserPool pool us-west-2_abc123
/// ```
class UserPool extends CustomResource {
  /// Configuration block to define which verified available method a user can use to recover their forgotten password. Detailed below.
  late final Output<UserPoolAccountRecoverySetting?> accountRecoverySetting;

  /// Configuration block for creating a new user profile. Detailed below.
  late final Output<UserPoolAdminCreateUserConfig> adminCreateUserConfig;

  /// Attributes supported as an alias for this user pool. Valid values: <span pulumi-lang-nodejs="`phoneNumber`" pulumi-lang-dotnet="`PhoneNumber`" pulumi-lang-go="`phoneNumber`" pulumi-lang-python="`phone_number`" pulumi-lang-yaml="`phoneNumber`" pulumi-lang-java="`phoneNumber`">`phone_number`</span>, <span pulumi-lang-nodejs="`email`" pulumi-lang-dotnet="`Email`" pulumi-lang-go="`email`" pulumi-lang-python="`email`" pulumi-lang-yaml="`email`" pulumi-lang-java="`email`">`email`</span>, or <span pulumi-lang-nodejs="`preferredUsername`" pulumi-lang-dotnet="`PreferredUsername`" pulumi-lang-go="`preferredUsername`" pulumi-lang-python="`preferred_username`" pulumi-lang-yaml="`preferredUsername`" pulumi-lang-java="`preferredUsername`">`preferred_username`</span>. Conflicts with <span pulumi-lang-nodejs="`usernameAttributes`" pulumi-lang-dotnet="`UsernameAttributes`" pulumi-lang-go="`usernameAttributes`" pulumi-lang-python="`username_attributes`" pulumi-lang-yaml="`usernameAttributes`" pulumi-lang-java="`usernameAttributes`">`username_attributes`</span>.
  late final Output<List<String>?> aliasAttributes;

  /// ARN of the user pool.
  late final Output<String> arn;

  /// Attributes to be auto-verified. Valid values: <span pulumi-lang-nodejs="`email`" pulumi-lang-dotnet="`Email`" pulumi-lang-go="`email`" pulumi-lang-python="`email`" pulumi-lang-yaml="`email`" pulumi-lang-java="`email`">`email`</span>, <span pulumi-lang-nodejs="`phoneNumber`" pulumi-lang-dotnet="`PhoneNumber`" pulumi-lang-go="`phoneNumber`" pulumi-lang-python="`phone_number`" pulumi-lang-yaml="`phoneNumber`" pulumi-lang-java="`phoneNumber`">`phone_number`</span>.
  late final Output<List<String>?> autoVerifiedAttributes;

  /// Date the user pool was created.
  late final Output<String> creationDate;

  /// A custom domain name that you provide to Amazon Cognito. This parameter applies only if you use a custom domain to host the sign-up and sign-in pages for your application. For example: `auth.example.com`.
  late final Output<String> customDomain;

  /// When active, DeletionProtection prevents accidental deletion of your user pool. Before you can delete a user pool that you have protected against deletion, you must deactivate this feature. Valid values are `ACTIVE` and `INACTIVE`, Default value is `INACTIVE`.
  late final Output<String?> deletionProtection;

  /// Configuration block for the user pool's device tracking. Detailed below.
  late final Output<UserPoolDeviceConfiguration?> deviceConfiguration;

  /// Holds the domain prefix if the user pool has a domain associated with it.
  late final Output<String> domain;

  /// Configuration block for configuring email. Detailed below.
  late final Output<UserPoolEmailConfiguration?> emailConfiguration;

  /// Configuration block for configuring email Multi-Factor Authentication (MFA); requires at least 2 <span pulumi-lang-nodejs="`accountRecoverySetting`" pulumi-lang-dotnet="`AccountRecoverySetting`" pulumi-lang-go="`accountRecoverySetting`" pulumi-lang-python="`account_recovery_setting`" pulumi-lang-yaml="`accountRecoverySetting`" pulumi-lang-java="`accountRecoverySetting`">`account_recovery_setting`</span> entries; requires an <span pulumi-lang-nodejs="`emailConfiguration`" pulumi-lang-dotnet="`EmailConfiguration`" pulumi-lang-go="`emailConfiguration`" pulumi-lang-python="`email_configuration`" pulumi-lang-yaml="`emailConfiguration`" pulumi-lang-java="`emailConfiguration`">`email_configuration`</span> configuration block. Effective only when <span pulumi-lang-nodejs="`mfaConfiguration`" pulumi-lang-dotnet="`MfaConfiguration`" pulumi-lang-go="`mfaConfiguration`" pulumi-lang-python="`mfa_configuration`" pulumi-lang-yaml="`mfaConfiguration`" pulumi-lang-java="`mfaConfiguration`">`mfa_configuration`</span> is `ON` or `OPTIONAL`. Detailed below.
  late final Output<UserPoolEmailMfaConfiguration?> emailMfaConfiguration;

  /// String representing the email verification message. Conflicts with <span pulumi-lang-nodejs="`verificationMessageTemplate`" pulumi-lang-dotnet="`VerificationMessageTemplate`" pulumi-lang-go="`verificationMessageTemplate`" pulumi-lang-python="`verification_message_template`" pulumi-lang-yaml="`verificationMessageTemplate`" pulumi-lang-java="`verificationMessageTemplate`">`verification_message_template`</span> configuration block <span pulumi-lang-nodejs="`emailMessage`" pulumi-lang-dotnet="`EmailMessage`" pulumi-lang-go="`emailMessage`" pulumi-lang-python="`email_message`" pulumi-lang-yaml="`emailMessage`" pulumi-lang-java="`emailMessage`">`email_message`</span> argument.
  late final Output<String> emailVerificationMessage;

  /// String representing the email verification subject. Conflicts with <span pulumi-lang-nodejs="`verificationMessageTemplate`" pulumi-lang-dotnet="`VerificationMessageTemplate`" pulumi-lang-go="`verificationMessageTemplate`" pulumi-lang-python="`verification_message_template`" pulumi-lang-yaml="`verificationMessageTemplate`" pulumi-lang-java="`verificationMessageTemplate`">`verification_message_template`</span> configuration block <span pulumi-lang-nodejs="`emailSubject`" pulumi-lang-dotnet="`EmailSubject`" pulumi-lang-go="`emailSubject`" pulumi-lang-python="`email_subject`" pulumi-lang-yaml="`emailSubject`" pulumi-lang-java="`emailSubject`">`email_subject`</span> argument.
  late final Output<String> emailVerificationSubject;

  /// Endpoint name of the user pool. Example format: `cognito-idp.REGION.amazonaws.com/xxxx_yyyyy`
  late final Output<String> endpoint;

  /// A number estimating the size of the user pool.
  late final Output<int> estimatedNumberOfUsers;

  /// Configuration block for the AWS Lambda triggers associated with the user pool. Detailed below.
  late final Output<UserPoolLambdaConfig?> lambdaConfig;

  /// Date the user pool was last modified.
  late final Output<String> lastModifiedDate;

  /// Multi-Factor Authentication (MFA) configuration for the User Pool. Defaults of `OFF`. Valid values are `OFF` (MFA Tokens are not required), `ON` (MFA is required for all users to sign in; requires at least one of <span pulumi-lang-nodejs="`emailMfaConfiguration`" pulumi-lang-dotnet="`EmailMfaConfiguration`" pulumi-lang-go="`emailMfaConfiguration`" pulumi-lang-python="`email_mfa_configuration`" pulumi-lang-yaml="`emailMfaConfiguration`" pulumi-lang-java="`emailMfaConfiguration`">`email_mfa_configuration`</span>, <span pulumi-lang-nodejs="`smsConfiguration`" pulumi-lang-dotnet="`SmsConfiguration`" pulumi-lang-go="`smsConfiguration`" pulumi-lang-python="`sms_configuration`" pulumi-lang-yaml="`smsConfiguration`" pulumi-lang-java="`smsConfiguration`">`sms_configuration`</span> or <span pulumi-lang-nodejs="`softwareTokenMfaConfiguration`" pulumi-lang-dotnet="`SoftwareTokenMfaConfiguration`" pulumi-lang-go="`softwareTokenMfaConfiguration`" pulumi-lang-python="`software_token_mfa_configuration`" pulumi-lang-yaml="`softwareTokenMfaConfiguration`" pulumi-lang-java="`softwareTokenMfaConfiguration`">`software_token_mfa_configuration`</span> to be configured), or `OPTIONAL` (MFA Will be required only for individual users who have MFA Enabled; requires at least one of <span pulumi-lang-nodejs="`emailMfaConfiguration`" pulumi-lang-dotnet="`EmailMfaConfiguration`" pulumi-lang-go="`emailMfaConfiguration`" pulumi-lang-python="`email_mfa_configuration`" pulumi-lang-yaml="`emailMfaConfiguration`" pulumi-lang-java="`emailMfaConfiguration`">`email_mfa_configuration`</span>, <span pulumi-lang-nodejs="`smsConfiguration`" pulumi-lang-dotnet="`SmsConfiguration`" pulumi-lang-go="`smsConfiguration`" pulumi-lang-python="`sms_configuration`" pulumi-lang-yaml="`smsConfiguration`" pulumi-lang-java="`smsConfiguration`">`sms_configuration`</span> or <span pulumi-lang-nodejs="`softwareTokenMfaConfiguration`" pulumi-lang-dotnet="`SoftwareTokenMfaConfiguration`" pulumi-lang-go="`softwareTokenMfaConfiguration`" pulumi-lang-python="`software_token_mfa_configuration`" pulumi-lang-yaml="`softwareTokenMfaConfiguration`" pulumi-lang-java="`softwareTokenMfaConfiguration`">`software_token_mfa_configuration`</span> to be configured).
  late final Output<String?> mfaConfiguration;

  /// Name of the user pool.
  late final Output<String> name;

  /// Configuration block for information about the user pool password policy. Detailed below.
  late final Output<UserPoolPasswordPolicy> passwordPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for the schema attributes of a user pool. Detailed below. Schema attributes from the [standard attribute set](https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#cognito-user-pools-standard-attributes) only need to be specified if they are different from the default configuration. Attributes can be added, but not modified or removed. Maximum of 50 attributes.
  late final Output<List<UserPoolSchema>?> schemas;

  /// Configuration block for information about the user pool sign in policy. Detailed below.
  late final Output<UserPoolSignInPolicy> signInPolicy;

  /// String representing the SMS authentication message. The Message must contain the `{####}` placeholder, which will be replaced with the code.
  late final Output<String?> smsAuthenticationMessage;

  /// Configuration block for Short Message Service (SMS) settings. Detailed below. These settings apply to SMS user verification and SMS Multi-Factor Authentication (MFA). SMS MFA is activated only when <span pulumi-lang-nodejs="`mfaConfiguration`" pulumi-lang-dotnet="`MfaConfiguration`" pulumi-lang-go="`mfaConfiguration`" pulumi-lang-python="`mfa_configuration`" pulumi-lang-yaml="`mfaConfiguration`" pulumi-lang-java="`mfaConfiguration`">`mfa_configuration`</span> is set to `ON` or `OPTIONAL` along with this block. Due to Cognito API restrictions, the SMS configuration cannot be removed without recreating the Cognito User Pool. For user data safety, this resource will ignore the removal of this configuration by disabling drift detection. To force resource recreation after this configuration has been applied, see the <span pulumi-lang-nodejs="`taint`" pulumi-lang-dotnet="`Taint`" pulumi-lang-go="`taint`" pulumi-lang-python="`taint`" pulumi-lang-yaml="`taint`" pulumi-lang-java="`taint`">`taint`</span> command.
  late final Output<UserPoolSmsConfiguration> smsConfiguration;

  /// String representing the SMS verification message. Conflicts with <span pulumi-lang-nodejs="`verificationMessageTemplate`" pulumi-lang-dotnet="`VerificationMessageTemplate`" pulumi-lang-go="`verificationMessageTemplate`" pulumi-lang-python="`verification_message_template`" pulumi-lang-yaml="`verificationMessageTemplate`" pulumi-lang-java="`verificationMessageTemplate`">`verification_message_template`</span> configuration block <span pulumi-lang-nodejs="`smsMessage`" pulumi-lang-dotnet="`SmsMessage`" pulumi-lang-go="`smsMessage`" pulumi-lang-python="`sms_message`" pulumi-lang-yaml="`smsMessage`" pulumi-lang-java="`smsMessage`">`sms_message`</span> argument.
  late final Output<String> smsVerificationMessage;

  /// Configuration block for software token Mult-Factor Authentication (MFA) settings. Effective only when <span pulumi-lang-nodejs="`mfaConfiguration`" pulumi-lang-dotnet="`MfaConfiguration`" pulumi-lang-go="`mfaConfiguration`" pulumi-lang-python="`mfa_configuration`" pulumi-lang-yaml="`mfaConfiguration`" pulumi-lang-java="`mfaConfiguration`">`mfa_configuration`</span> is `ON` or `OPTIONAL`. Detailed below.
  late final Output<UserPoolSoftwareTokenMfaConfiguration?>
      softwareTokenMfaConfiguration;

  /// Map of tags to assign to the User Pool. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block for user attribute update settings. Detailed below.
  late final Output<UserPoolUserAttributeUpdateSettings?>
      userAttributeUpdateSettings;

  /// Configuration block for user pool add-ons to enable user pool advanced security mode features. Detailed below.
  late final Output<UserPoolUserPoolAddOns?> userPoolAddOns;

  /// The user pool [feature plan](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html), or tier. Valid values: `LITE`, `ESSENTIALS`, `PLUS`.
  late final Output<String> userPoolTier;

  /// Whether email addresses or phone numbers can be specified as usernames when a user signs up. Conflicts with <span pulumi-lang-nodejs="`aliasAttributes`" pulumi-lang-dotnet="`AliasAttributes`" pulumi-lang-go="`aliasAttributes`" pulumi-lang-python="`alias_attributes`" pulumi-lang-yaml="`aliasAttributes`" pulumi-lang-java="`aliasAttributes`">`alias_attributes`</span>.
  late final Output<List<String>?> usernameAttributes;

  /// Configuration block for username configuration. Detailed below.
  late final Output<UserPoolUsernameConfiguration> usernameConfiguration;

  /// Configuration block for verification message templates. Detailed below.
  late final Output<UserPoolVerificationMessageTemplate>
      verificationMessageTemplate;

  /// Configuration block for web authn configuration. Detailed below.
  late final Output<UserPoolWebAuthnConfiguration?> webAuthnConfiguration;

  UserPool(
    String name, {
    UserPoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cognito/userPool:UserPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountRecoverySetting =
        Output.createUnknown<UserPoolAccountRecoverySetting?>();
    this.adminCreateUserConfig =
        Output.createUnknown<UserPoolAdminCreateUserConfig>();
    this.aliasAttributes = Output.createUnknown<List<String>?>();
    this.arn = Output.createUnknown<String>();
    this.autoVerifiedAttributes = Output.createUnknown<List<String>?>();
    this.creationDate = Output.createUnknown<String>();
    this.customDomain = Output.createUnknown<String>();
    this.deletionProtection = Output.createUnknown<String?>();
    this.deviceConfiguration =
        Output.createUnknown<UserPoolDeviceConfiguration?>();
    this.domain = Output.createUnknown<String>();
    this.emailConfiguration =
        Output.createUnknown<UserPoolEmailConfiguration?>();
    this.emailMfaConfiguration =
        Output.createUnknown<UserPoolEmailMfaConfiguration?>();
    this.emailVerificationMessage = Output.createUnknown<String>();
    this.emailVerificationSubject = Output.createUnknown<String>();
    this.endpoint = Output.createUnknown<String>();
    this.estimatedNumberOfUsers = Output.createUnknown<int>();
    this.lambdaConfig = Output.createUnknown<UserPoolLambdaConfig?>();
    this.lastModifiedDate = Output.createUnknown<String>();
    this.mfaConfiguration = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.passwordPolicy = Output.createUnknown<UserPoolPasswordPolicy>();
    this.region = Output.createUnknown<String>();
    this.schemas = Output.createUnknown<List<UserPoolSchema>?>();
    this.signInPolicy = Output.createUnknown<UserPoolSignInPolicy>();
    this.smsAuthenticationMessage = Output.createUnknown<String?>();
    this.smsConfiguration = Output.createUnknown<UserPoolSmsConfiguration>();
    this.smsVerificationMessage = Output.createUnknown<String>();
    this.softwareTokenMfaConfiguration =
        Output.createUnknown<UserPoolSoftwareTokenMfaConfiguration?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.userAttributeUpdateSettings =
        Output.createUnknown<UserPoolUserAttributeUpdateSettings?>();
    this.userPoolAddOns = Output.createUnknown<UserPoolUserPoolAddOns?>();
    this.userPoolTier = Output.createUnknown<String>();
    this.usernameAttributes = Output.createUnknown<List<String>?>();
    this.usernameConfiguration =
        Output.createUnknown<UserPoolUsernameConfiguration>();
    this.verificationMessageTemplate =
        Output.createUnknown<UserPoolVerificationMessageTemplate>();
    this.webAuthnConfiguration =
        Output.createUnknown<UserPoolWebAuthnConfiguration?>();
  }
}
