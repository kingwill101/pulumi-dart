import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_credential_set_args.dart';
import 'registry_credential_set_authentication_credentials.dart';
import 'registry_credential_set_identity.dart';

/// Manages a Container Registry Credential Set.
///
/// ## Example Usage
///
/// ### Minimal)
///
/// > **Note:** Be aware that you will need to permit the Identity that is created for the Container Registry to have `get` on secrets to the Key Vault, e.g. using the `azure.keyvault.AccessPolicy` resource.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleRegistry = new azure.containerservice.Registry("example", {
///     name: "exampleContainerRegistry",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Basic",
/// });
/// const exampleRegistryCredentialSet = new azure.containerservice.RegistryCredentialSet("example", {
///     name: "exampleCredentialSet",
///     containerRegistryId: exampleRegistry.id,
///     loginServer: "docker.io",
///     identity: {
///         type: "SystemAssigned",
///     },
///     authenticationCredentials: {
///         usernameSecretId: "https://example-keyvault.vault.azure.net/secrets/example-user-name",
///         passwordSecretId: "https://example-keyvault.vault.azure.net/secrets/example-user-password",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_registry = azure.containerservice.Registry("example",
///     name="exampleContainerRegistry",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Basic")
/// example_registry_credential_set = azure.containerservice.RegistryCredentialSet("example",
///     name="exampleCredentialSet",
///     container_registry_id=example_registry.id,
///     login_server="docker.io",
///     identity={
///         "type": "SystemAssigned",
///     },
///     authentication_credentials={
///         "username_secret_id": "https://example-keyvault.vault.azure.net/secrets/example-user-name",
///         "password_secret_id": "https://example-keyvault.vault.azure.net/secrets/example-user-password",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleRegistry = new Azure.ContainerService.Registry("example", new()
///     {
///         Name = "exampleContainerRegistry",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Basic",
///     });
///
///     var exampleRegistryCredentialSet = new Azure.ContainerService.RegistryCredentialSet("example", new()
///     {
///         Name = "exampleCredentialSet",
///         ContainerRegistryId = exampleRegistry.Id,
///         LoginServer = "docker.io",
///         Identity = new Azure.ContainerService.Inputs.RegistryCredentialSetIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         AuthenticationCredentials = new Azure.ContainerService.Inputs.RegistryCredentialSetAuthenticationCredentialsArgs
///         {
///             UsernameSecretId = "https://example-keyvault.vault.azure.net/secrets/example-user-name",
///             PasswordSecretId = "https://example-keyvault.vault.azure.net/secrets/example-user-password",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRegistry, err := containerservice.NewRegistry(ctx, "example", &containerservice.RegistryArgs{
/// 			Name:              pulumi.String("exampleContainerRegistry"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewRegistryCredentialSet(ctx, "example", &containerservice.RegistryCredentialSetArgs{
/// 			Name:                pulumi.String("exampleCredentialSet"),
/// 			ContainerRegistryId: exampleRegistry.ID(),
/// 			LoginServer:         pulumi.String("docker.io"),
/// 			Identity: &containerservice.RegistryCredentialSetIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			AuthenticationCredentials: &containerservice.RegistryCredentialSetAuthenticationCredentialsArgs{
/// 				UsernameSecretId: pulumi.String("https://example-keyvault.vault.azure.net/secrets/example-user-name"),
/// 				PasswordSecretId: pulumi.String("https://example-keyvault.vault.azure.net/secrets/example-user-password"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.containerservice.Registry;
/// import com.pulumi.azure.containerservice.RegistryArgs;
/// import com.pulumi.azure.containerservice.RegistryCredentialSet;
/// import com.pulumi.azure.containerservice.RegistryCredentialSetArgs;
/// import com.pulumi.azure.containerservice.inputs.RegistryCredentialSetIdentityArgs;
/// import com.pulumi.azure.containerservice.inputs.RegistryCredentialSetAuthenticationCredentialsArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleRegistry = new Registry("exampleRegistry", RegistryArgs.builder()
///             .name("exampleContainerRegistry")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Basic")
///             .build());
///
///         var exampleRegistryCredentialSet = new RegistryCredentialSet("exampleRegistryCredentialSet", RegistryCredentialSetArgs.builder()
///             .name("exampleCredentialSet")
///             .containerRegistryId(exampleRegistry.id())
///             .loginServer("docker.io")
///             .identity(RegistryCredentialSetIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .authenticationCredentials(RegistryCredentialSetAuthenticationCredentialsArgs.builder()
///                 .usernameSecretId("https://example-keyvault.vault.azure.net/secrets/example-user-name")
///                 .passwordSecretId("https://example-keyvault.vault.azure.net/secrets/example-user-password")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleRegistry:
///     type: azure:containerservice:Registry
///     name: example
///     properties:
///       name: exampleContainerRegistry
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Basic
///   exampleRegistryCredentialSet:
///     type: azure:containerservice:RegistryCredentialSet
///     name: example
///     properties:
///       name: exampleCredentialSet
///       containerRegistryId: ${exampleRegistry.id}
///       loginServer: docker.io
///       identity:
///         type: SystemAssigned
///       authenticationCredentials:
///         usernameSecretId: https://example-keyvault.vault.azure.net/secrets/example-user-name
///         passwordSecretId: https://example-keyvault.vault.azure.net/secrets/example-user-password
/// ```
///
///
///
/// ### Full)
///
/// This example provisions a key vault with two secrets, a container registry, a container registry credential set, and an access policy to allow the container registry to read the secrets from the key vault.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "examplekeyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     softDeleteRetentionDays: 7,
///     accessPolicies: [{
///         tenantId: current.then(current => current.tenantId),
///         objectId: current.then(current => current.objectId),
///         certificatePermissions: [],
///         keyPermissions: [],
///         secretPermissions: [
///             "Get",
///             "Set",
///             "Delete",
///             "Purge",
///         ],
///     }],
/// });
/// const exampleUser = new azure.keyvault.Secret("example_user", {
///     keyVaultId: exampleKeyVault.id,
///     name: "example-user-name",
///     value: "name",
/// });
/// const examplePassword = new azure.keyvault.Secret("example_password", {
///     keyVaultId: exampleKeyVault.id,
///     name: "example-user-password",
///     value: "password",
/// });
/// const exampleRegistry = new azure.containerservice.Registry("example", {
///     name: "exampleContainerRegistry",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Basic",
/// });
/// const exampleRegistryCredentialSet = new azure.containerservice.RegistryCredentialSet("example", {
///     name: "exampleCredentialSet",
///     containerRegistryId: exampleRegistry.id,
///     loginServer: "docker.io",
///     identity: {
///         type: "SystemAssigned",
///     },
///     authenticationCredentials: {
///         usernameSecretId: exampleUser.versionlessId,
///         passwordSecretId: examplePassword.versionlessId,
///     },
/// });
/// const readSecrets = new azure.keyvault.AccessPolicy("read_secrets", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: exampleRegistryCredentialSet.identity.apply(identity => identity.tenantId),
///     objectId: exampleRegistryCredentialSet.identity.apply(identity => identity.principalId),
///     secretPermissions: ["Get"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// current = azure.core.get_client_config()
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="examplekeyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     soft_delete_retention_days=7,
///     access_policies=[{
///         "tenant_id": current.tenant_id,
///         "object_id": current.object_id,
///         "certificate_permissions": [],
///         "key_permissions": [],
///         "secret_permissions": [
///             "Get",
///             "Set",
///             "Delete",
///             "Purge",
///         ],
///     }])
/// example_user = azure.keyvault.Secret("example_user",
///     key_vault_id=example_key_vault.id,
///     name="example-user-name",
///     value="name")
/// example_password = azure.keyvault.Secret("example_password",
///     key_vault_id=example_key_vault.id,
///     name="example-user-password",
///     value="password")
/// example_registry = azure.containerservice.Registry("example",
///     name="exampleContainerRegistry",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Basic")
/// example_registry_credential_set = azure.containerservice.RegistryCredentialSet("example",
///     name="exampleCredentialSet",
///     container_registry_id=example_registry.id,
///     login_server="docker.io",
///     identity={
///         "type": "SystemAssigned",
///     },
///     authentication_credentials={
///         "username_secret_id": example_user.versionless_id,
///         "password_secret_id": example_password.versionless_id,
///     })
/// read_secrets = azure.keyvault.AccessPolicy("read_secrets",
///     key_vault_id=example_key_vault.id,
///     tenant_id=example_registry_credential_set.identity.tenant_id,
///     object_id=example_registry_credential_set.identity.principal_id,
///     secret_permissions=["Get"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "examplekeyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         SoftDeleteRetentionDays = 7,
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 CertificatePermissions = new() { },
///                 KeyPermissions = new() { },
///                 SecretPermissions = new[]
///                 {
///                     "Get",
///                     "Set",
///                     "Delete",
///                     "Purge",
///                 },
///             },
///         },
///     });
///
///     var exampleUser = new Azure.KeyVault.Secret("example_user", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         Name = "example-user-name",
///         Value = "name",
///     });
///
///     var examplePassword = new Azure.KeyVault.Secret("example_password", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         Name = "example-user-password",
///         Value = "password",
///     });
///
///     var exampleRegistry = new Azure.ContainerService.Registry("example", new()
///     {
///         Name = "exampleContainerRegistry",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Basic",
///     });
///
///     var exampleRegistryCredentialSet = new Azure.ContainerService.RegistryCredentialSet("example", new()
///     {
///         Name = "exampleCredentialSet",
///         ContainerRegistryId = exampleRegistry.Id,
///         LoginServer = "docker.io",
///         Identity = new Azure.ContainerService.Inputs.RegistryCredentialSetIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         AuthenticationCredentials = new Azure.ContainerService.Inputs.RegistryCredentialSetAuthenticationCredentialsArgs
///         {
///             UsernameSecretId = exampleUser.VersionlessId,
///             PasswordSecretId = examplePassword.VersionlessId,
///         },
///     });
///
///     var readSecrets = new Azure.KeyVault.AccessPolicy("read_secrets", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = exampleRegistryCredentialSet.Identity.Apply(identity => identity.TenantId),
///         ObjectId = exampleRegistryCredentialSet.Identity.Apply(identity => identity.PrincipalId),
///         SecretPermissions = new[]
///         {
///             "Get",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                    pulumi.String("examplekeyvault"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			TenantId:                pulumi.String(current.TenantId),
/// 			SkuName:                 pulumi.String("standard"),
/// 			SoftDeleteRetentionDays: pulumi.Int(7),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId:               pulumi.String(current.TenantId),
/// 					ObjectId:               pulumi.String(current.ObjectId),
/// 					CertificatePermissions: pulumi.StringArray{},
/// 					KeyPermissions:         pulumi.StringArray{},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("Set"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("Purge"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUser, err := keyvault.NewSecret(ctx, "example_user", &keyvault.SecretArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			Name:       pulumi.String("example-user-name"),
/// 			Value:      pulumi.String("name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePassword, err := keyvault.NewSecret(ctx, "example_password", &keyvault.SecretArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			Name:       pulumi.String("example-user-password"),
/// 			Value:      pulumi.String("password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRegistry, err := containerservice.NewRegistry(ctx, "example", &containerservice.RegistryArgs{
/// 			Name:              pulumi.String("exampleContainerRegistry"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRegistryCredentialSet, err := containerservice.NewRegistryCredentialSet(ctx, "example", &containerservice.RegistryCredentialSetArgs{
/// 			Name:                pulumi.String("exampleCredentialSet"),
/// 			ContainerRegistryId: exampleRegistry.ID(),
/// 			LoginServer:         pulumi.String("docker.io"),
/// 			Identity: &containerservice.RegistryCredentialSetIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			AuthenticationCredentials: &containerservice.RegistryCredentialSetAuthenticationCredentialsArgs{
/// 				UsernameSecretId: exampleUser.VersionlessId,
/// 				PasswordSecretId: examplePassword.VersionlessId,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keyvault.NewAccessPolicy(ctx, "read_secrets", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId: pulumi.String(exampleRegistryCredentialSet.Identity.ApplyT(func(identity containerservice.RegistryCredentialSetIdentity) (*string, error) {
/// 				return &identity.TenantId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ObjectId: pulumi.String(exampleRegistryCredentialSet.Identity.ApplyT(func(identity containerservice.RegistryCredentialSetIdentity) (*string, error) {
/// 				return &identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			SecretPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Secret;
/// import com.pulumi.azure.keyvault.SecretArgs;
/// import com.pulumi.azure.containerservice.Registry;
/// import com.pulumi.azure.containerservice.RegistryArgs;
/// import com.pulumi.azure.containerservice.RegistryCredentialSet;
/// import com.pulumi.azure.containerservice.RegistryCredentialSetArgs;
/// import com.pulumi.azure.containerservice.inputs.RegistryCredentialSetIdentityArgs;
/// import com.pulumi.azure.containerservice.inputs.RegistryCredentialSetAuthenticationCredentialsArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekeyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .softDeleteRetentionDays(7)
///             .accessPolicies(KeyVaultAccessPolicyArgs.builder()
///                 .tenantId(current.tenantId())
///                 .objectId(current.objectId())
///                 .certificatePermissions()
///                 .keyPermissions()
///                 .secretPermissions(
///                     "Get",
///                     "Set",
///                     "Delete",
///                     "Purge")
///                 .build())
///             .build());
///
///         var exampleUser = new Secret("exampleUser", SecretArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .name("example-user-name")
///             .value("name")
///             .build());
///
///         var examplePassword = new Secret("examplePassword", SecretArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .name("example-user-password")
///             .value("password")
///             .build());
///
///         var exampleRegistry = new Registry("exampleRegistry", RegistryArgs.builder()
///             .name("exampleContainerRegistry")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Basic")
///             .build());
///
///         var exampleRegistryCredentialSet = new RegistryCredentialSet("exampleRegistryCredentialSet", RegistryCredentialSetArgs.builder()
///             .name("exampleCredentialSet")
///             .containerRegistryId(exampleRegistry.id())
///             .loginServer("docker.io")
///             .identity(RegistryCredentialSetIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .authenticationCredentials(RegistryCredentialSetAuthenticationCredentialsArgs.builder()
///                 .usernameSecretId(exampleUser.versionlessId())
///                 .passwordSecretId(examplePassword.versionlessId())
///                 .build())
///             .build());
///
///         var readSecrets = new AccessPolicy("readSecrets", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(exampleRegistryCredentialSet.identity().applyValue(_identity -> _identity.tenantId()))
///             .objectId(exampleRegistryCredentialSet.identity().applyValue(_identity -> _identity.principalId()))
///             .secretPermissions("Get")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekeyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///       softDeleteRetentionDays: 7
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           certificatePermissions: []
///           keyPermissions: []
///           secretPermissions:
///             - Get
///             - Set
///             - Delete
///             - Purge
///   exampleUser:
///     type: azure:keyvault:Secret
///     name: example_user
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       name: example-user-name
///       value: name
///   examplePassword:
///     type: azure:keyvault:Secret
///     name: example_password
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       name: example-user-password
///       value: password
///   exampleRegistry:
///     type: azure:containerservice:Registry
///     name: example
///     properties:
///       name: exampleContainerRegistry
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Basic
///   exampleRegistryCredentialSet:
///     type: azure:containerservice:RegistryCredentialSet
///     name: example
///     properties:
///       name: exampleCredentialSet
///       containerRegistryId: ${exampleRegistry.id}
///       loginServer: docker.io
///       identity:
///         type: SystemAssigned
///       authenticationCredentials:
///         usernameSecretId: ${exampleUser.versionlessId}
///         passwordSecretId: ${examplePassword.versionlessId}
///   readSecrets:
///     type: azure:keyvault:AccessPolicy
///     name: read_secrets
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${exampleRegistryCredentialSet.identity.tenantId}
///       objectId: ${exampleRegistryCredentialSet.identity.principalId}
///       secretPermissions:
///         - Get
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ContainerRegistry` - 2023-07-01
///
/// ## Import
///
/// Container Registry Credential Sets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/registryCredentialSet:RegistryCredentialSet example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ContainerRegistry/registries/registry1/credentialSets/credentialSet1
/// ```
class RegistryCredentialSet extends pulumi.CustomResource {
  /// A `authentication_credentials` block as defined below.
  late final pulumi.Output<RegistryCredentialSetAuthenticationCredentials> authenticationCredentials;
  /// The ID of the Container Registry. Changing this forces a new Container Registry Credential Set to be created.
  late final pulumi.Output<String> containerRegistryId;
  /// An `identity` block as defined below.
  late final pulumi.Output<RegistryCredentialSetIdentity> identity;
  /// The login server for the Credential Set. Changing this forces a new Container Registry Credential Set to be created.
  late final pulumi.Output<String> loginServer;
  /// The name which should be used for this Container Registry Credential Set. Changing this forces a new Container Registry Credential Set to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [RegistryCredentialSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryCredentialSet]. {@macro pulumi_containerservice_registry_credential_set_registry_credential_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryCredentialSet(
    String name, {
    RegistryCredentialSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/registryCredentialSet:RegistryCredentialSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationCredentials = registerOutput<RegistryCredentialSetAuthenticationCredentials>('authenticationCredentials');
    this.containerRegistryId = registerOutput<String>('containerRegistryId');
    this.identity = registerOutput<RegistryCredentialSetIdentity>('identity');
    this.loginServer = registerOutput<String>('loginServer');
    this.name = registerOutput<String>('name');
  }
}
