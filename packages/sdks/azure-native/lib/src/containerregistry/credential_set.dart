import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_set_args.dart';
import 'identity_properties_response.dart';
import 'system_data_response.dart';

/// An object that represents a credential set resource for a container registry.
///
/// Uses Azure REST API version 2023-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CredentialSetCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var credentialSet = new AzureNative.ContainerRegistry.CredentialSet("credentialSet", new()
///     {
///         AuthCredentials = new[]
///         {
///             new AzureNative.ContainerRegistry.Inputs.AuthCredentialArgs
///             {
///                 Name = AzureNative.ContainerRegistry.CredentialName.Credential1,
///                 PasswordSecretIdentifier = "https://myvault.vault.azure.net/secrets/password",
///                 UsernameSecretIdentifier = "https://myvault.vault.azure.net/secrets/username",
///             },
///         },
///         CredentialSetName = "myCredentialSet",
///         Identity = new AzureNative.ContainerRegistry.Inputs.IdentityPropertiesArgs
///         {
///             Type = AzureNative.ContainerRegistry.ResourceIdentityType.SystemAssigned,
///         },
///         LoginServer = "docker.io",
///         RegistryName = "myRegistry",
///         ResourceGroupName = "myResourceGroup",
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
/// 	containerregistry "github.com/pulumi/pulumi-azure-native-sdk/containerregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerregistry.NewCredentialSet(ctx, "credentialSet", &containerregistry.CredentialSetArgs{
/// 			AuthCredentials: containerregistry.AuthCredentialArray{
/// 				&containerregistry.AuthCredentialArgs{
/// 					Name:                     pulumi.String(containerregistry.CredentialNameCredential1),
/// 					PasswordSecretIdentifier: pulumi.String("https://myvault.vault.azure.net/secrets/password"),
/// 					UsernameSecretIdentifier: pulumi.String("https://myvault.vault.azure.net/secrets/username"),
/// 				},
/// 			},
/// 			CredentialSetName: pulumi.String("myCredentialSet"),
/// 			Identity: &containerregistry.IdentityPropertiesArgs{
/// 				Type: containerregistry.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			LoginServer:       pulumi.String("docker.io"),
/// 			RegistryName:      pulumi.String("myRegistry"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.containerregistry.CredentialSet;
/// import com.pulumi.azurenative.containerregistry.CredentialSetArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.AuthCredentialArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.IdentityPropertiesArgs;
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
///         var credentialSet = new CredentialSet("credentialSet", CredentialSetArgs.builder()
///             .authCredentials(AuthCredentialArgs.builder()
///                 .name("Credential1")
///                 .passwordSecretIdentifier("https://myvault.vault.azure.net/secrets/password")
///                 .usernameSecretIdentifier("https://myvault.vault.azure.net/secrets/username")
///                 .build())
///             .credentialSetName("myCredentialSet")
///             .identity(IdentityPropertiesArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .loginServer("docker.io")
///             .registryName("myRegistry")
///             .resourceGroupName("myResourceGroup")
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
/// const credentialSet = new azure_native.containerregistry.CredentialSet("credentialSet", {
///     authCredentials: [{
///         name: azure_native.containerregistry.CredentialName.Credential1,
///         passwordSecretIdentifier: "https://myvault.vault.azure.net/secrets/password",
///         usernameSecretIdentifier: "https://myvault.vault.azure.net/secrets/username",
///     }],
///     credentialSetName: "myCredentialSet",
///     identity: {
///         type: azure_native.containerregistry.ResourceIdentityType.SystemAssigned,
///     },
///     loginServer: "docker.io",
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// credential_set = azure_native.containerregistry.CredentialSet("credentialSet",
///     auth_credentials=[{
///         "name": azure_native.containerregistry.CredentialName.CREDENTIAL1,
///         "password_secret_identifier": "https://myvault.vault.azure.net/secrets/password",
///         "username_secret_identifier": "https://myvault.vault.azure.net/secrets/username",
///     }],
///     credential_set_name="myCredentialSet",
///     identity={
///         "type": azure_native.containerregistry.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     login_server="docker.io",
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   credentialSet:
///     type: azure-native:containerregistry:CredentialSet
///     properties:
///       authCredentials:
///         - name: Credential1
///           passwordSecretIdentifier: https://myvault.vault.azure.net/secrets/password
///           usernameSecretIdentifier: https://myvault.vault.azure.net/secrets/username
///       credentialSetName: myCredentialSet
///       identity:
///         type: SystemAssigned
///       loginServer: docker.io
///       registryName: myRegistry
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:containerregistry:CredentialSet myCredentialSet /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/credentialSets/{credentialSetName}
/// ```
class CredentialSet extends pulumi.CustomResource {
  /// List of authentication credentials stored for an upstream.
  /// Usually consists of a primary and an optional secondary credential.
  late final pulumi.Output<List<Map<String, dynamic>>?> authCredentials;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The creation date of credential store resource.
  late final pulumi.Output<String> creationDate;

  /// Identities associated with the resource. This is used to access the KeyVault secrets.
  late final pulumi.Output<IdentityPropertiesResponse?> identity;

  /// The credentials are stored for this upstream or login server.
  late final pulumi.Output<String?> loginServer;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [CredentialSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CredentialSet]. {@macro pulumi_containerregistry_credential_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CredentialSet(
    String name, {
    CredentialSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:containerregistry:CredentialSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authCredentials = registerOutput<List<Map<String, dynamic>>?>(
      'authCredentials',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationDate = registerOutput<String>('creationDate');
    identity = registerOutput<IdentityPropertiesResponse?>('identity');
    loginServer = registerOutput<String?>('loginServer');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
