import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_container_data_set_mapping_args.dart';
import 'system_data_response.dart';

/// A Blob container data set mapping.
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
///     var blobContainerDataSetMapping = new AzureNative.DataShare.BlobContainerDataSetMapping("blobContainerDataSetMapping", new()
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
/// 		_, err := datashare.NewBlobContainerDataSetMapping(ctx, "blobContainerDataSetMapping", &datashare.BlobContainerDataSetMappingArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datashare.BlobContainerDataSetMapping;
/// import com.pulumi.azurenative.datashare.BlobContainerDataSetMappingArgs;
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
///         var blobContainerDataSetMapping = new BlobContainerDataSetMapping("blobContainerDataSetMapping", BlobContainerDataSetMappingArgs.builder()
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
/// const blobContainerDataSetMapping = new azure_native.datashare.BlobContainerDataSetMapping("blobContainerDataSetMapping", {
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
/// blob_container_data_set_mapping = azure_native.datashare.BlobContainerDataSetMapping("blobContainerDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   blobContainerDataSetMapping:
///     type: azure-native:datashare:BlobContainerDataSetMapping
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
/// ### DataSetMappings_SqlDB_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobContainerDataSetMapping = new AzureNative.DataShare.BlobContainerDataSetMapping("blobContainerDataSetMapping", new()
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
/// 		_, err := datashare.NewBlobContainerDataSetMapping(ctx, "blobContainerDataSetMapping", &datashare.BlobContainerDataSetMappingArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datashare.BlobContainerDataSetMapping;
/// import com.pulumi.azurenative.datashare.BlobContainerDataSetMappingArgs;
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
///         var blobContainerDataSetMapping = new BlobContainerDataSetMapping("blobContainerDataSetMapping", BlobContainerDataSetMappingArgs.builder()
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
/// const blobContainerDataSetMapping = new azure_native.datashare.BlobContainerDataSetMapping("blobContainerDataSetMapping", {
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
/// blob_container_data_set_mapping = azure_native.datashare.BlobContainerDataSetMapping("blobContainerDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   blobContainerDataSetMapping:
///     type: azure-native:datashare:BlobContainerDataSetMapping
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
///     var blobContainerDataSetMapping = new AzureNative.DataShare.BlobContainerDataSetMapping("blobContainerDataSetMapping", new()
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
/// 		_, err := datashare.NewBlobContainerDataSetMapping(ctx, "blobContainerDataSetMapping", &datashare.BlobContainerDataSetMappingArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datashare.BlobContainerDataSetMapping;
/// import com.pulumi.azurenative.datashare.BlobContainerDataSetMappingArgs;
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
///         var blobContainerDataSetMapping = new BlobContainerDataSetMapping("blobContainerDataSetMapping", BlobContainerDataSetMappingArgs.builder()
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
/// const blobContainerDataSetMapping = new azure_native.datashare.BlobContainerDataSetMapping("blobContainerDataSetMapping", {
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
/// blob_container_data_set_mapping = azure_native.datashare.BlobContainerDataSetMapping("blobContainerDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   blobContainerDataSetMapping:
///     type: azure-native:datashare:BlobContainerDataSetMapping
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
///     var blobContainerDataSetMapping = new AzureNative.DataShare.BlobContainerDataSetMapping("blobContainerDataSetMapping", new()
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
/// 		_, err := datashare.NewBlobContainerDataSetMapping(ctx, "blobContainerDataSetMapping", &datashare.BlobContainerDataSetMappingArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datashare.BlobContainerDataSetMapping;
/// import com.pulumi.azurenative.datashare.BlobContainerDataSetMappingArgs;
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
///         var blobContainerDataSetMapping = new BlobContainerDataSetMapping("blobContainerDataSetMapping", BlobContainerDataSetMappingArgs.builder()
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
/// const blobContainerDataSetMapping = new azure_native.datashare.BlobContainerDataSetMapping("blobContainerDataSetMapping", {
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
/// blob_container_data_set_mapping = azure_native.datashare.BlobContainerDataSetMapping("blobContainerDataSetMapping",
///     account_name="Account1",
///     data_set_mapping_name="DatasetMapping1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   blobContainerDataSetMapping:
///     type: azure-native:datashare:BlobContainerDataSetMapping
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
///     var blobContainerDataSetMapping = new AzureNative.DataShare.BlobContainerDataSetMapping("blobContainerDataSetMapping", new()
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
/// 		_, err := datashare.NewBlobContainerDataSetMapping(ctx, "blobContainerDataSetMapping", &datashare.BlobContainerDataSetMappingArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datashare.BlobContainerDataSetMapping;
/// import com.pulumi.azurenative.datashare.BlobContainerDataSetMappingArgs;
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
///         var blobContainerDataSetMapping = new BlobContainerDataSetMapping("blobContainerDataSetMapping", BlobContainerDataSetMappingArgs.builder()
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
/// const blobContainerDataSetMapping = new azure_native.datashare.BlobContainerDataSetMapping("blobContainerDataSetMapping", {
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
/// blob_container_data_set_mapping = azure_native.datashare.BlobContainerDataSetMapping("blobContainerDataSetMapping",
///     account_name="consumerAccount",
///     data_set_mapping_name="datasetMappingName1",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1")
///
/// ```
///
/// ```yaml
/// resources:
///   blobContainerDataSetMapping:
///     type: azure-native:datashare:BlobContainerDataSetMapping
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
/// $ pulumi import azure-native:datashare:BlobContainerDataSetMapping datasetMappingName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shareSubscriptions/{shareSubscriptionName}/dataSetMappings/{dataSetMappingName}
/// ```
class BlobContainerDataSetMapping extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// BLOB Container name.
  late final pulumi.Output<String> containerName;
  /// The id of the source data set.
  late final pulumi.Output<String> dataSetId;
  /// Gets the status of the data set mapping.
  late final pulumi.Output<String> dataSetMappingStatus;
  /// Kind of data set mapping.
  /// Expected value is 'Container'.
  late final pulumi.Output<String> kind;
  /// Name of the azure resource
  late final pulumi.Output<String> name;
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

  /// Creates a new [BlobContainerDataSetMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BlobContainerDataSetMapping]. {@macro pulumi_datashare_blob_container_data_set_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BlobContainerDataSetMapping(
    String name, {
    BlobContainerDataSetMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datashare:BlobContainerDataSetMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.containerName = registerOutput<String>('containerName');
    this.dataSetId = registerOutput<String>('dataSetId');
    this.dataSetMappingStatus = registerOutput<String>('dataSetMappingStatus');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceGroup = registerOutput<String>('resourceGroup');
    this.storageAccountName = registerOutput<String>('storageAccountName');
    this.subscriptionId = registerOutput<String>('subscriptionId');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
