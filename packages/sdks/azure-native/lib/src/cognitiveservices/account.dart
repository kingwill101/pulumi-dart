import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_properties_response.dart';
import 'identity_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Cognitive Services account is an Azure resource representing the provisioned account, it's type, location and SKU.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Account
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.CognitiveServices.Account("account", new()
///     {
///         AccountName = "testCreate1",
///         Identity = new AzureNative.CognitiveServices.Inputs.IdentityArgs
///         {
///             Type = AzureNative.CognitiveServices.ResourceIdentityType.SystemAssigned,
///         },
///         Kind = "Emotion",
///         Location = "West US",
///         Properties = new AzureNative.CognitiveServices.Inputs.AccountPropertiesArgs
///         {
///             Encryption = new AzureNative.CognitiveServices.Inputs.EncryptionArgs
///             {
///                 KeySource = AzureNative.CognitiveServices.KeySource.Microsoft_KeyVault,
///                 KeyVaultProperties = new AzureNative.CognitiveServices.Inputs.KeyVaultPropertiesArgs
///                 {
///                     KeyName = "KeyName",
///                     KeyVaultUri = "https://pltfrmscrts-use-pc-dev.vault.azure.net/",
///                     KeyVersion = "891CF236-D241-4738-9462-D506AF493DFA",
///                 },
///             },
///             UserOwnedStorage = new[]
///             {
///                 new AzureNative.CognitiveServices.Inputs.UserOwnedStorageArgs
///                 {
///                     ResourceId = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount",
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.CognitiveServices.Inputs.SkuArgs
///         {
///             Name = "S0",
///         },
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
/// 	cognitiveservices "github.com/pulumi/pulumi-azure-native-sdk/cognitiveservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognitiveservices.NewAccount(ctx, "account", &cognitiveservices.AccountArgs{
/// 			AccountName: pulumi.String("testCreate1"),
/// 			Identity: &cognitiveservices.IdentityArgs{
/// 				Type: cognitiveservices.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			Kind:     pulumi.String("Emotion"),
/// 			Location: pulumi.String("West US"),
/// 			Properties: &cognitiveservices.AccountPropertiesArgs{
/// 				Encryption: &cognitiveservices.EncryptionArgs{
/// 					KeySource: pulumi.String(cognitiveservices.KeySource_Microsoft_KeyVault),
/// 					KeyVaultProperties: &cognitiveservices.KeyVaultPropertiesArgs{
/// 						KeyName:     pulumi.String("KeyName"),
/// 						KeyVaultUri: pulumi.String("https://pltfrmscrts-use-pc-dev.vault.azure.net/"),
/// 						KeyVersion:  pulumi.String("891CF236-D241-4738-9462-D506AF493DFA"),
/// 					},
/// 				},
/// 				UserOwnedStorage: cognitiveservices.UserOwnedStorageArray{
/// 					&cognitiveservices.UserOwnedStorageArgs{
/// 						ResourceId: pulumi.String("/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &cognitiveservices.SkuArgs{
/// 				Name: pulumi.String("S0"),
/// 			},
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
/// import com.pulumi.azurenative.cognitiveservices.Account;
/// import com.pulumi.azurenative.cognitiveservices.AccountArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.IdentityArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.AccountPropertiesArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.EncryptionArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.KeyVaultPropertiesArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.SkuArgs;
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
///         var account = new Account("account", AccountArgs.builder()
///             .accountName("testCreate1")
///             .identity(IdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .kind("Emotion")
///             .location("West US")
///             .properties(AccountPropertiesArgs.builder()
///                 .encryption(EncryptionArgs.builder()
///                     .keySource("Microsoft.KeyVault")
///                     .keyVaultProperties(KeyVaultPropertiesArgs.builder()
///                         .keyName("KeyName")
///                         .keyVaultUri("https://pltfrmscrts-use-pc-dev.vault.azure.net/")
///                         .keyVersion("891CF236-D241-4738-9462-D506AF493DFA")
///                         .build())
///                     .build())
///                 .userOwnedStorage(UserOwnedStorageArgs.builder()
///                     .resourceId("/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("S0")
///                 .build())
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
/// const account = new azure_native.cognitiveservices.Account("account", {
///     accountName: "testCreate1",
///     identity: {
///         type: azure_native.cognitiveservices.ResourceIdentityType.SystemAssigned,
///     },
///     kind: "Emotion",
///     location: "West US",
///     properties: {
///         encryption: {
///             keySource: azure_native.cognitiveservices.KeySource.Microsoft_KeyVault,
///             keyVaultProperties: {
///                 keyName: "KeyName",
///                 keyVaultUri: "https://pltfrmscrts-use-pc-dev.vault.azure.net/",
///                 keyVersion: "891CF236-D241-4738-9462-D506AF493DFA",
///             },
///         },
///         userOwnedStorage: [{
///             resourceId: "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount",
///         }],
///     },
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: "S0",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.cognitiveservices.Account("account",
///     account_name="testCreate1",
///     identity={
///         "type": azure_native.cognitiveservices.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     kind="Emotion",
///     location="West US",
///     properties={
///         "encryption": {
///             "key_source": azure_native.cognitiveservices.KeySource.MICROSOFT_KEY_VAULT,
///             "key_vault_properties": {
///                 "key_name": "KeyName",
///                 "key_vault_uri": "https://pltfrmscrts-use-pc-dev.vault.azure.net/",
///                 "key_version": "891CF236-D241-4738-9462-D506AF493DFA",
///             },
///         },
///         "user_owned_storage": [{
///             "resource_id": "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount",
///         }],
///     },
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": "S0",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:cognitiveservices:Account
///     properties:
///       accountName: testCreate1
///       identity:
///         type: SystemAssigned
///       kind: Emotion
///       location: West US
///       properties:
///         encryption:
///           keySource: Microsoft.KeyVault
///           keyVaultProperties:
///             keyName: KeyName
///             keyVaultUri: https://pltfrmscrts-use-pc-dev.vault.azure.net/
///             keyVersion: 891CF236-D241-4738-9462-D506AF493DFA
///         userOwnedStorage:
///           - resourceId: /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount
///       resourceGroupName: myResourceGroup
///       sku:
///         name: S0
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Account Min
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.CognitiveServices.Account("account", new()
///     {
///         AccountName = "testCreate1",
///         Identity = new AzureNative.CognitiveServices.Inputs.IdentityArgs
///         {
///             Type = AzureNative.CognitiveServices.ResourceIdentityType.SystemAssigned,
///         },
///         Kind = "CognitiveServices",
///         Location = "West US",
///         Properties = null,
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.CognitiveServices.Inputs.SkuArgs
///         {
///             Name = "S0",
///         },
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
/// 	cognitiveservices "github.com/pulumi/pulumi-azure-native-sdk/cognitiveservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognitiveservices.NewAccount(ctx, "account", &cognitiveservices.AccountArgs{
/// 			AccountName: pulumi.String("testCreate1"),
/// 			Identity: &cognitiveservices.IdentityArgs{
/// 				Type: cognitiveservices.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			Kind:              pulumi.String("CognitiveServices"),
/// 			Location:          pulumi.String("West US"),
/// 			Properties:        &cognitiveservices.AccountPropertiesArgs{},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &cognitiveservices.SkuArgs{
/// 				Name: pulumi.String("S0"),
/// 			},
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
/// import com.pulumi.azurenative.cognitiveservices.Account;
/// import com.pulumi.azurenative.cognitiveservices.AccountArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.IdentityArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.AccountPropertiesArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.SkuArgs;
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
///         var account = new Account("account", AccountArgs.builder()
///             .accountName("testCreate1")
///             .identity(IdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .kind("CognitiveServices")
///             .location("West US")
///             .properties(AccountPropertiesArgs.builder()
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("S0")
///                 .build())
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
/// const account = new azure_native.cognitiveservices.Account("account", {
///     accountName: "testCreate1",
///     identity: {
///         type: azure_native.cognitiveservices.ResourceIdentityType.SystemAssigned,
///     },
///     kind: "CognitiveServices",
///     location: "West US",
///     properties: {},
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: "S0",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.cognitiveservices.Account("account",
///     account_name="testCreate1",
///     identity={
///         "type": azure_native.cognitiveservices.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     kind="CognitiveServices",
///     location="West US",
///     properties={},
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": "S0",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:cognitiveservices:Account
///     properties:
///       accountName: testCreate1
///       identity:
///         type: SystemAssigned
///       kind: CognitiveServices
///       location: West US
///       properties: {}
///       resourceGroupName: myResourceGroup
///       sku:
///         name: S0
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
/// $ pulumi import azure-native:cognitiveservices:Account testCreate1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}
/// ```
class Account extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource Etag.
  late final pulumi.Output<String> etag;

  /// Identity for the resource.
  late final pulumi.Output<IdentityResponse?> identity;

  /// The Kind of the resource.
  late final pulumi.Output<String?> kind;

  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Properties of Cognitive Services account.
  late final pulumi.Output<AccountPropertiesResponse> properties;

  /// The resource model definition representing SKU
  late final pulumi.Output<SkuResponse?> sku;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_cognitiveservices_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cognitiveservices:Account',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    identity = registerOutput<IdentityResponse?>('identity');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AccountPropertiesResponse>('properties');
    sku = registerOutput<SkuResponse?>('sku');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
