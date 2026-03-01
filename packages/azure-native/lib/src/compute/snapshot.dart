import 'package:pulumi/pulumi.dart' as pulumi;
import 'copy_completion_error_response.dart';
import 'creation_data_response.dart';
import 'disk_purchase_plan_response.dart';
import 'disk_security_profile_response.dart';
import 'encryption_response.dart';
import 'encryption_settings_collection_response.dart';
import 'extended_location_response.dart';
import 'snapshot_args.dart';
import 'snapshot_sku_response.dart';
import 'supported_capabilities_response.dart';
import 'system_data_response.dart';

/// Snapshot resource.
///
/// Uses Azure REST API version 2024-03-02. In version 2.x of the Azure Native provider, it used API version 2022-07-02.
///
/// Other available API versions: 2022-07-02, 2023-01-02, 2023-04-02, 2023-10-02, 2025-01-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a snapshot by importing an unmanaged blob from a different subscription.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshot = new AzureNative.Compute.Snapshot("snapshot", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Import,
///             SourceUri = "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///             StorageAccountId = "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount",
///         },
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         SnapshotName = "mySnapshot1",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSnapshot(ctx, "snapshot", &compute.SnapshotArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption:     pulumi.String(compute.DiskCreateOptionImport),
/// 				SourceUri:        pulumi.String("https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd"),
/// 				StorageAccountId: pulumi.String("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount"),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SnapshotName:      pulumi.String("mySnapshot1"),
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
/// import com.pulumi.azurenative.compute.Snapshot;
/// import com.pulumi.azurenative.compute.SnapshotArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
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
///         var snapshot = new Snapshot("snapshot", SnapshotArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Import")
///                 .sourceUri("https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd")
///                 .storageAccountId("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount")
///                 .build())
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .snapshotName("mySnapshot1")
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
/// const snapshot = new azure_native.compute.Snapshot("snapshot", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Import,
///         sourceUri: "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///         storageAccountId: "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount",
///     },
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     snapshotName: "mySnapshot1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// snapshot = azure_native.compute.Snapshot("snapshot",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.IMPORT_,
///         "source_uri": "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///         "storage_account_id": "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount",
///     },
///     location="West US",
///     resource_group_name="myResourceGroup",
///     snapshot_name="mySnapshot1")
///
/// ```
///
/// ```yaml
/// resources:
///   snapshot:
///     type: azure-native:compute:Snapshot
///     properties:
///       creationData:
///         createOption: Import
///         sourceUri: https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd
///         storageAccountId: subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount
///       location: West US
///       resourceGroupName: myResourceGroup
///       snapshotName: mySnapshot1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a snapshot by importing an unmanaged blob from the same subscription.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshot = new AzureNative.Compute.Snapshot("snapshot", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Import,
///             SourceUri = "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///         },
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         SnapshotName = "mySnapshot1",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSnapshot(ctx, "snapshot", &compute.SnapshotArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption: pulumi.String(compute.DiskCreateOptionImport),
/// 				SourceUri:    pulumi.String("https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd"),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SnapshotName:      pulumi.String("mySnapshot1"),
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
/// import com.pulumi.azurenative.compute.Snapshot;
/// import com.pulumi.azurenative.compute.SnapshotArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
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
///         var snapshot = new Snapshot("snapshot", SnapshotArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Import")
///                 .sourceUri("https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd")
///                 .build())
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .snapshotName("mySnapshot1")
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
/// const snapshot = new azure_native.compute.Snapshot("snapshot", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Import,
///         sourceUri: "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///     },
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     snapshotName: "mySnapshot1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// snapshot = azure_native.compute.Snapshot("snapshot",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.IMPORT_,
///         "source_uri": "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///     },
///     location="West US",
///     resource_group_name="myResourceGroup",
///     snapshot_name="mySnapshot1")
///
/// ```
///
/// ```yaml
/// resources:
///   snapshot:
///     type: azure-native:compute:Snapshot
///     properties:
///       creationData:
///         createOption: Import
///         sourceUri: https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd
///       location: West US
///       resourceGroupName: myResourceGroup
///       snapshotName: mySnapshot1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a snapshot from an elastic san volume snapshot.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshot = new AzureNative.Compute.Snapshot("snapshot", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.CopyFromSanSnapshot,
///             ElasticSanResourceId = "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.ElasticSan/elasticSans/myElasticSan/volumegroups/myElasticSanVolumeGroup/snapshots/myElasticSanVolumeSnapshot",
///         },
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         SnapshotName = "mySnapshot",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSnapshot(ctx, "snapshot", &compute.SnapshotArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption:         pulumi.String(compute.DiskCreateOptionCopyFromSanSnapshot),
/// 				ElasticSanResourceId: pulumi.String("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.ElasticSan/elasticSans/myElasticSan/volumegroups/myElasticSanVolumeGroup/snapshots/myElasticSanVolumeSnapshot"),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SnapshotName:      pulumi.String("mySnapshot"),
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
/// import com.pulumi.azurenative.compute.Snapshot;
/// import com.pulumi.azurenative.compute.SnapshotArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
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
///         var snapshot = new Snapshot("snapshot", SnapshotArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("CopyFromSanSnapshot")
///                 .elasticSanResourceId("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.ElasticSan/elasticSans/myElasticSan/volumegroups/myElasticSanVolumeGroup/snapshots/myElasticSanVolumeSnapshot")
///                 .build())
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .snapshotName("mySnapshot")
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
/// const snapshot = new azure_native.compute.Snapshot("snapshot", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.CopyFromSanSnapshot,
///         elasticSanResourceId: "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.ElasticSan/elasticSans/myElasticSan/volumegroups/myElasticSanVolumeGroup/snapshots/myElasticSanVolumeSnapshot",
///     },
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     snapshotName: "mySnapshot",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// snapshot = azure_native.compute.Snapshot("snapshot",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.COPY_FROM_SAN_SNAPSHOT,
///         "elastic_san_resource_id": "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.ElasticSan/elasticSans/myElasticSan/volumegroups/myElasticSanVolumeGroup/snapshots/myElasticSanVolumeSnapshot",
///     },
///     location="West US",
///     resource_group_name="myResourceGroup",
///     snapshot_name="mySnapshot")
///
/// ```
///
/// ```yaml
/// resources:
///   snapshot:
///     type: azure-native:compute:Snapshot
///     properties:
///       creationData:
///         createOption: CopyFromSanSnapshot
///         elasticSanResourceId: subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.ElasticSan/elasticSans/myElasticSan/volumegroups/myElasticSanVolumeGroup/snapshots/myElasticSanVolumeSnapshot
///       location: West US
///       resourceGroupName: myResourceGroup
///       snapshotName: mySnapshot
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a snapshot from an existing snapshot in the same or a different subscription in a different region with quicker copy speed.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshot = new AzureNative.Compute.Snapshot("snapshot", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.CopyStart,
///             ProvisionedBandwidthCopySpeed = AzureNative.Compute.ProvisionedBandwidthCopyOption.Enhanced,
///             SourceResourceId = "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1",
///         },
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         SnapshotName = "mySnapshot2",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSnapshot(ctx, "snapshot", &compute.SnapshotArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption:                  pulumi.String(compute.DiskCreateOptionCopyStart),
/// 				ProvisionedBandwidthCopySpeed: pulumi.String(compute.ProvisionedBandwidthCopyOptionEnhanced),
/// 				SourceResourceId:              pulumi.String("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1"),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SnapshotName:      pulumi.String("mySnapshot2"),
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
/// import com.pulumi.azurenative.compute.Snapshot;
/// import com.pulumi.azurenative.compute.SnapshotArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
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
///         var snapshot = new Snapshot("snapshot", SnapshotArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("CopyStart")
///                 .provisionedBandwidthCopySpeed("Enhanced")
///                 .sourceResourceId("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1")
///                 .build())
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .snapshotName("mySnapshot2")
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
/// const snapshot = new azure_native.compute.Snapshot("snapshot", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.CopyStart,
///         provisionedBandwidthCopySpeed: azure_native.compute.ProvisionedBandwidthCopyOption.Enhanced,
///         sourceResourceId: "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1",
///     },
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     snapshotName: "mySnapshot2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// snapshot = azure_native.compute.Snapshot("snapshot",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.COPY_START,
///         "provisioned_bandwidth_copy_speed": azure_native.compute.ProvisionedBandwidthCopyOption.ENHANCED,
///         "source_resource_id": "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1",
///     },
///     location="West US",
///     resource_group_name="myResourceGroup",
///     snapshot_name="mySnapshot2")
///
/// ```
///
/// ```yaml
/// resources:
///   snapshot:
///     type: azure-native:compute:Snapshot
///     properties:
///       creationData:
///         createOption: CopyStart
///         provisionedBandwidthCopySpeed: Enhanced
///         sourceResourceId: subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1
///       location: West US
///       resourceGroupName: myResourceGroup
///       snapshotName: mySnapshot2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a snapshot from an existing snapshot in the same or a different subscription in a different region.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshot = new AzureNative.Compute.Snapshot("snapshot", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.CopyStart,
///             SourceResourceId = "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1",
///         },
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         SnapshotName = "mySnapshot2",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSnapshot(ctx, "snapshot", &compute.SnapshotArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption:     pulumi.String(compute.DiskCreateOptionCopyStart),
/// 				SourceResourceId: pulumi.String("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1"),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SnapshotName:      pulumi.String("mySnapshot2"),
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
/// import com.pulumi.azurenative.compute.Snapshot;
/// import com.pulumi.azurenative.compute.SnapshotArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
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
///         var snapshot = new Snapshot("snapshot", SnapshotArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("CopyStart")
///                 .sourceResourceId("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1")
///                 .build())
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .snapshotName("mySnapshot2")
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
/// const snapshot = new azure_native.compute.Snapshot("snapshot", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.CopyStart,
///         sourceResourceId: "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1",
///     },
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     snapshotName: "mySnapshot2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// snapshot = azure_native.compute.Snapshot("snapshot",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.COPY_START,
///         "source_resource_id": "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1",
///     },
///     location="West US",
///     resource_group_name="myResourceGroup",
///     snapshot_name="mySnapshot2")
///
/// ```
///
/// ```yaml
/// resources:
///   snapshot:
///     type: azure-native:compute:Snapshot
///     properties:
///       creationData:
///         createOption: CopyStart
///         sourceResourceId: subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1
///       location: West US
///       resourceGroupName: myResourceGroup
///       snapshotName: mySnapshot2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a snapshot from an existing snapshot in the same or a different subscription.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshot = new AzureNative.Compute.Snapshot("snapshot", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Copy,
///             SourceResourceId = "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1",
///         },
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         SnapshotName = "mySnapshot2",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSnapshot(ctx, "snapshot", &compute.SnapshotArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption:     pulumi.String(compute.DiskCreateOptionCopy),
/// 				SourceResourceId: pulumi.String("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1"),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SnapshotName:      pulumi.String("mySnapshot2"),
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
/// import com.pulumi.azurenative.compute.Snapshot;
/// import com.pulumi.azurenative.compute.SnapshotArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
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
///         var snapshot = new Snapshot("snapshot", SnapshotArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Copy")
///                 .sourceResourceId("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1")
///                 .build())
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .snapshotName("mySnapshot2")
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
/// const snapshot = new azure_native.compute.Snapshot("snapshot", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Copy,
///         sourceResourceId: "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1",
///     },
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     snapshotName: "mySnapshot2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// snapshot = azure_native.compute.Snapshot("snapshot",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.COPY,
///         "source_resource_id": "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1",
///     },
///     location="West US",
///     resource_group_name="myResourceGroup",
///     snapshot_name="mySnapshot2")
///
/// ```
///
/// ```yaml
/// resources:
///   snapshot:
///     type: azure-native:compute:Snapshot
///     properties:
///       creationData:
///         createOption: Copy
///         sourceResourceId: subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot1
///       location: West US
///       resourceGroupName: myResourceGroup
///       snapshotName: mySnapshot2
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
/// $ pulumi import azure-native:compute:Snapshot mySnapshot2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/snapshots/{snapshotName}
/// ```
class Snapshot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Percentage complete for the background copy when a resource is created via the CopyStart operation.
  late final pulumi.Output<double?> completionPercent;
  /// Indicates the error details if the background copy of a resource created via the CopyStart operation fails.
  late final pulumi.Output<CopyCompletionErrorResponse?> copyCompletionError;
  /// Disk source information. CreationData information cannot be changed after the disk has been created.
  late final pulumi.Output<CreationDataResponse> creationData;
  /// Additional authentication requirements when exporting or uploading to a disk or snapshot.
  late final pulumi.Output<String?> dataAccessAuthMode;
  /// ARM id of the DiskAccess resource for using private endpoints on disks.
  late final pulumi.Output<String?> diskAccessId;
  /// The size of the disk in bytes. This field is read only.
  late final pulumi.Output<double> diskSizeBytes;
  /// If creationData.createOption is Empty, this field is mandatory and it indicates the size of the disk to create. If this field is present for updates or creation with other options, it indicates a resize. Resizes are only allowed if the disk is not attached to a running VM, and can only increase the disk's size.
  late final pulumi.Output<int?> diskSizeGB;
  /// The state of the snapshot.
  late final pulumi.Output<String> diskState;
  /// Encryption property can be used to encrypt data at rest with customer managed keys or platform managed keys.
  late final pulumi.Output<EncryptionResponse?> encryption;
  /// Encryption settings collection used be Azure Disk Encryption, can contain multiple encryption settings per disk or snapshot.
  late final pulumi.Output<EncryptionSettingsCollectionResponse?> encryptionSettingsCollection;
  /// The extended location where the snapshot will be created. Extended location cannot be changed.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
  late final pulumi.Output<String?> hyperVGeneration;
  /// Whether a snapshot is incremental. Incremental snapshots on the same disk occupy less space than full snapshots and can be diffed.
  late final pulumi.Output<bool?> incremental;
  /// Incremental snapshots for a disk share an incremental snapshot family id. The Get Page Range Diff API can only be called on incremental snapshots with the same family id.
  late final pulumi.Output<String> incrementalSnapshotFamilyId;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Unused. Always Null.
  late final pulumi.Output<String> managedBy;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Policy for accessing the disk via network.
  late final pulumi.Output<String?> networkAccessPolicy;
  /// The Operating System type.
  late final pulumi.Output<String?> osType;
  /// The disk provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Policy for controlling export on the disk.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Purchase plan information for the image from which the source disk for the snapshot was originally created.
  late final pulumi.Output<DiskPurchasePlanResponse?> purchasePlan;
  /// Contains the security related information for the resource.
  late final pulumi.Output<DiskSecurityProfileResponse?> securityProfile;
  /// The snapshots sku name. Can be Standard_LRS, Premium_LRS, or Standard_ZRS. This is an optional parameter for incremental snapshot and the default behavior is the SKU will be set to the same sku as the previous snapshot
  late final pulumi.Output<SnapshotSkuResponse?> sku;
  /// List of supported capabilities for the image from which the source disk from the snapshot was originally created.
  late final pulumi.Output<SupportedCapabilitiesResponse?> supportedCapabilities;
  /// Indicates the OS on a snapshot supports hibernation.
  late final pulumi.Output<bool?> supportsHibernation;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The time when the snapshot was created.
  late final pulumi.Output<String> timeCreated;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Unique Guid identifying the resource.
  late final pulumi.Output<String> uniqueId;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_compute_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.completionPercent = registerOutput<double?>('completionPercent');
    this.copyCompletionError = registerOutput<CopyCompletionErrorResponse?>('copyCompletionError');
    this.creationData = registerOutput<CreationDataResponse>('creationData');
    this.dataAccessAuthMode = registerOutput<String?>('dataAccessAuthMode');
    this.diskAccessId = registerOutput<String?>('diskAccessId');
    this.diskSizeBytes = registerOutput<double>('diskSizeBytes');
    this.diskSizeGB = registerOutput<int?>('diskSizeGB');
    this.diskState = registerOutput<String>('diskState');
    this.encryption = registerOutput<EncryptionResponse?>('encryption');
    this.encryptionSettingsCollection = registerOutput<EncryptionSettingsCollectionResponse?>('encryptionSettingsCollection');
    this.extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation');
    this.hyperVGeneration = registerOutput<String?>('hyperVGeneration');
    this.incremental = registerOutput<bool?>('incremental');
    this.incrementalSnapshotFamilyId = registerOutput<String>('incrementalSnapshotFamilyId');
    this.location = registerOutput<String>('location');
    this.managedBy = registerOutput<String>('managedBy');
    this.name = registerOutput<String>('name');
    this.networkAccessPolicy = registerOutput<String?>('networkAccessPolicy');
    this.osType = registerOutput<String?>('osType');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    this.purchasePlan = registerOutput<DiskPurchasePlanResponse?>('purchasePlan');
    this.securityProfile = registerOutput<DiskSecurityProfileResponse?>('securityProfile');
    this.sku = registerOutput<SnapshotSkuResponse?>('sku');
    this.supportedCapabilities = registerOutput<SupportedCapabilitiesResponse?>('supportedCapabilities');
    this.supportsHibernation = registerOutput<bool?>('supportsHibernation');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.timeCreated = registerOutput<String>('timeCreated');
    this.type = registerOutput<String>('type');
    this.uniqueId = registerOutput<String>('uniqueId');
  }
}
