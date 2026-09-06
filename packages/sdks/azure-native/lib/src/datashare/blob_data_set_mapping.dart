import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_data_set_mapping_args.dart';
import 'system_data_response.dart';

/// A Blob data set mapping.
///
/// Uses Azure REST API version 2021-08-01. In version 2.x of the Azure Native provider, it used API version 2021-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DataSetMappings_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobDataSetMapping = new AzureNative.DataShare.BlobDataSetMapping("blobDataSetMapping", new()
///     {
///         AccountName = "Account1",
///         ContainerName = "C1",
///         DataSetId = "a08f184b-0567-4b11-ba22-a1199336d226",
///         DataSetMappingName = "DatasetMapping1",
///         FilePath = "file21",
///         Kind = "Blob",
///         ResourceGroup = "SampleResourceGroup",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareSubscriptionName = "ShareSubscription1",
///         StorageAccountName = "storage2",
///         SubscriptionId = "433a8dfd-e5d5-4e77-ad86-90acdc75eb1a",
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
/// 	datashare "github.com/pulumi/pulumi-azure-native-sdk/datashare/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datashare.NewBlobDataSetMapping(ctx, "blobDataSetMapping", &datashare.BlobDataSetMappingArgs{
/// 			AccountName:           pulumi.String("Account1"),
/// 			ContainerName:         pulumi.String("C1"),
/// 			DataSetId:             pulumi.String("a08f184b-0567-4b11-ba22-a1199336d226"),
/// 			DataSetMappingName:    pulumi.String("DatasetMapping1"),
/// 			FilePath:              pulumi.String("file21"),
/// 			Kind:                  pulumi.String("Blob"),
/// 			ResourceGroup:         pulumi.String("SampleResourceGroup"),
/// 			ResourceGroupName:     pulumi.String("SampleResourceGroup"),
/// 			ShareSubscriptionName: pulumi.String("ShareSubscription1"),
/// 			StorageAccountName:    pulumi.String("storage2"),
/// 			SubscriptionId:        pulumi.String("433a8dfd-e5d5-4e77-ad86-90acdc75eb1a"),
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
/// resource "azure-native_datashare_blobdatasetmapping" "blobDataSetMapping" {
///   account_name            = "Account1"
///   container_name          = "C1"
///   data_set_id             = "a08f184b-0567-4b11-ba22-a1199336d226"
///   data_set_mapping_name   = "DatasetMapping1"
///   file_path               = "file21"
///   kind                    = "Blob"
///   resource_group          = "SampleResourceGroup"
///   resource_group_name     = "SampleResourceGroup"
///   share_subscription_name = "ShareSubscription1"
///   storage_account_name    = "storage2"
///   subscription_id         = "433a8dfd-e5d5-4e77-ad86-90acdc75eb1a"
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
/// import com.pulumi.azurenative.datashare.BlobDataSetMapping;
/// import com.pulumi.azurenative.datashare.BlobDataSetMappingArgs;
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
///         var blobDataSetMapping = new BlobDataSetMapping("blobDataSetMapping", BlobDataSetMappingArgs.builder()
///             .accountName("Account1")
///             .containerName("C1")
///             .dataSetId("a08f184b-0567-4b11-ba22-a1199336d226")
///             .dataSetMappingName("DatasetMapping1")
///             .filePath("file21")
///             .kind("Blob")
///             .resourceGroup("SampleResourceGroup")
///             .resourceGroupName("SampleResourceGroup")
///             .shareSubscriptionName("ShareSubscription1")
///             .storageAccountName("storage2")
///             .subscriptionId("433a8dfd-e5d5-4e77-ad86-90acdc75eb1a")
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
/// const blobDataSetMapping = new azure_native.datashare.BlobDataSetMapping("blobDataSetMapping", {
///     accountName: "Account1",
///     containerName: "C1",
///     dataSetId: "a08f184b-0567-4b11-ba22-a1199336d226",
///     dataSetMappingName: "DatasetMapping1",
///     filePath: "file21",
///     kind: "Blob",
///     resourceGroup: "SampleResourceGroup",
///     resourceGroupName: "SampleResourceGroup",
///     shareSubscriptionName: "ShareSubscription1",
///     storageAccountName: "storage2",
///     subscriptionId: "433a8dfd-e5d5-4e77-ad86-90acdc75eb1a",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blob_data_set_mapping = azure_native.datashare.BlobDataSetMapping("blobDataSetMapping",
///     account_name="Account1",
///     container_name="C1",
///     data_set_id="a08f184b-0567-4b11-ba22-a1199336d226",
///     data_set_mapping_name="DatasetMapping1",
///     file_path="file21",
///     kind="Blob",
///     resource_group="SampleResourceGroup",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1",
///     storage_account_name="storage2",
///     subscription_id="433a8dfd-e5d5-4e77-ad86-90acdc75eb1a")
///
/// ```
///
/// ```yaml
/// resources:
///   blobDataSetMapping:
///     type: azure-native:datashare:BlobDataSetMapping
///     properties:
///       accountName: Account1
///       containerName: C1
///       dataSetId: a08f184b-0567-4b11-ba22-a1199336d226
///       dataSetMappingName: DatasetMapping1
///       filePath: file21
///       kind: Blob
///       resourceGroup: SampleResourceGroup
///       resourceGroupName: SampleResourceGroup
///       shareSubscriptionName: ShareSubscription1
///       storageAccountName: storage2
///       subscriptionId: 433a8dfd-e5d5-4e77-ad86-90acdc75eb1a
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSetMappings_SqlDB_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobDataSetMapping = new AzureNative.DataShare.BlobDataSetMapping("blobDataSetMapping", new()
///     {
///         AccountName = "Account1",
///         DataSetMappingName = "DatasetMapping1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareSubscriptionName = "ShareSubscription1",
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
/// 	datashare "github.com/pulumi/pulumi-azure-native-sdk/datashare/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datashare.NewBlobDataSetMapping(ctx, "blobDataSetMapping", &datashare.BlobDataSetMappingArgs{
/// 			AccountName:           pulumi.String("Account1"),
/// 			DataSetMappingName:    pulumi.String("DatasetMapping1"),
/// 			ResourceGroupName:     pulumi.String("SampleResourceGroup"),
/// 			ShareSubscriptionName: pulumi.String("ShareSubscription1"),
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
/// resource "azure-native_datashare_blobdatasetmapping" "blobDataSetMapping" {
///   account_name            = "Account1"
///   data_set_mapping_name   = "DatasetMapping1"
///   resource_group_name     = "SampleResourceGroup"
///   share_subscription_name = "ShareSubscription1"
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
/// import com.pulumi.azurenative.datashare.BlobDataSetMapping;
/// import com.pulumi.azurenative.datashare.BlobDataSetMappingArgs;
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
///         var blobDataSetMapping = new BlobDataSetMapping("blobDataSetMapping", BlobDataSetMappingArgs.builder()
///             .accountName("Account1")
///             .dataSetMappingName("DatasetMapping1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareSubscriptionName("ShareSubscription1")
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
/// const blobDataSetMapping = new azure_native.datashare.BlobDataSetMapping("blobDataSetMapping", {
///     accountName: "Account1",
///     dataSetMappingName: "DatasetMapping1",
///     resourceGroupName: "SampleResourceGroup",
///     shareSubscriptionName: "ShareSubscription1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blob_data_set_mapping = azure_native.datashare.BlobDataSetMapping("blobDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   blobDataSetMapping:
///     type: azure-native:datashare:BlobDataSetMapping
///     properties:
///       accountName: Account1
///       dataSetMappingName: DatasetMapping1
///       resourceGroupName: SampleResourceGroup
///       shareSubscriptionName: ShareSubscription1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSetMappings_SqlDWDataSetToAdlsGen2File_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobDataSetMapping = new AzureNative.DataShare.BlobDataSetMapping("blobDataSetMapping", new()
///     {
///         AccountName = "Account1",
///         DataSetMappingName = "DatasetMapping1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareSubscriptionName = "ShareSubscription1",
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
/// 	datashare "github.com/pulumi/pulumi-azure-native-sdk/datashare/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datashare.NewBlobDataSetMapping(ctx, "blobDataSetMapping", &datashare.BlobDataSetMappingArgs{
/// 			AccountName:           pulumi.String("Account1"),
/// 			DataSetMappingName:    pulumi.String("DatasetMapping1"),
/// 			ResourceGroupName:     pulumi.String("SampleResourceGroup"),
/// 			ShareSubscriptionName: pulumi.String("ShareSubscription1"),
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
/// resource "azure-native_datashare_blobdatasetmapping" "blobDataSetMapping" {
///   account_name            = "Account1"
///   data_set_mapping_name   = "DatasetMapping1"
///   resource_group_name     = "SampleResourceGroup"
///   share_subscription_name = "ShareSubscription1"
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
/// import com.pulumi.azurenative.datashare.BlobDataSetMapping;
/// import com.pulumi.azurenative.datashare.BlobDataSetMappingArgs;
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
///         var blobDataSetMapping = new BlobDataSetMapping("blobDataSetMapping", BlobDataSetMappingArgs.builder()
///             .accountName("Account1")
///             .dataSetMappingName("DatasetMapping1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareSubscriptionName("ShareSubscription1")
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
/// const blobDataSetMapping = new azure_native.datashare.BlobDataSetMapping("blobDataSetMapping", {
///     accountName: "Account1",
///     dataSetMappingName: "DatasetMapping1",
///     resourceGroupName: "SampleResourceGroup",
///     shareSubscriptionName: "ShareSubscription1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blob_data_set_mapping = azure_native.datashare.BlobDataSetMapping("blobDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   blobDataSetMapping:
///     type: azure-native:datashare:BlobDataSetMapping
///     properties:
///       accountName: Account1
///       dataSetMappingName: DatasetMapping1
///       resourceGroupName: SampleResourceGroup
///       shareSubscriptionName: ShareSubscription1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSetMappings_SqlDW_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobDataSetMapping = new AzureNative.DataShare.BlobDataSetMapping("blobDataSetMapping", new()
///     {
///         AccountName = "Account1",
///         DataSetMappingName = "DatasetMapping1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareSubscriptionName = "ShareSubscription1",
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
/// 	datashare "github.com/pulumi/pulumi-azure-native-sdk/datashare/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datashare.NewBlobDataSetMapping(ctx, "blobDataSetMapping", &datashare.BlobDataSetMappingArgs{
/// 			AccountName:           pulumi.String("Account1"),
/// 			DataSetMappingName:    pulumi.String("DatasetMapping1"),
/// 			ResourceGroupName:     pulumi.String("SampleResourceGroup"),
/// 			ShareSubscriptionName: pulumi.String("ShareSubscription1"),
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
/// resource "azure-native_datashare_blobdatasetmapping" "blobDataSetMapping" {
///   account_name            = "Account1"
///   data_set_mapping_name   = "DatasetMapping1"
///   resource_group_name     = "SampleResourceGroup"
///   share_subscription_name = "ShareSubscription1"
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
/// import com.pulumi.azurenative.datashare.BlobDataSetMapping;
/// import com.pulumi.azurenative.datashare.BlobDataSetMappingArgs;
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
///         var blobDataSetMapping = new BlobDataSetMapping("blobDataSetMapping", BlobDataSetMappingArgs.builder()
///             .accountName("Account1")
///             .dataSetMappingName("DatasetMapping1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareSubscriptionName("ShareSubscription1")
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
/// const blobDataSetMapping = new azure_native.datashare.BlobDataSetMapping("blobDataSetMapping", {
///     accountName: "Account1",
///     dataSetMappingName: "DatasetMapping1",
///     resourceGroupName: "SampleResourceGroup",
///     shareSubscriptionName: "ShareSubscription1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blob_data_set_mapping = azure_native.datashare.BlobDataSetMapping("blobDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   blobDataSetMapping:
///     type: azure-native:datashare:BlobDataSetMapping
///     properties:
///       accountName: Account1
///       dataSetMappingName: DatasetMapping1
///       resourceGroupName: SampleResourceGroup
///       shareSubscriptionName: ShareSubscription1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSetMappings_SynapseWorkspaceSqlPoolTable_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobDataSetMapping = new AzureNative.DataShare.BlobDataSetMapping("blobDataSetMapping", new()
///     {
///         AccountName = "consumerAccount",
///         DataSetMappingName = "datasetMappingName1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareSubscriptionName = "ShareSubscription1",
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
/// 	datashare "github.com/pulumi/pulumi-azure-native-sdk/datashare/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datashare.NewBlobDataSetMapping(ctx, "blobDataSetMapping", &datashare.BlobDataSetMappingArgs{
/// 			AccountName:           pulumi.String("consumerAccount"),
/// 			DataSetMappingName:    pulumi.String("datasetMappingName1"),
/// 			ResourceGroupName:     pulumi.String("SampleResourceGroup"),
/// 			ShareSubscriptionName: pulumi.String("ShareSubscription1"),
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
/// resource "azure-native_datashare_blobdatasetmapping" "blobDataSetMapping" {
///   account_name            = "consumerAccount"
///   data_set_mapping_name   = "datasetMappingName1"
///   resource_group_name     = "SampleResourceGroup"
///   share_subscription_name = "ShareSubscription1"
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
/// import com.pulumi.azurenative.datashare.BlobDataSetMapping;
/// import com.pulumi.azurenative.datashare.BlobDataSetMappingArgs;
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
///         var blobDataSetMapping = new BlobDataSetMapping("blobDataSetMapping", BlobDataSetMappingArgs.builder()
///             .accountName("consumerAccount")
///             .dataSetMappingName("datasetMappingName1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareSubscriptionName("ShareSubscription1")
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
/// const blobDataSetMapping = new azure_native.datashare.BlobDataSetMapping("blobDataSetMapping", {
///     accountName: "consumerAccount",
///     dataSetMappingName: "datasetMappingName1",
///     resourceGroupName: "SampleResourceGroup",
///     shareSubscriptionName: "ShareSubscription1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blob_data_set_mapping = azure_native.datashare.BlobDataSetMapping("blobDataSetMapping",
///     account_name="consumerAccount",
///     data_set_mapping_name="datasetMappingName1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   blobDataSetMapping:
///     type: azure-native:datashare:BlobDataSetMapping
///     properties:
///       accountName: consumerAccount
///       dataSetMappingName: datasetMappingName1
///       resourceGroupName: SampleResourceGroup
///       shareSubscriptionName: ShareSubscription1
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
/// $ pulumi import azure-native:datashare:BlobDataSetMapping datasetMappingName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shareSubscriptions/{shareSubscriptionName}/dataSetMappings/{dataSetMappingName}
/// ```
class BlobDataSetMapping extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Container that has the file path.
  late final pulumi.Output<String> containerName;
  /// The id of the source data set.
  late final pulumi.Output<String> dataSetId;
  /// Gets the status of the data set mapping.
  late final pulumi.Output<String> dataSetMappingStatus;
  /// File path within the source data set
  late final pulumi.Output<String> filePath;
  /// Kind of data set mapping.
  /// Expected value is 'Blob'.
  late final pulumi.Output<String> kind;
  /// Name of the azure resource
  late final pulumi.Output<String> name;
  /// File output type
  late final pulumi.Output<String?> outputType;
  /// Provisioning state of the data set mapping.
  late final pulumi.Output<String> provisioningState;
  /// Resource group of storage account.
  late final pulumi.Output<String> resourceGroup;
  /// Storage account name of the source data set.
  late final pulumi.Output<String> storageAccountName;
  /// Subscription id of storage account.
  late final pulumi.Output<String> subscriptionId;
  /// System Data of the Azure resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Type of the azure resource
  late final pulumi.Output<String> type;

  /// Creates a new [BlobDataSetMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BlobDataSetMapping]. {@macro pulumi_datashare_blob_data_set_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BlobDataSetMapping(
    String name, {
    BlobDataSetMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datashare:BlobDataSetMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    containerName = registerOutput<String>('containerName');
    dataSetId = registerOutput<String>('dataSetId');
    dataSetMappingStatus = registerOutput<String>('dataSetMappingStatus');
    filePath = registerOutput<String>('filePath');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    outputType = registerOutput<String?>('outputType');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGroup = registerOutput<String>('resourceGroup');
    storageAccountName = registerOutput<String>('storageAccountName');
    subscriptionId = registerOutput<String>('subscriptionId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [BlobDataSetMapping] resource.
  BlobDataSetMapping.reference(String urn)
    : super(
        'azure-native:datashare:BlobDataSetMapping',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    containerName = registerOutput<String>('containerName');
    dataSetId = registerOutput<String>('dataSetId');
    dataSetMappingStatus = registerOutput<String>('dataSetMappingStatus');
    filePath = registerOutput<String>('filePath');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    outputType = registerOutput<String?>('outputType');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGroup = registerOutput<String>('resourceGroup');
    storageAccountName = registerOutput<String>('storageAccountName');
    subscriptionId = registerOutput<String>('subscriptionId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
