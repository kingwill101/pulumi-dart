import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_storage_properties_response.dart';
import 'batch_account_args.dart';
import 'batch_account_identity_response.dart';
import 'encryption_properties_response.dart';
import 'key_vault_reference_response.dart';
import 'network_profile_response.dart';
import 'system_data_response.dart';

/// Contains information about an Azure Batch account.
///
/// Uses Azure REST API version 2024-07-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01, 2024-02-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native batch [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BatchAccountCreate_BYOS
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var batchAccount = new AzureNative.Batch.BatchAccount("batchAccount", new()
///     {
///         AccountName = "sampleacct",
///         AutoStorage = new AzureNative.Batch.Inputs.AutoStorageBasePropertiesArgs
///         {
///             StorageAccountId = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage",
///         },
///         KeyVaultReference = new AzureNative.Batch.Inputs.KeyVaultReferenceArgs
///         {
///             Id = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.KeyVault/vaults/sample",
///             Url = "http://sample.vault.azure.net/",
///         },
///         Location = "japaneast",
///         PoolAllocationMode = AzureNative.Batch.PoolAllocationMode.UserSubscription,
///         ResourceGroupName = "default-azurebatch-japaneast",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewBatchAccount(ctx, "batchAccount", &batch.BatchAccountArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			AutoStorage: &batch.AutoStorageBasePropertiesArgs{
/// 				StorageAccountId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage"),
/// 			},
/// 			KeyVaultReference: &batch.KeyVaultReferenceArgs{
/// 				Id:  pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.KeyVault/vaults/sample"),
/// 				Url: pulumi.String("http://sample.vault.azure.net/"),
/// 			},
/// 			Location:           pulumi.String("japaneast"),
/// 			PoolAllocationMode: batch.PoolAllocationModeUserSubscription,
/// 			ResourceGroupName:  pulumi.String("default-azurebatch-japaneast"),
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
/// resource "azure-native_batch_batchaccount" "batchAccount" {
///   account_name = "sampleacct"
///   auto_storage = {
///     storage_account_id = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage"
///   }
///   key_vault_reference = {
///     id  = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.KeyVault/vaults/sample"
///     url = "http://sample.vault.azure.net/"
///   }
///   location             = "japaneast"
///   pool_allocation_mode = "UserSubscription"
///   resource_group_name  = "default-azurebatch-japaneast"
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
/// import com.pulumi.azurenative.batch.BatchAccount;
/// import com.pulumi.azurenative.batch.BatchAccountArgs;
/// import com.pulumi.azurenative.batch.inputs.AutoStorageBasePropertiesArgs;
/// import com.pulumi.azurenative.batch.inputs.KeyVaultReferenceArgs;
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
///         var batchAccount = new BatchAccount("batchAccount", BatchAccountArgs.builder()
///             .accountName("sampleacct")
///             .autoStorage(AutoStorageBasePropertiesArgs.builder()
///                 .storageAccountId("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage")
///                 .build())
///             .keyVaultReference(KeyVaultReferenceArgs.builder()
///                 .id("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.KeyVault/vaults/sample")
///                 .url("http://sample.vault.azure.net/")
///                 .build())
///             .location("japaneast")
///             .poolAllocationMode("UserSubscription")
///             .resourceGroupName("default-azurebatch-japaneast")
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
/// const batchAccount = new azure_native.batch.BatchAccount("batchAccount", {
///     accountName: "sampleacct",
///     autoStorage: {
///         storageAccountId: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage",
///     },
///     keyVaultReference: {
///         id: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.KeyVault/vaults/sample",
///         url: "http://sample.vault.azure.net/",
///     },
///     location: "japaneast",
///     poolAllocationMode: azure_native.batch.PoolAllocationMode.UserSubscription,
///     resourceGroupName: "default-azurebatch-japaneast",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// batch_account = azure_native.batch.BatchAccount("batchAccount",
///     account_name="sampleacct",
///     auto_storage={
///         "storage_account_id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage",
///     },
///     key_vault_reference={
///         "id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.KeyVault/vaults/sample",
///         "url": "http://sample.vault.azure.net/",
///     },
///     location="japaneast",
///     pool_allocation_mode=azure_native.batch.PoolAllocationMode.USER_SUBSCRIPTION,
///     resource_group_name="default-azurebatch-japaneast")
///
/// ```
///
/// ```yaml
/// resources:
///   batchAccount:
///     type: azure-native:batch:BatchAccount
///     properties:
///       accountName: sampleacct
///       autoStorage:
///         storageAccountId: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage
///       keyVaultReference:
///         id: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.KeyVault/vaults/sample
///         url: http://sample.vault.azure.net/
///       location: japaneast
///       poolAllocationMode: UserSubscription
///       resourceGroupName: default-azurebatch-japaneast
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### BatchAccountCreate_Default
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var batchAccount = new AzureNative.Batch.BatchAccount("batchAccount", new()
///     {
///         AccountName = "sampleacct",
///         AutoStorage = new AzureNative.Batch.Inputs.AutoStorageBasePropertiesArgs
///         {
///             StorageAccountId = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage",
///         },
///         Location = "japaneast",
///         ResourceGroupName = "default-azurebatch-japaneast",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewBatchAccount(ctx, "batchAccount", &batch.BatchAccountArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			AutoStorage: &batch.AutoStorageBasePropertiesArgs{
/// 				StorageAccountId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage"),
/// 			},
/// 			Location:          pulumi.String("japaneast"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
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
/// resource "azure-native_batch_batchaccount" "batchAccount" {
///   account_name = "sampleacct"
///   auto_storage = {
///     storage_account_id = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage"
///   }
///   location            = "japaneast"
///   resource_group_name = "default-azurebatch-japaneast"
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
/// import com.pulumi.azurenative.batch.BatchAccount;
/// import com.pulumi.azurenative.batch.BatchAccountArgs;
/// import com.pulumi.azurenative.batch.inputs.AutoStorageBasePropertiesArgs;
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
///         var batchAccount = new BatchAccount("batchAccount", BatchAccountArgs.builder()
///             .accountName("sampleacct")
///             .autoStorage(AutoStorageBasePropertiesArgs.builder()
///                 .storageAccountId("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage")
///                 .build())
///             .location("japaneast")
///             .resourceGroupName("default-azurebatch-japaneast")
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
/// const batchAccount = new azure_native.batch.BatchAccount("batchAccount", {
///     accountName: "sampleacct",
///     autoStorage: {
///         storageAccountId: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage",
///     },
///     location: "japaneast",
///     resourceGroupName: "default-azurebatch-japaneast",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// batch_account = azure_native.batch.BatchAccount("batchAccount",
///     account_name="sampleacct",
///     auto_storage={
///         "storage_account_id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage",
///     },
///     location="japaneast",
///     resource_group_name="default-azurebatch-japaneast")
///
/// ```
///
/// ```yaml
/// resources:
///   batchAccount:
///     type: azure-native:batch:BatchAccount
///     properties:
///       accountName: sampleacct
///       autoStorage:
///         storageAccountId: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage
///       location: japaneast
///       resourceGroupName: default-azurebatch-japaneast
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### BatchAccountCreate_SystemAssignedIdentity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var batchAccount = new AzureNative.Batch.BatchAccount("batchAccount", new()
///     {
///         AccountName = "sampleacct",
///         AutoStorage = new AzureNative.Batch.Inputs.AutoStorageBasePropertiesArgs
///         {
///             StorageAccountId = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage",
///         },
///         Identity = new AzureNative.Batch.Inputs.BatchAccountIdentityArgs
///         {
///             Type = AzureNative.Batch.ResourceIdentityType.SystemAssigned,
///         },
///         Location = "japaneast",
///         ResourceGroupName = "default-azurebatch-japaneast",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewBatchAccount(ctx, "batchAccount", &batch.BatchAccountArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			AutoStorage: &batch.AutoStorageBasePropertiesArgs{
/// 				StorageAccountId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage"),
/// 			},
/// 			Identity: &batch.BatchAccountIdentityArgs{
/// 				Type: batch.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			Location:          pulumi.String("japaneast"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
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
/// resource "azure-native_batch_batchaccount" "batchAccount" {
///   account_name = "sampleacct"
///   auto_storage = {
///     storage_account_id = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage"
///   }
///   identity = {
///     type = "SystemAssigned"
///   }
///   location            = "japaneast"
///   resource_group_name = "default-azurebatch-japaneast"
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
/// import com.pulumi.azurenative.batch.BatchAccount;
/// import com.pulumi.azurenative.batch.BatchAccountArgs;
/// import com.pulumi.azurenative.batch.inputs.AutoStorageBasePropertiesArgs;
/// import com.pulumi.azurenative.batch.inputs.BatchAccountIdentityArgs;
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
///         var batchAccount = new BatchAccount("batchAccount", BatchAccountArgs.builder()
///             .accountName("sampleacct")
///             .autoStorage(AutoStorageBasePropertiesArgs.builder()
///                 .storageAccountId("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage")
///                 .build())
///             .identity(BatchAccountIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("japaneast")
///             .resourceGroupName("default-azurebatch-japaneast")
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
/// const batchAccount = new azure_native.batch.BatchAccount("batchAccount", {
///     accountName: "sampleacct",
///     autoStorage: {
///         storageAccountId: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage",
///     },
///     identity: {
///         type: azure_native.batch.ResourceIdentityType.SystemAssigned,
///     },
///     location: "japaneast",
///     resourceGroupName: "default-azurebatch-japaneast",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// batch_account = azure_native.batch.BatchAccount("batchAccount",
///     account_name="sampleacct",
///     auto_storage={
///         "storage_account_id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage",
///     },
///     identity={
///         "type": azure_native.batch.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="japaneast",
///     resource_group_name="default-azurebatch-japaneast")
///
/// ```
///
/// ```yaml
/// resources:
///   batchAccount:
///     type: azure-native:batch:BatchAccount
///     properties:
///       accountName: sampleacct
///       autoStorage:
///         storageAccountId: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage
///       identity:
///         type: SystemAssigned
///       location: japaneast
///       resourceGroupName: default-azurebatch-japaneast
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PrivateBatchAccountCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var batchAccount = new AzureNative.Batch.BatchAccount("batchAccount", new()
///     {
///         AccountName = "sampleacct",
///         AutoStorage = new AzureNative.Batch.Inputs.AutoStorageBasePropertiesArgs
///         {
///             StorageAccountId = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage",
///         },
///         KeyVaultReference = new AzureNative.Batch.Inputs.KeyVaultReferenceArgs
///         {
///             Id = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.KeyVault/vaults/sample",
///             Url = "http://sample.vault.azure.net/",
///         },
///         Location = "japaneast",
///         PublicNetworkAccess = AzureNative.Batch.PublicNetworkAccessType.Disabled,
///         ResourceGroupName = "default-azurebatch-japaneast",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewBatchAccount(ctx, "batchAccount", &batch.BatchAccountArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			AutoStorage: &batch.AutoStorageBasePropertiesArgs{
/// 				StorageAccountId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage"),
/// 			},
/// 			KeyVaultReference: &batch.KeyVaultReferenceArgs{
/// 				Id:  pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.KeyVault/vaults/sample"),
/// 				Url: pulumi.String("http://sample.vault.azure.net/"),
/// 			},
/// 			Location:            pulumi.String("japaneast"),
/// 			PublicNetworkAccess: batch.PublicNetworkAccessTypeDisabled,
/// 			ResourceGroupName:   pulumi.String("default-azurebatch-japaneast"),
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
/// resource "azure-native_batch_batchaccount" "batchAccount" {
///   account_name = "sampleacct"
///   auto_storage = {
///     storage_account_id = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage"
///   }
///   key_vault_reference = {
///     id  = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.KeyVault/vaults/sample"
///     url = "http://sample.vault.azure.net/"
///   }
///   location              = "japaneast"
///   public_network_access = "Disabled"
///   resource_group_name   = "default-azurebatch-japaneast"
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
/// import com.pulumi.azurenative.batch.BatchAccount;
/// import com.pulumi.azurenative.batch.BatchAccountArgs;
/// import com.pulumi.azurenative.batch.inputs.AutoStorageBasePropertiesArgs;
/// import com.pulumi.azurenative.batch.inputs.KeyVaultReferenceArgs;
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
///         var batchAccount = new BatchAccount("batchAccount", BatchAccountArgs.builder()
///             .accountName("sampleacct")
///             .autoStorage(AutoStorageBasePropertiesArgs.builder()
///                 .storageAccountId("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage")
///                 .build())
///             .keyVaultReference(KeyVaultReferenceArgs.builder()
///                 .id("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.KeyVault/vaults/sample")
///                 .url("http://sample.vault.azure.net/")
///                 .build())
///             .location("japaneast")
///             .publicNetworkAccess("Disabled")
///             .resourceGroupName("default-azurebatch-japaneast")
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
/// const batchAccount = new azure_native.batch.BatchAccount("batchAccount", {
///     accountName: "sampleacct",
///     autoStorage: {
///         storageAccountId: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage",
///     },
///     keyVaultReference: {
///         id: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.KeyVault/vaults/sample",
///         url: "http://sample.vault.azure.net/",
///     },
///     location: "japaneast",
///     publicNetworkAccess: azure_native.batch.PublicNetworkAccessType.Disabled,
///     resourceGroupName: "default-azurebatch-japaneast",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// batch_account = azure_native.batch.BatchAccount("batchAccount",
///     account_name="sampleacct",
///     auto_storage={
///         "storage_account_id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage",
///     },
///     key_vault_reference={
///         "id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.KeyVault/vaults/sample",
///         "url": "http://sample.vault.azure.net/",
///     },
///     location="japaneast",
///     public_network_access=azure_native.batch.PublicNetworkAccessType.DISABLED,
///     resource_group_name="default-azurebatch-japaneast")
///
/// ```
///
/// ```yaml
/// resources:
///   batchAccount:
///     type: azure-native:batch:BatchAccount
///     properties:
///       accountName: sampleacct
///       autoStorage:
///         storageAccountId: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Storage/storageAccounts/samplestorage
///       keyVaultReference:
///         id: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.KeyVault/vaults/sample
///         url: http://sample.vault.azure.net/
///       location: japaneast
///       publicNetworkAccess: Disabled
///       resourceGroupName: default-azurebatch-japaneast
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
/// $ pulumi import azure-native:batch:BatchAccount sampleacct /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Batch/batchAccounts/{accountName}
/// ```
class BatchAccount extends pulumi.CustomResource {
  /// The account endpoint used to interact with the Batch service.
  late final pulumi.Output<String> accountEndpoint;
  /// The active job and job schedule quota for the Batch account.
  late final pulumi.Output<int> activeJobAndJobScheduleQuota;
  /// List of allowed authentication modes for the Batch account that can be used to authenticate with the data plane. This does not affect authentication with the control plane.
  late final pulumi.Output<List<String>> allowedAuthenticationModes;
  /// Contains information about the auto-storage account associated with a Batch account.
  late final pulumi.Output<AutoStoragePropertiesResponse> autoStorage;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// For accounts with PoolAllocationMode set to UserSubscription, quota is managed on the subscription so this value is not returned.
  late final pulumi.Output<int> dedicatedCoreQuota;
  /// A list of the dedicated core quota per Virtual Machine family for the Batch account. For accounts with PoolAllocationMode set to UserSubscription, quota is managed on the subscription so this value is not returned.
  late final pulumi.Output<List<Map<String, dynamic>>> dedicatedCoreQuotaPerVMFamily;
  /// If this flag is true, dedicated core quota is enforced via both the dedicatedCoreQuotaPerVMFamily and dedicatedCoreQuota properties on the account. If this flag is false, dedicated core quota is enforced only via the dedicatedCoreQuota property on the account and does not consider Virtual Machine family.
  late final pulumi.Output<bool> dedicatedCoreQuotaPerVMFamilyEnforced;
  /// Configures how customer data is encrypted inside the Batch account. By default, accounts are encrypted using a Microsoft managed key. For additional control, a customer-managed key can be used instead.
  late final pulumi.Output<EncryptionPropertiesResponse> encryption;
  /// The identity of the Batch account.
  late final pulumi.Output<BatchAccountIdentityResponse?> identity;
  /// Identifies the Azure key vault associated with a Batch account.
  late final pulumi.Output<KeyVaultReferenceResponse> keyVaultReference;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// For accounts with PoolAllocationMode set to UserSubscription, quota is managed on the subscription so this value is not returned.
  late final pulumi.Output<int> lowPriorityCoreQuota;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The network profile only takes effect when publicNetworkAccess is enabled.
  late final pulumi.Output<NetworkProfileResponse?> networkProfile;
  /// The endpoint used by compute node to connect to the Batch node management service.
  late final pulumi.Output<String> nodeManagementEndpoint;
  /// The allocation mode for creating pools in the Batch account.
  late final pulumi.Output<String> poolAllocationMode;
  /// The pool quota for the Batch account.
  late final pulumi.Output<int> poolQuota;
  /// List of private endpoint connections associated with the Batch account
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// The provisioned state of the resource
  late final pulumi.Output<String> provisioningState;
  /// The network access type for operating on the resources in the Batch account.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BatchAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BatchAccount]. {@macro pulumi_batch_batch_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BatchAccount(
    String name, {
    BatchAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:batch:BatchAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountEndpoint = registerOutput<String>('accountEndpoint');
    activeJobAndJobScheduleQuota = registerOutput<int>('activeJobAndJobScheduleQuota');
    allowedAuthenticationModes = registerOutput<List<String>>('allowedAuthenticationModes');
    autoStorage = registerOutput<AutoStoragePropertiesResponse>('autoStorage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AutoStoragePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dedicatedCoreQuota = registerOutput<int>('dedicatedCoreQuota');
    dedicatedCoreQuotaPerVMFamily = registerOutput<List<Map<String, dynamic>>>('dedicatedCoreQuotaPerVMFamily');
    dedicatedCoreQuotaPerVMFamilyEnforced = registerOutput<bool>('dedicatedCoreQuotaPerVMFamilyEnforced');
    encryption = registerOutput<EncryptionPropertiesResponse>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EncryptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<BatchAccountIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BatchAccountIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultReference = registerOutput<KeyVaultReferenceResponse>('keyVaultReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyVaultReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    lowPriorityCoreQuota = registerOutput<int>('lowPriorityCoreQuota');
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<NetworkProfileResponse?>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeManagementEndpoint = registerOutput<String>('nodeManagementEndpoint');
    poolAllocationMode = registerOutput<String>('poolAllocationMode');
    poolQuota = registerOutput<int>('poolQuota');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
