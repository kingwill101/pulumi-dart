import 'package:pulumi/pulumi.dart' as pulumi;
import 'adlsgen2_file_data_set_args.dart';
import 'system_data_response.dart';

/// An ADLS Gen 2 file data set.
///
/// Uses Azure REST API version 2021-08-01. In version 2.x of the Azure Native provider, it used API version 2021-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DataSets_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var adlsGen2FileDataSet = new AzureNative.DataShare.ADLSGen2FileDataSet("adlsGen2FileDataSet", new()
///     {
///         AccountName = "Account1",
///         DataSetName = "Dataset1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareName = "Share1",
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
/// 		_, err := datashare.NewADLSGen2FileDataSet(ctx, "adlsGen2FileDataSet", &datashare.ADLSGen2FileDataSetArgs{
/// 			AccountName:       pulumi.String("Account1"),
/// 			DataSetName:       pulumi.String("Dataset1"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			ShareName:         pulumi.String("Share1"),
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
/// resource "azure-native_datashare_adlsgen2filedataset" "adlsGen2FileDataSet" {
///   account_name        = "Account1"
///   data_set_name       = "Dataset1"
///   resource_group_name = "SampleResourceGroup"
///   share_name          = "Share1"
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
/// import com.pulumi.azurenative.datashare.ADLSGen2FileDataSet;
/// import com.pulumi.azurenative.datashare.ADLSGen2FileDataSetArgs;
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
///         var adlsGen2FileDataSet = new ADLSGen2FileDataSet("adlsGen2FileDataSet", ADLSGen2FileDataSetArgs.builder()
///             .accountName("Account1")
///             .dataSetName("Dataset1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareName("Share1")
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
/// const adlsGen2FileDataSet = new azure_native.datashare.ADLSGen2FileDataSet("adlsGen2FileDataSet", {
///     accountName: "Account1",
///     dataSetName: "Dataset1",
///     resourceGroupName: "SampleResourceGroup",
///     shareName: "Share1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// adls_gen2_file_data_set = azure_native.datashare.ADLSGen2FileDataSet("adlsGen2FileDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1")
///
/// ```
///
/// ```yaml
/// resources:
///   adlsGen2FileDataSet:
///     type: azure-native:datashare:ADLSGen2FileDataSet
///     properties:
///       accountName: Account1
///       dataSetName: Dataset1
///       resourceGroupName: SampleResourceGroup
///       shareName: Share1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSets_KustoCluster_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var adlsGen2FileDataSet = new AzureNative.DataShare.ADLSGen2FileDataSet("adlsGen2FileDataSet", new()
///     {
///         AccountName = "Account1",
///         DataSetName = "Dataset1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareName = "Share1",
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
/// 		_, err := datashare.NewADLSGen2FileDataSet(ctx, "adlsGen2FileDataSet", &datashare.ADLSGen2FileDataSetArgs{
/// 			AccountName:       pulumi.String("Account1"),
/// 			DataSetName:       pulumi.String("Dataset1"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			ShareName:         pulumi.String("Share1"),
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
/// resource "azure-native_datashare_adlsgen2filedataset" "adlsGen2FileDataSet" {
///   account_name        = "Account1"
///   data_set_name       = "Dataset1"
///   resource_group_name = "SampleResourceGroup"
///   share_name          = "Share1"
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
/// import com.pulumi.azurenative.datashare.ADLSGen2FileDataSet;
/// import com.pulumi.azurenative.datashare.ADLSGen2FileDataSetArgs;
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
///         var adlsGen2FileDataSet = new ADLSGen2FileDataSet("adlsGen2FileDataSet", ADLSGen2FileDataSetArgs.builder()
///             .accountName("Account1")
///             .dataSetName("Dataset1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareName("Share1")
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
/// const adlsGen2FileDataSet = new azure_native.datashare.ADLSGen2FileDataSet("adlsGen2FileDataSet", {
///     accountName: "Account1",
///     dataSetName: "Dataset1",
///     resourceGroupName: "SampleResourceGroup",
///     shareName: "Share1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// adls_gen2_file_data_set = azure_native.datashare.ADLSGen2FileDataSet("adlsGen2FileDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1")
///
/// ```
///
/// ```yaml
/// resources:
///   adlsGen2FileDataSet:
///     type: azure-native:datashare:ADLSGen2FileDataSet
///     properties:
///       accountName: Account1
///       dataSetName: Dataset1
///       resourceGroupName: SampleResourceGroup
///       shareName: Share1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSets_KustoDatabase_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var adlsGen2FileDataSet = new AzureNative.DataShare.ADLSGen2FileDataSet("adlsGen2FileDataSet", new()
///     {
///         AccountName = "Account1",
///         DataSetName = "Dataset1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareName = "Share1",
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
/// 		_, err := datashare.NewADLSGen2FileDataSet(ctx, "adlsGen2FileDataSet", &datashare.ADLSGen2FileDataSetArgs{
/// 			AccountName:       pulumi.String("Account1"),
/// 			DataSetName:       pulumi.String("Dataset1"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			ShareName:         pulumi.String("Share1"),
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
/// resource "azure-native_datashare_adlsgen2filedataset" "adlsGen2FileDataSet" {
///   account_name        = "Account1"
///   data_set_name       = "Dataset1"
///   resource_group_name = "SampleResourceGroup"
///   share_name          = "Share1"
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
/// import com.pulumi.azurenative.datashare.ADLSGen2FileDataSet;
/// import com.pulumi.azurenative.datashare.ADLSGen2FileDataSetArgs;
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
///         var adlsGen2FileDataSet = new ADLSGen2FileDataSet("adlsGen2FileDataSet", ADLSGen2FileDataSetArgs.builder()
///             .accountName("Account1")
///             .dataSetName("Dataset1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareName("Share1")
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
/// const adlsGen2FileDataSet = new azure_native.datashare.ADLSGen2FileDataSet("adlsGen2FileDataSet", {
///     accountName: "Account1",
///     dataSetName: "Dataset1",
///     resourceGroupName: "SampleResourceGroup",
///     shareName: "Share1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// adls_gen2_file_data_set = azure_native.datashare.ADLSGen2FileDataSet("adlsGen2FileDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1")
///
/// ```
///
/// ```yaml
/// resources:
///   adlsGen2FileDataSet:
///     type: azure-native:datashare:ADLSGen2FileDataSet
///     properties:
///       accountName: Account1
///       dataSetName: Dataset1
///       resourceGroupName: SampleResourceGroup
///       shareName: Share1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSets_KustoTable_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var adlsGen2FileDataSet = new AzureNative.DataShare.ADLSGen2FileDataSet("adlsGen2FileDataSet", new()
///     {
///         AccountName = "Account1",
///         DataSetName = "Dataset1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareName = "Share1",
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
/// 		_, err := datashare.NewADLSGen2FileDataSet(ctx, "adlsGen2FileDataSet", &datashare.ADLSGen2FileDataSetArgs{
/// 			AccountName:       pulumi.String("Account1"),
/// 			DataSetName:       pulumi.String("Dataset1"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			ShareName:         pulumi.String("Share1"),
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
/// resource "azure-native_datashare_adlsgen2filedataset" "adlsGen2FileDataSet" {
///   account_name        = "Account1"
///   data_set_name       = "Dataset1"
///   resource_group_name = "SampleResourceGroup"
///   share_name          = "Share1"
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
/// import com.pulumi.azurenative.datashare.ADLSGen2FileDataSet;
/// import com.pulumi.azurenative.datashare.ADLSGen2FileDataSetArgs;
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
///         var adlsGen2FileDataSet = new ADLSGen2FileDataSet("adlsGen2FileDataSet", ADLSGen2FileDataSetArgs.builder()
///             .accountName("Account1")
///             .dataSetName("Dataset1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareName("Share1")
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
/// const adlsGen2FileDataSet = new azure_native.datashare.ADLSGen2FileDataSet("adlsGen2FileDataSet", {
///     accountName: "Account1",
///     dataSetName: "Dataset1",
///     resourceGroupName: "SampleResourceGroup",
///     shareName: "Share1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// adls_gen2_file_data_set = azure_native.datashare.ADLSGen2FileDataSet("adlsGen2FileDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1")
///
/// ```
///
/// ```yaml
/// resources:
///   adlsGen2FileDataSet:
///     type: azure-native:datashare:ADLSGen2FileDataSet
///     properties:
///       accountName: Account1
///       dataSetName: Dataset1
///       resourceGroupName: SampleResourceGroup
///       shareName: Share1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSets_SqlDBTable_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var adlsGen2FileDataSet = new AzureNative.DataShare.ADLSGen2FileDataSet("adlsGen2FileDataSet", new()
///     {
///         AccountName = "Account1",
///         DataSetName = "Dataset1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareName = "Share1",
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
/// 		_, err := datashare.NewADLSGen2FileDataSet(ctx, "adlsGen2FileDataSet", &datashare.ADLSGen2FileDataSetArgs{
/// 			AccountName:       pulumi.String("Account1"),
/// 			DataSetName:       pulumi.String("Dataset1"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			ShareName:         pulumi.String("Share1"),
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
/// resource "azure-native_datashare_adlsgen2filedataset" "adlsGen2FileDataSet" {
///   account_name        = "Account1"
///   data_set_name       = "Dataset1"
///   resource_group_name = "SampleResourceGroup"
///   share_name          = "Share1"
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
/// import com.pulumi.azurenative.datashare.ADLSGen2FileDataSet;
/// import com.pulumi.azurenative.datashare.ADLSGen2FileDataSetArgs;
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
///         var adlsGen2FileDataSet = new ADLSGen2FileDataSet("adlsGen2FileDataSet", ADLSGen2FileDataSetArgs.builder()
///             .accountName("Account1")
///             .dataSetName("Dataset1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareName("Share1")
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
/// const adlsGen2FileDataSet = new azure_native.datashare.ADLSGen2FileDataSet("adlsGen2FileDataSet", {
///     accountName: "Account1",
///     dataSetName: "Dataset1",
///     resourceGroupName: "SampleResourceGroup",
///     shareName: "Share1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// adls_gen2_file_data_set = azure_native.datashare.ADLSGen2FileDataSet("adlsGen2FileDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1")
///
/// ```
///
/// ```yaml
/// resources:
///   adlsGen2FileDataSet:
///     type: azure-native:datashare:ADLSGen2FileDataSet
///     properties:
///       accountName: Account1
///       dataSetName: Dataset1
///       resourceGroupName: SampleResourceGroup
///       shareName: Share1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSets_SqlDWTable_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var adlsGen2FileDataSet = new AzureNative.DataShare.ADLSGen2FileDataSet("adlsGen2FileDataSet", new()
///     {
///         AccountName = "Account1",
///         DataSetName = "Dataset1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareName = "Share1",
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
/// 		_, err := datashare.NewADLSGen2FileDataSet(ctx, "adlsGen2FileDataSet", &datashare.ADLSGen2FileDataSetArgs{
/// 			AccountName:       pulumi.String("Account1"),
/// 			DataSetName:       pulumi.String("Dataset1"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			ShareName:         pulumi.String("Share1"),
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
/// resource "azure-native_datashare_adlsgen2filedataset" "adlsGen2FileDataSet" {
///   account_name        = "Account1"
///   data_set_name       = "Dataset1"
///   resource_group_name = "SampleResourceGroup"
///   share_name          = "Share1"
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
/// import com.pulumi.azurenative.datashare.ADLSGen2FileDataSet;
/// import com.pulumi.azurenative.datashare.ADLSGen2FileDataSetArgs;
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
///         var adlsGen2FileDataSet = new ADLSGen2FileDataSet("adlsGen2FileDataSet", ADLSGen2FileDataSetArgs.builder()
///             .accountName("Account1")
///             .dataSetName("Dataset1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareName("Share1")
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
/// const adlsGen2FileDataSet = new azure_native.datashare.ADLSGen2FileDataSet("adlsGen2FileDataSet", {
///     accountName: "Account1",
///     dataSetName: "Dataset1",
///     resourceGroupName: "SampleResourceGroup",
///     shareName: "Share1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// adls_gen2_file_data_set = azure_native.datashare.ADLSGen2FileDataSet("adlsGen2FileDataSet",
///     account_name="Account1",
///     data_set_name="Dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="Share1")
///
/// ```
///
/// ```yaml
/// resources:
///   adlsGen2FileDataSet:
///     type: azure-native:datashare:ADLSGen2FileDataSet
///     properties:
///       accountName: Account1
///       dataSetName: Dataset1
///       resourceGroupName: SampleResourceGroup
///       shareName: Share1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DataSets_SynapseWorkspaceSqlPoolTable_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var adlsGen2FileDataSet = new AzureNative.DataShare.ADLSGen2FileDataSet("adlsGen2FileDataSet", new()
///     {
///         AccountName = "sourceAccount",
///         DataSetName = "dataset1",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareName = "share1",
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
/// 		_, err := datashare.NewADLSGen2FileDataSet(ctx, "adlsGen2FileDataSet", &datashare.ADLSGen2FileDataSetArgs{
/// 			AccountName:       pulumi.String("sourceAccount"),
/// 			DataSetName:       pulumi.String("dataset1"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			ShareName:         pulumi.String("share1"),
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
/// resource "azure-native_datashare_adlsgen2filedataset" "adlsGen2FileDataSet" {
///   account_name        = "sourceAccount"
///   data_set_name       = "dataset1"
///   resource_group_name = "SampleResourceGroup"
///   share_name          = "share1"
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
/// import com.pulumi.azurenative.datashare.ADLSGen2FileDataSet;
/// import com.pulumi.azurenative.datashare.ADLSGen2FileDataSetArgs;
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
///         var adlsGen2FileDataSet = new ADLSGen2FileDataSet("adlsGen2FileDataSet", ADLSGen2FileDataSetArgs.builder()
///             .accountName("sourceAccount")
///             .dataSetName("dataset1")
///             .resourceGroupName("SampleResourceGroup")
///             .shareName("share1")
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
/// const adlsGen2FileDataSet = new azure_native.datashare.ADLSGen2FileDataSet("adlsGen2FileDataSet", {
///     accountName: "sourceAccount",
///     dataSetName: "dataset1",
///     resourceGroupName: "SampleResourceGroup",
///     shareName: "share1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// adls_gen2_file_data_set = azure_native.datashare.ADLSGen2FileDataSet("adlsGen2FileDataSet",
///     account_name="sourceAccount",
///     data_set_name="dataset1",
///     resource_group_name="SampleResourceGroup",
///     share_name="share1")
///
/// ```
///
/// ```yaml
/// resources:
///   adlsGen2FileDataSet:
///     type: azure-native:datashare:ADLSGen2FileDataSet
///     properties:
///       accountName: sourceAccount
///       dataSetName: dataset1
///       resourceGroupName: SampleResourceGroup
///       shareName: share1
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
/// $ pulumi import azure-native:datashare:ADLSGen2FileDataSet dataset1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shares/{shareName}/dataSets/{dataSetName}
/// ```
class ADLSGen2FileDataSet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Unique id for identifying a data set resource
  late final pulumi.Output<String> dataSetId;
  /// File path within the file system.
  late final pulumi.Output<String> filePath;
  /// File system to which the file belongs.
  late final pulumi.Output<String> fileSystem;
  /// Kind of data set.
  /// Expected value is 'AdlsGen2File'.
  late final pulumi.Output<String> kind;
  /// Name of the azure resource
  late final pulumi.Output<String> name;
  /// Resource group of storage account
  late final pulumi.Output<String> resourceGroup;
  /// Storage account name of the source data set
  late final pulumi.Output<String> storageAccountName;
  /// Subscription id of storage account
  late final pulumi.Output<String> subscriptionId;
  /// System Data of the Azure resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Type of the azure resource
  late final pulumi.Output<String> type;

  /// Creates a new [ADLSGen2FileDataSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ADLSGen2FileDataSet]. {@macro pulumi_datashare_adlsgen2_file_data_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ADLSGen2FileDataSet(
    String name, {
    ADLSGen2FileDataSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datashare:ADLSGen2FileDataSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataSetId = registerOutput<String>('dataSetId');
    filePath = registerOutput<String>('filePath');
    fileSystem = registerOutput<String>('fileSystem');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    resourceGroup = registerOutput<String>('resourceGroup');
    storageAccountName = registerOutput<String>('storageAccountName');
    subscriptionId = registerOutput<String>('subscriptionId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ADLSGen2FileDataSet] resource.
  ADLSGen2FileDataSet.reference(String urn)
    : super(
        'azure-native:datashare:ADLSGen2FileDataSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataSetId = registerOutput<String>('dataSetId');
    filePath = registerOutput<String>('filePath');
    fileSystem = registerOutput<String>('fileSystem');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    resourceGroup = registerOutput<String>('resourceGroup');
    storageAccountName = registerOutput<String>('storageAccountName');
    subscriptionId = registerOutput<String>('subscriptionId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
