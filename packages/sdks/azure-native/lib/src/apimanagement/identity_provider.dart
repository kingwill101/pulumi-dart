import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_provider_args.dart';

/// Identity Provider details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateIdentityProvider
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var identityProvider = new AzureNative.ApiManagement.IdentityProvider("identityProvider", new()
///     {
///         ClientId = "facebookid",
///         ClientSecret = "facebookapplicationsecret",
///         IdentityProviderName = "facebook",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewIdentityProvider(ctx, "identityProvider", &apimanagement.IdentityProviderArgs{
/// 			ClientId:             pulumi.String("facebookid"),
/// 			ClientSecret:         pulumi.String("facebookapplicationsecret"),
/// 			IdentityProviderName: pulumi.String("facebook"),
/// 			ResourceGroupName:    pulumi.String("rg1"),
/// 			ServiceName:          pulumi.String("apimService1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_apimanagement_identityprovider" "identityProvider" {
///   client_id              = "facebookid"
///   client_secret          = "facebookapplicationsecret"
///   identity_provider_name = "facebook"
///   resource_group_name    = "rg1"
///   service_name           = "apimService1"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.apimanagement.IdentityProvider;
/// import com.pulumi.azurenative.apimanagement.IdentityProviderArgs;
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
///         var identityProvider = new IdentityProvider("identityProvider", IdentityProviderArgs.builder()
///             .clientId("facebookid")
///             .clientSecret("facebookapplicationsecret")
///             .identityProviderName("facebook")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const identityProvider = new azure_native.apimanagement.IdentityProvider("identityProvider", {
///     clientId: "facebookid",
///     clientSecret: "facebookapplicationsecret",
///     identityProviderName: "facebook",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// identity_provider = azure_native.apimanagement.IdentityProvider("identityProvider",
///     client_id="facebookid",
///     client_secret="facebookapplicationsecret",
///     identity_provider_name="facebook",
///     resource_group_name="rg1",
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   identityProvider:
///     type: azure-native:apimanagement:IdentityProvider
///     properties:
///       clientId: facebookid
///       clientSecret: facebookapplicationsecret
///       identityProviderName: facebook
///       resourceGroupName: rg1
///       serviceName: apimService1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:apimanagement:IdentityProvider Facebook /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/identityProviders/{identityProviderName}
/// ```
class IdentityProvider extends pulumi.CustomResource {
  /// List of Allowed Tenants when configuring Azure Active Directory login.
  late final pulumi.Output<List<String>?> allowedTenants;
  /// OpenID Connect discovery endpoint hostname for AAD or AAD B2C.
  late final pulumi.Output<String?> authority;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Client Id of the Application in the external Identity Provider. It is App ID for Facebook login, Client ID for Google login, App ID for Microsoft.
  late final pulumi.Output<String> clientId;
  /// The client library to be used in the developer portal. Only applies to AAD and AAD B2C Identity Provider.
  late final pulumi.Output<String?> clientLibrary;
  /// Client secret of the Application in external Identity Provider, used to authenticate login request. For example, it is App Secret for Facebook login, API Key for Google login, Public Key for Microsoft. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  late final pulumi.Output<String?> clientSecret;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Password Reset Policy Name. Only applies to AAD B2C Identity Provider.
  late final pulumi.Output<String?> passwordResetPolicyName;
  /// Profile Editing Policy Name. Only applies to AAD B2C Identity Provider.
  late final pulumi.Output<String?> profileEditingPolicyName;
  /// Signin Policy Name. Only applies to AAD B2C Identity Provider.
  late final pulumi.Output<String?> signinPolicyName;
  /// The TenantId to use instead of Common when logging into Active Directory
  late final pulumi.Output<String?> signinTenant;
  /// Signup Policy Name. Only applies to AAD B2C Identity Provider.
  late final pulumi.Output<String?> signupPolicyName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IdentityProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IdentityProvider]. {@macro pulumi_apimanagement_identity_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IdentityProvider(
    String name, {
    IdentityProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:IdentityProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowedTenants = registerOutput<List<String>?>('allowedTenants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authority = registerOutput<String?>('authority');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientId = registerOutput<String>('clientId');
    clientLibrary = registerOutput<String?>('clientLibrary');
    clientSecret = registerOutput<String?>('clientSecret');
    this.name = registerOutput<String>('name');
    passwordResetPolicyName = registerOutput<String?>('passwordResetPolicyName');
    profileEditingPolicyName = registerOutput<String?>('profileEditingPolicyName');
    signinPolicyName = registerOutput<String?>('signinPolicyName');
    signinTenant = registerOutput<String?>('signinTenant');
    signupPolicyName = registerOutput<String?>('signupPolicyName');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [IdentityProvider] resource.
  IdentityProvider.reference(String urn)
    : super(
        'azure-native:apimanagement:IdentityProvider',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowedTenants = registerOutput<List<String>?>('allowedTenants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    authority = registerOutput<String?>('authority');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientId = registerOutput<String>('clientId');
    clientLibrary = registerOutput<String?>('clientLibrary');
    clientSecret = registerOutput<String?>('clientSecret');
    this.name = registerOutput<String>('name');
    passwordResetPolicyName = registerOutput<String?>('passwordResetPolicyName');
    profileEditingPolicyName = registerOutput<String?>('profileEditingPolicyName');
    signinPolicyName = registerOutput<String?>('signinPolicyName');
    signinTenant = registerOutput<String?>('signinTenant');
    signupPolicyName = registerOutput<String?>('signupPolicyName');
    type = registerOutput<String>('type');
  }
}
