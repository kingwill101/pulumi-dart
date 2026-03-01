import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_strength_policy_args.dart';

/// Manages a Authentication Strength Policy within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires the following application roles: `Policy.ReadWrite.ConditionalAccess` and `Policy.Read.All`
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Conditional Access Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.AuthenticationStrengthPolicy("example", {
///     displayName: "Example Authentication Strength Policy",
///     description: "Policy for demo purposes",
///     allowedCombinations: [
///         "fido2",
///         "password",
///     ],
/// });
/// const example2 = new azuread.AuthenticationStrengthPolicy("example2", {
///     displayName: "Example Authentication Strength Policy",
///     description: "Policy for demo purposes with all possible combinations",
///     allowedCombinations: [
///         "fido2",
///         "password",
///         "deviceBasedPush",
///         "temporaryAccessPassOneTime",
///         "federatedMultiFactor",
///         "federatedSingleFactor",
///         "hardwareOath,federatedSingleFactor",
///         "microsoftAuthenticatorPush,federatedSingleFactor",
///         "password,hardwareOath",
///         "password,microsoftAuthenticatorPush",
///         "password,sms",
///         "password,softwareOath",
///         "password,voice",
///         "sms",
///         "sms,federatedSingleFactor",
///         "softwareOath,federatedSingleFactor",
///         "temporaryAccessPassMultiUse",
///         "voice,federatedSingleFactor",
///         "windowsHelloForBusiness",
///         "x509CertificateMultiFactor",
///         "x509CertificateSingleFactor",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.AuthenticationStrengthPolicy("example",
///     display_name="Example Authentication Strength Policy",
///     description="Policy for demo purposes",
///     allowed_combinations=[
///         "fido2",
///         "password",
///     ])
/// example2 = azuread.AuthenticationStrengthPolicy("example2",
///     display_name="Example Authentication Strength Policy",
///     description="Policy for demo purposes with all possible combinations",
///     allowed_combinations=[
///         "fido2",
///         "password",
///         "deviceBasedPush",
///         "temporaryAccessPassOneTime",
///         "federatedMultiFactor",
///         "federatedSingleFactor",
///         "hardwareOath,federatedSingleFactor",
///         "microsoftAuthenticatorPush,federatedSingleFactor",
///         "password,hardwareOath",
///         "password,microsoftAuthenticatorPush",
///         "password,sms",
///         "password,softwareOath",
///         "password,voice",
///         "sms",
///         "sms,federatedSingleFactor",
///         "softwareOath,federatedSingleFactor",
///         "temporaryAccessPassMultiUse",
///         "voice,federatedSingleFactor",
///         "windowsHelloForBusiness",
///         "x509CertificateMultiFactor",
///         "x509CertificateSingleFactor",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.AuthenticationStrengthPolicy("example", new()
///     {
///         DisplayName = "Example Authentication Strength Policy",
///         Description = "Policy for demo purposes",
///         AllowedCombinations = new[]
///         {
///             "fido2",
///             "password",
///         },
///     });
///
///     var example2 = new AzureAD.AuthenticationStrengthPolicy("example2", new()
///     {
///         DisplayName = "Example Authentication Strength Policy",
///         Description = "Policy for demo purposes with all possible combinations",
///         AllowedCombinations = new[]
///         {
///             "fido2",
///             "password",
///             "deviceBasedPush",
///             "temporaryAccessPassOneTime",
///             "federatedMultiFactor",
///             "federatedSingleFactor",
///             "hardwareOath,federatedSingleFactor",
///             "microsoftAuthenticatorPush,federatedSingleFactor",
///             "password,hardwareOath",
///             "password,microsoftAuthenticatorPush",
///             "password,sms",
///             "password,softwareOath",
///             "password,voice",
///             "sms",
///             "sms,federatedSingleFactor",
///             "softwareOath,federatedSingleFactor",
///             "temporaryAccessPassMultiUse",
///             "voice,federatedSingleFactor",
///             "windowsHelloForBusiness",
///             "x509CertificateMultiFactor",
///             "x509CertificateSingleFactor",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuread.NewAuthenticationStrengthPolicy(ctx, "example", &azuread.AuthenticationStrengthPolicyArgs{
/// 			DisplayName: pulumi.String("Example Authentication Strength Policy"),
/// 			Description: pulumi.String("Policy for demo purposes"),
/// 			AllowedCombinations: pulumi.StringArray{
/// 				pulumi.String("fido2"),
/// 				pulumi.String("password"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewAuthenticationStrengthPolicy(ctx, "example2", &azuread.AuthenticationStrengthPolicyArgs{
/// 			DisplayName: pulumi.String("Example Authentication Strength Policy"),
/// 			Description: pulumi.String("Policy for demo purposes with all possible combinations"),
/// 			AllowedCombinations: pulumi.StringArray{
/// 				pulumi.String("fido2"),
/// 				pulumi.String("password"),
/// 				pulumi.String("deviceBasedPush"),
/// 				pulumi.String("temporaryAccessPassOneTime"),
/// 				pulumi.String("federatedMultiFactor"),
/// 				pulumi.String("federatedSingleFactor"),
/// 				pulumi.String("hardwareOath,federatedSingleFactor"),
/// 				pulumi.String("microsoftAuthenticatorPush,federatedSingleFactor"),
/// 				pulumi.String("password,hardwareOath"),
/// 				pulumi.String("password,microsoftAuthenticatorPush"),
/// 				pulumi.String("password,sms"),
/// 				pulumi.String("password,softwareOath"),
/// 				pulumi.String("password,voice"),
/// 				pulumi.String("sms"),
/// 				pulumi.String("sms,federatedSingleFactor"),
/// 				pulumi.String("softwareOath,federatedSingleFactor"),
/// 				pulumi.String("temporaryAccessPassMultiUse"),
/// 				pulumi.String("voice,federatedSingleFactor"),
/// 				pulumi.String("windowsHelloForBusiness"),
/// 				pulumi.String("x509CertificateMultiFactor"),
/// 				pulumi.String("x509CertificateSingleFactor"),
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
/// import com.pulumi.azuread.AuthenticationStrengthPolicy;
/// import com.pulumi.azuread.AuthenticationStrengthPolicyArgs;
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
///         var example = new AuthenticationStrengthPolicy("example", AuthenticationStrengthPolicyArgs.builder()
///             .displayName("Example Authentication Strength Policy")
///             .description("Policy for demo purposes")
///             .allowedCombinations(
///                 "fido2",
///                 "password")
///             .build());
///
///         var example2 = new AuthenticationStrengthPolicy("example2", AuthenticationStrengthPolicyArgs.builder()
///             .displayName("Example Authentication Strength Policy")
///             .description("Policy for demo purposes with all possible combinations")
///             .allowedCombinations(
///                 "fido2",
///                 "password",
///                 "deviceBasedPush",
///                 "temporaryAccessPassOneTime",
///                 "federatedMultiFactor",
///                 "federatedSingleFactor",
///                 "hardwareOath,federatedSingleFactor",
///                 "microsoftAuthenticatorPush,federatedSingleFactor",
///                 "password,hardwareOath",
///                 "password,microsoftAuthenticatorPush",
///                 "password,sms",
///                 "password,softwareOath",
///                 "password,voice",
///                 "sms",
///                 "sms,federatedSingleFactor",
///                 "softwareOath,federatedSingleFactor",
///                 "temporaryAccessPassMultiUse",
///                 "voice,federatedSingleFactor",
///                 "windowsHelloForBusiness",
///                 "x509CertificateMultiFactor",
///                 "x509CertificateSingleFactor")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:AuthenticationStrengthPolicy
///     properties:
///       displayName: Example Authentication Strength Policy
///       description: Policy for demo purposes
///       allowedCombinations:
///         - fido2
///         - password
///   example2:
///     type: azuread:AuthenticationStrengthPolicy
///     properties:
///       displayName: Example Authentication Strength Policy
///       description: Policy for demo purposes with all possible combinations
///       allowedCombinations:
///         - fido2
///         - password
///         - deviceBasedPush
///         - temporaryAccessPassOneTime
///         - federatedMultiFactor
///         - federatedSingleFactor
///         - hardwareOath,federatedSingleFactor
///         - microsoftAuthenticatorPush,federatedSingleFactor
///         - password,hardwareOath
///         - password,microsoftAuthenticatorPush
///         - password,sms
///         - password,softwareOath
///         - password,voice
///         - sms
///         - sms,federatedSingleFactor
///         - softwareOath,federatedSingleFactor
///         - temporaryAccessPassMultiUse
///         - voice,federatedSingleFactor
///         - windowsHelloForBusiness
///         - x509CertificateMultiFactor
///         - x509CertificateSingleFactor
/// ```
///
///
/// ## Import
///
/// Authentication Strength Policies can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/authenticationStrengthPolicy:AuthenticationStrengthPolicy my_policy /policies/authenticationStrengthPolicies/00000000-0000-0000-0000-000000000000
/// ```
class AuthenticationStrengthPolicy extends pulumi.CustomResource {
  /// List of allowed authentication methods for this authentication strength policy.
  late final pulumi.Output<List<String>> allowedCombinations;
  /// The description for this authentication strength policy.
  late final pulumi.Output<String?> description;
  /// The friendly name for this authentication strength policy.
  late final pulumi.Output<String> displayName;

  /// Creates a new [AuthenticationStrengthPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthenticationStrengthPolicy]. {@macro pulumi_index_authentication_strength_policy_authentication_strength_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthenticationStrengthPolicy(
    String name, {
    AuthenticationStrengthPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/authenticationStrengthPolicy:AuthenticationStrengthPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedCombinations = registerOutput<List<String>>('allowedCombinations');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
  }
}
