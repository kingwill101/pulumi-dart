import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_platform_response.dart';
import 'container_apps_auth_config_args.dart';
import 'encryption_settings_response.dart';
import 'global_validation_response.dart';
import 'http_settings_response.dart';
import 'identity_providers_response.dart';
import 'login_response.dart';
import 'system_data_response.dart';

/// Configuration settings for the Azure ContainerApp Service Authentication / Authorization feature.
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Container App AuthConfig
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerAppsAuthConfig = new AzureNative.App.ContainerAppsAuthConfig("containerAppsAuthConfig", new()
///     {
///         AuthConfigName = "current",
///         ContainerAppName = "testcanadacentral",
///         EncryptionSettings = new AzureNative.App.Inputs.EncryptionSettingsArgs
///         {
///             ContainerAppAuthEncryptionSecretName = "testEncryptionSecretName",
///             ContainerAppAuthSigningSecretName = "testSigningSecretName",
///         },
///         GlobalValidation = new AzureNative.App.Inputs.GlobalValidationArgs
///         {
///             UnauthenticatedClientAction = AzureNative.App.UnauthenticatedClientActionV2.AllowAnonymous,
///         },
///         IdentityProviders = new AzureNative.App.Inputs.IdentityProvidersArgs
///         {
///             Facebook = new AzureNative.App.Inputs.FacebookArgs
///             {
///                 Registration = new AzureNative.App.Inputs.AppRegistrationArgs
///                 {
///                     AppId = "123",
///                     AppSecretSettingName = "facebook-secret",
///                 },
///             },
///         },
///         Platform = new AzureNative.App.Inputs.AuthPlatformArgs
///         {
///             Enabled = true,
///         },
///         ResourceGroupName = "workerapps-rg-xj",
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewContainerAppsAuthConfig(ctx, "containerAppsAuthConfig", &app.ContainerAppsAuthConfigArgs{
/// 			AuthConfigName:   pulumi.String("current"),
/// 			ContainerAppName: pulumi.String("testcanadacentral"),
/// 			EncryptionSettings: &app.EncryptionSettingsArgs{
/// 				ContainerAppAuthEncryptionSecretName: pulumi.String("testEncryptionSecretName"),
/// 				ContainerAppAuthSigningSecretName:    pulumi.String("testSigningSecretName"),
/// 			},
/// 			GlobalValidation: &app.GlobalValidationArgs{
/// 				UnauthenticatedClientAction: app.UnauthenticatedClientActionV2AllowAnonymous,
/// 			},
/// 			IdentityProviders: &app.IdentityProvidersArgs{
/// 				Facebook: &app.FacebookArgs{
/// 					Registration: &app.AppRegistrationArgs{
/// 						AppId:                pulumi.String("123"),
/// 						AppSecretSettingName: pulumi.String("facebook-secret"),
/// 					},
/// 				},
/// 			},
/// 			Platform: &app.AuthPlatformArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			ResourceGroupName: pulumi.String("workerapps-rg-xj"),
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
/// import com.pulumi.azurenative.app.ContainerAppsAuthConfig;
/// import com.pulumi.azurenative.app.ContainerAppsAuthConfigArgs;
/// import com.pulumi.azurenative.app.inputs.EncryptionSettingsArgs;
/// import com.pulumi.azurenative.app.inputs.GlobalValidationArgs;
/// import com.pulumi.azurenative.app.inputs.IdentityProvidersArgs;
/// import com.pulumi.azurenative.app.inputs.FacebookArgs;
/// import com.pulumi.azurenative.app.inputs.AppRegistrationArgs;
/// import com.pulumi.azurenative.app.inputs.AuthPlatformArgs;
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
///         var containerAppsAuthConfig = new ContainerAppsAuthConfig("containerAppsAuthConfig", ContainerAppsAuthConfigArgs.builder()
///             .authConfigName("current")
///             .containerAppName("testcanadacentral")
///             .encryptionSettings(EncryptionSettingsArgs.builder()
///                 .containerAppAuthEncryptionSecretName("testEncryptionSecretName")
///                 .containerAppAuthSigningSecretName("testSigningSecretName")
///                 .build())
///             .globalValidation(GlobalValidationArgs.builder()
///                 .unauthenticatedClientAction("AllowAnonymous")
///                 .build())
///             .identityProviders(IdentityProvidersArgs.builder()
///                 .facebook(FacebookArgs.builder()
///                     .registration(AppRegistrationArgs.builder()
///                         .appId("123")
///                         .appSecretSettingName("facebook-secret")
///                         .build())
///                     .build())
///                 .build())
///             .platform(AuthPlatformArgs.builder()
///                 .enabled(true)
///                 .build())
///             .resourceGroupName("workerapps-rg-xj")
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
/// const containerAppsAuthConfig = new azure_native.app.ContainerAppsAuthConfig("containerAppsAuthConfig", {
///     authConfigName: "current",
///     containerAppName: "testcanadacentral",
///     encryptionSettings: {
///         containerAppAuthEncryptionSecretName: "testEncryptionSecretName",
///         containerAppAuthSigningSecretName: "testSigningSecretName",
///     },
///     globalValidation: {
///         unauthenticatedClientAction: azure_native.app.UnauthenticatedClientActionV2.AllowAnonymous,
///     },
///     identityProviders: {
///         facebook: {
///             registration: {
///                 appId: "123",
///                 appSecretSettingName: "facebook-secret",
///             },
///         },
///     },
///     platform: {
///         enabled: true,
///     },
///     resourceGroupName: "workerapps-rg-xj",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_apps_auth_config = azure_native.app.ContainerAppsAuthConfig("containerAppsAuthConfig",
///     auth_config_name="current",
///     container_app_name="testcanadacentral",
///     encryption_settings={
///         "container_app_auth_encryption_secret_name": "testEncryptionSecretName",
///         "container_app_auth_signing_secret_name": "testSigningSecretName",
///     },
///     global_validation={
///         "unauthenticated_client_action": azure_native.app.UnauthenticatedClientActionV2.ALLOW_ANONYMOUS,
///     },
///     identity_providers={
///         "facebook": {
///             "registration": {
///                 "app_id": "123",
///                 "app_secret_setting_name": "facebook-secret",
///             },
///         },
///     },
///     platform={
///         "enabled": True,
///     },
///     resource_group_name="workerapps-rg-xj")
///
/// ```
///
/// ```yaml
/// resources:
///   containerAppsAuthConfig:
///     type: azure-native:app:ContainerAppsAuthConfig
///     properties:
///       authConfigName: current
///       containerAppName: testcanadacentral
///       encryptionSettings:
///         containerAppAuthEncryptionSecretName: testEncryptionSecretName
///         containerAppAuthSigningSecretName: testSigningSecretName
///       globalValidation:
///         unauthenticatedClientAction: AllowAnonymous
///       identityProviders:
///         facebook:
///           registration:
///             appId: '123'
///             appSecretSettingName: facebook-secret
///       platform:
///         enabled: true
///       resourceGroupName: workerapps-rg-xj
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Container App AuthConfig with msi clientID blob storage token store
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerAppsAuthConfig = new AzureNative.App.ContainerAppsAuthConfig("containerAppsAuthConfig", new()
///     {
///         AuthConfigName = "current",
///         ContainerAppName = "myapp",
///         EncryptionSettings = new AzureNative.App.Inputs.EncryptionSettingsArgs
///         {
///             ContainerAppAuthEncryptionSecretName = "testEncryptionSecretName",
///             ContainerAppAuthSigningSecretName = "testSigningSecretName",
///         },
///         GlobalValidation = new AzureNative.App.Inputs.GlobalValidationArgs
///         {
///             UnauthenticatedClientAction = AzureNative.App.UnauthenticatedClientActionV2.AllowAnonymous,
///         },
///         IdentityProviders = new AzureNative.App.Inputs.IdentityProvidersArgs
///         {
///             Facebook = new AzureNative.App.Inputs.FacebookArgs
///             {
///                 Registration = new AzureNative.App.Inputs.AppRegistrationArgs
///                 {
///                     AppId = "123",
///                     AppSecretSettingName = "facebook-secret",
///                 },
///             },
///         },
///         Login = new AzureNative.App.Inputs.LoginArgs
///         {
///             TokenStore = new AzureNative.App.Inputs.TokenStoreArgs
///             {
///                 AzureBlobStorage = new AzureNative.App.Inputs.BlobStorageTokenStoreArgs
///                 {
///                     BlobContainerUri = "https://test.blob.core.windows.net/container1",
///                     ClientId = "00000000-0000-0000-0000-000000000000",
///                 },
///             },
///         },
///         Platform = new AzureNative.App.Inputs.AuthPlatformArgs
///         {
///             Enabled = true,
///         },
///         ResourceGroupName = "rg1",
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewContainerAppsAuthConfig(ctx, "containerAppsAuthConfig", &app.ContainerAppsAuthConfigArgs{
/// 			AuthConfigName:   pulumi.String("current"),
/// 			ContainerAppName: pulumi.String("myapp"),
/// 			EncryptionSettings: &app.EncryptionSettingsArgs{
/// 				ContainerAppAuthEncryptionSecretName: pulumi.String("testEncryptionSecretName"),
/// 				ContainerAppAuthSigningSecretName:    pulumi.String("testSigningSecretName"),
/// 			},
/// 			GlobalValidation: &app.GlobalValidationArgs{
/// 				UnauthenticatedClientAction: app.UnauthenticatedClientActionV2AllowAnonymous,
/// 			},
/// 			IdentityProviders: &app.IdentityProvidersArgs{
/// 				Facebook: &app.FacebookArgs{
/// 					Registration: &app.AppRegistrationArgs{
/// 						AppId:                pulumi.String("123"),
/// 						AppSecretSettingName: pulumi.String("facebook-secret"),
/// 					},
/// 				},
/// 			},
/// 			Login: &app.LoginArgs{
/// 				TokenStore: &app.TokenStoreArgs{
/// 					AzureBlobStorage: &app.BlobStorageTokenStoreArgs{
/// 						BlobContainerUri: pulumi.String("https://test.blob.core.windows.net/container1"),
/// 						ClientId:         pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 					},
/// 				},
/// 			},
/// 			Platform: &app.AuthPlatformArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.app.ContainerAppsAuthConfig;
/// import com.pulumi.azurenative.app.ContainerAppsAuthConfigArgs;
/// import com.pulumi.azurenative.app.inputs.EncryptionSettingsArgs;
/// import com.pulumi.azurenative.app.inputs.GlobalValidationArgs;
/// import com.pulumi.azurenative.app.inputs.IdentityProvidersArgs;
/// import com.pulumi.azurenative.app.inputs.FacebookArgs;
/// import com.pulumi.azurenative.app.inputs.AppRegistrationArgs;
/// import com.pulumi.azurenative.app.inputs.LoginArgs;
/// import com.pulumi.azurenative.app.inputs.TokenStoreArgs;
/// import com.pulumi.azurenative.app.inputs.BlobStorageTokenStoreArgs;
/// import com.pulumi.azurenative.app.inputs.AuthPlatformArgs;
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
///         var containerAppsAuthConfig = new ContainerAppsAuthConfig("containerAppsAuthConfig", ContainerAppsAuthConfigArgs.builder()
///             .authConfigName("current")
///             .containerAppName("myapp")
///             .encryptionSettings(EncryptionSettingsArgs.builder()
///                 .containerAppAuthEncryptionSecretName("testEncryptionSecretName")
///                 .containerAppAuthSigningSecretName("testSigningSecretName")
///                 .build())
///             .globalValidation(GlobalValidationArgs.builder()
///                 .unauthenticatedClientAction("AllowAnonymous")
///                 .build())
///             .identityProviders(IdentityProvidersArgs.builder()
///                 .facebook(FacebookArgs.builder()
///                     .registration(AppRegistrationArgs.builder()
///                         .appId("123")
///                         .appSecretSettingName("facebook-secret")
///                         .build())
///                     .build())
///                 .build())
///             .login(LoginArgs.builder()
///                 .tokenStore(TokenStoreArgs.builder()
///                     .azureBlobStorage(BlobStorageTokenStoreArgs.builder()
///                         .blobContainerUri("https://test.blob.core.windows.net/container1")
///                         .clientId("00000000-0000-0000-0000-000000000000")
///                         .build())
///                     .build())
///                 .build())
///             .platform(AuthPlatformArgs.builder()
///                 .enabled(true)
///                 .build())
///             .resourceGroupName("rg1")
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
/// const containerAppsAuthConfig = new azure_native.app.ContainerAppsAuthConfig("containerAppsAuthConfig", {
///     authConfigName: "current",
///     containerAppName: "myapp",
///     encryptionSettings: {
///         containerAppAuthEncryptionSecretName: "testEncryptionSecretName",
///         containerAppAuthSigningSecretName: "testSigningSecretName",
///     },
///     globalValidation: {
///         unauthenticatedClientAction: azure_native.app.UnauthenticatedClientActionV2.AllowAnonymous,
///     },
///     identityProviders: {
///         facebook: {
///             registration: {
///                 appId: "123",
///                 appSecretSettingName: "facebook-secret",
///             },
///         },
///     },
///     login: {
///         tokenStore: {
///             azureBlobStorage: {
///                 blobContainerUri: "https://test.blob.core.windows.net/container1",
///                 clientId: "00000000-0000-0000-0000-000000000000",
///             },
///         },
///     },
///     platform: {
///         enabled: true,
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_apps_auth_config = azure_native.app.ContainerAppsAuthConfig("containerAppsAuthConfig",
///     auth_config_name="current",
///     container_app_name="myapp",
///     encryption_settings={
///         "container_app_auth_encryption_secret_name": "testEncryptionSecretName",
///         "container_app_auth_signing_secret_name": "testSigningSecretName",
///     },
///     global_validation={
///         "unauthenticated_client_action": azure_native.app.UnauthenticatedClientActionV2.ALLOW_ANONYMOUS,
///     },
///     identity_providers={
///         "facebook": {
///             "registration": {
///                 "app_id": "123",
///                 "app_secret_setting_name": "facebook-secret",
///             },
///         },
///     },
///     login={
///         "token_store": {
///             "azure_blob_storage": {
///                 "blob_container_uri": "https://test.blob.core.windows.net/container1",
///                 "client_id": "00000000-0000-0000-0000-000000000000",
///             },
///         },
///     },
///     platform={
///         "enabled": True,
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   containerAppsAuthConfig:
///     type: azure-native:app:ContainerAppsAuthConfig
///     properties:
///       authConfigName: current
///       containerAppName: myapp
///       encryptionSettings:
///         containerAppAuthEncryptionSecretName: testEncryptionSecretName
///         containerAppAuthSigningSecretName: testSigningSecretName
///       globalValidation:
///         unauthenticatedClientAction: AllowAnonymous
///       identityProviders:
///         facebook:
///           registration:
///             appId: '123'
///             appSecretSettingName: facebook-secret
///       login:
///         tokenStore:
///           azureBlobStorage:
///             blobContainerUri: https://test.blob.core.windows.net/container1
///             clientId: 00000000-0000-0000-0000-000000000000
///       platform:
///         enabled: true
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Container App AuthConfig with msi managedIdentityResourceId blob storage token store
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerAppsAuthConfig = new AzureNative.App.ContainerAppsAuthConfig("containerAppsAuthConfig", new()
///     {
///         AuthConfigName = "current",
///         ContainerAppName = "myapp",
///         EncryptionSettings = new AzureNative.App.Inputs.EncryptionSettingsArgs
///         {
///             ContainerAppAuthEncryptionSecretName = "testEncryptionSecretName",
///             ContainerAppAuthSigningSecretName = "testSigningSecretName",
///         },
///         GlobalValidation = new AzureNative.App.Inputs.GlobalValidationArgs
///         {
///             UnauthenticatedClientAction = AzureNative.App.UnauthenticatedClientActionV2.AllowAnonymous,
///         },
///         IdentityProviders = new AzureNative.App.Inputs.IdentityProvidersArgs
///         {
///             Facebook = new AzureNative.App.Inputs.FacebookArgs
///             {
///                 Registration = new AzureNative.App.Inputs.AppRegistrationArgs
///                 {
///                     AppId = "123",
///                     AppSecretSettingName = "facebook-secret",
///                 },
///             },
///         },
///         Login = new AzureNative.App.Inputs.LoginArgs
///         {
///             TokenStore = new AzureNative.App.Inputs.TokenStoreArgs
///             {
///                 AzureBlobStorage = new AzureNative.App.Inputs.BlobStorageTokenStoreArgs
///                 {
///                     BlobContainerUri = "https://test.blob.core.windows.net/container1",
///                     ManagedIdentityResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1",
///                 },
///             },
///         },
///         Platform = new AzureNative.App.Inputs.AuthPlatformArgs
///         {
///             Enabled = true,
///         },
///         ResourceGroupName = "rg1",
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewContainerAppsAuthConfig(ctx, "containerAppsAuthConfig", &app.ContainerAppsAuthConfigArgs{
/// 			AuthConfigName:   pulumi.String("current"),
/// 			ContainerAppName: pulumi.String("myapp"),
/// 			EncryptionSettings: &app.EncryptionSettingsArgs{
/// 				ContainerAppAuthEncryptionSecretName: pulumi.String("testEncryptionSecretName"),
/// 				ContainerAppAuthSigningSecretName:    pulumi.String("testSigningSecretName"),
/// 			},
/// 			GlobalValidation: &app.GlobalValidationArgs{
/// 				UnauthenticatedClientAction: app.UnauthenticatedClientActionV2AllowAnonymous,
/// 			},
/// 			IdentityProviders: &app.IdentityProvidersArgs{
/// 				Facebook: &app.FacebookArgs{
/// 					Registration: &app.AppRegistrationArgs{
/// 						AppId:                pulumi.String("123"),
/// 						AppSecretSettingName: pulumi.String("facebook-secret"),
/// 					},
/// 				},
/// 			},
/// 			Login: &app.LoginArgs{
/// 				TokenStore: &app.TokenStoreArgs{
/// 					AzureBlobStorage: &app.BlobStorageTokenStoreArgs{
/// 						BlobContainerUri:          pulumi.String("https://test.blob.core.windows.net/container1"),
/// 						ManagedIdentityResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1"),
/// 					},
/// 				},
/// 			},
/// 			Platform: &app.AuthPlatformArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.app.ContainerAppsAuthConfig;
/// import com.pulumi.azurenative.app.ContainerAppsAuthConfigArgs;
/// import com.pulumi.azurenative.app.inputs.EncryptionSettingsArgs;
/// import com.pulumi.azurenative.app.inputs.GlobalValidationArgs;
/// import com.pulumi.azurenative.app.inputs.IdentityProvidersArgs;
/// import com.pulumi.azurenative.app.inputs.FacebookArgs;
/// import com.pulumi.azurenative.app.inputs.AppRegistrationArgs;
/// import com.pulumi.azurenative.app.inputs.LoginArgs;
/// import com.pulumi.azurenative.app.inputs.TokenStoreArgs;
/// import com.pulumi.azurenative.app.inputs.BlobStorageTokenStoreArgs;
/// import com.pulumi.azurenative.app.inputs.AuthPlatformArgs;
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
///         var containerAppsAuthConfig = new ContainerAppsAuthConfig("containerAppsAuthConfig", ContainerAppsAuthConfigArgs.builder()
///             .authConfigName("current")
///             .containerAppName("myapp")
///             .encryptionSettings(EncryptionSettingsArgs.builder()
///                 .containerAppAuthEncryptionSecretName("testEncryptionSecretName")
///                 .containerAppAuthSigningSecretName("testSigningSecretName")
///                 .build())
///             .globalValidation(GlobalValidationArgs.builder()
///                 .unauthenticatedClientAction("AllowAnonymous")
///                 .build())
///             .identityProviders(IdentityProvidersArgs.builder()
///                 .facebook(FacebookArgs.builder()
///                     .registration(AppRegistrationArgs.builder()
///                         .appId("123")
///                         .appSecretSettingName("facebook-secret")
///                         .build())
///                     .build())
///                 .build())
///             .login(LoginArgs.builder()
///                 .tokenStore(TokenStoreArgs.builder()
///                     .azureBlobStorage(BlobStorageTokenStoreArgs.builder()
///                         .blobContainerUri("https://test.blob.core.windows.net/container1")
///                         .managedIdentityResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1")
///                         .build())
///                     .build())
///                 .build())
///             .platform(AuthPlatformArgs.builder()
///                 .enabled(true)
///                 .build())
///             .resourceGroupName("rg1")
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
/// const containerAppsAuthConfig = new azure_native.app.ContainerAppsAuthConfig("containerAppsAuthConfig", {
///     authConfigName: "current",
///     containerAppName: "myapp",
///     encryptionSettings: {
///         containerAppAuthEncryptionSecretName: "testEncryptionSecretName",
///         containerAppAuthSigningSecretName: "testSigningSecretName",
///     },
///     globalValidation: {
///         unauthenticatedClientAction: azure_native.app.UnauthenticatedClientActionV2.AllowAnonymous,
///     },
///     identityProviders: {
///         facebook: {
///             registration: {
///                 appId: "123",
///                 appSecretSettingName: "facebook-secret",
///             },
///         },
///     },
///     login: {
///         tokenStore: {
///             azureBlobStorage: {
///                 blobContainerUri: "https://test.blob.core.windows.net/container1",
///                 managedIdentityResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1",
///             },
///         },
///     },
///     platform: {
///         enabled: true,
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_apps_auth_config = azure_native.app.ContainerAppsAuthConfig("containerAppsAuthConfig",
///     auth_config_name="current",
///     container_app_name="myapp",
///     encryption_settings={
///         "container_app_auth_encryption_secret_name": "testEncryptionSecretName",
///         "container_app_auth_signing_secret_name": "testSigningSecretName",
///     },
///     global_validation={
///         "unauthenticated_client_action": azure_native.app.UnauthenticatedClientActionV2.ALLOW_ANONYMOUS,
///     },
///     identity_providers={
///         "facebook": {
///             "registration": {
///                 "app_id": "123",
///                 "app_secret_setting_name": "facebook-secret",
///             },
///         },
///     },
///     login={
///         "token_store": {
///             "azure_blob_storage": {
///                 "blob_container_uri": "https://test.blob.core.windows.net/container1",
///                 "managed_identity_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1",
///             },
///         },
///     },
///     platform={
///         "enabled": True,
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   containerAppsAuthConfig:
///     type: azure-native:app:ContainerAppsAuthConfig
///     properties:
///       authConfigName: current
///       containerAppName: myapp
///       encryptionSettings:
///         containerAppAuthEncryptionSecretName: testEncryptionSecretName
///         containerAppAuthSigningSecretName: testSigningSecretName
///       globalValidation:
///         unauthenticatedClientAction: AllowAnonymous
///       identityProviders:
///         facebook:
///           registration:
///             appId: '123'
///             appSecretSettingName: facebook-secret
///       login:
///         tokenStore:
///           azureBlobStorage:
///             blobContainerUri: https://test.blob.core.windows.net/container1
///             managedIdentityResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity1
///       platform:
///         enabled: true
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:app:ContainerAppsAuthConfig current /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/containerApps/{containerAppName}/authConfigs/{authConfigName}
/// ```
class ContainerAppsAuthConfig extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The configuration settings of the secrets references of encryption key and signing key for ContainerApp Service Authentication/Authorization.
  late final pulumi.Output<EncryptionSettingsResponse?> encryptionSettings;
  /// The configuration settings that determines the validation flow of users using  Service Authentication/Authorization.
  late final pulumi.Output<GlobalValidationResponse?> globalValidation;
  /// The configuration settings of the HTTP requests for authentication and authorization requests made against ContainerApp Service Authentication/Authorization.
  late final pulumi.Output<HttpSettingsResponse?> httpSettings;
  /// The configuration settings of each of the identity providers used to configure ContainerApp Service Authentication/Authorization.
  late final pulumi.Output<IdentityProvidersResponse?> identityProviders;
  /// The configuration settings of the login flow of users using ContainerApp Service Authentication/Authorization.
  late final pulumi.Output<LoginResponse?> login;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The configuration settings of the platform of ContainerApp Service Authentication/Authorization.
  late final pulumi.Output<AuthPlatformResponse?> platform;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ContainerAppsAuthConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerAppsAuthConfig]. {@macro pulumi_app_container_apps_auth_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerAppsAuthConfig(
    String name, {
    ContainerAppsAuthConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:ContainerAppsAuthConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.encryptionSettings = registerOutput<EncryptionSettingsResponse?>('encryptionSettings');
    this.globalValidation = registerOutput<GlobalValidationResponse?>('globalValidation');
    this.httpSettings = registerOutput<HttpSettingsResponse?>('httpSettings');
    this.identityProviders = registerOutput<IdentityProvidersResponse?>('identityProviders');
    this.login = registerOutput<LoginResponse?>('login');
    this.name = registerOutput<String>('name');
    this.platform = registerOutput<AuthPlatformResponse?>('platform');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
