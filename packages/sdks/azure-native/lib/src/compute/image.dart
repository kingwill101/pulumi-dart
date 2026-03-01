import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'image_args.dart';
import 'image_storage_profile_response.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';

/// The source user image virtual hard disk. The virtual hard disk will be copied before being attached to the virtual machine. If SourceImage is provided, the destination virtual hard drive must not exist.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a virtual machine image from a blob with DiskEncryptionSet resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new AzureNative.Compute.Image("image", new()
///     {
///         ImageName = "myImage",
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.ImageStorageProfileArgs
///         {
///             OsDisk = new AzureNative.Compute.Inputs.ImageOSDiskArgs
///             {
///                 BlobUri = "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///                 DiskEncryptionSet = new AzureNative.Compute.Inputs.DiskEncryptionSetParametersArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                 },
///                 OsState = AzureNative.Compute.OperatingSystemStateTypes.Generalized,
///                 OsType = AzureNative.Compute.OperatingSystemTypes.Linux,
///             },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewImage(ctx, "image", &compute.ImageArgs{
/// 			ImageName:         pulumi.String("myImage"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.ImageStorageProfileArgs{
/// 				OsDisk: &compute.ImageOSDiskArgs{
/// 					BlobUri: pulumi.String("https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd"),
/// 					DiskEncryptionSet: &compute.DiskEncryptionSetParametersArgs{
/// 						Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}"),
/// 					},
/// 					OsState: compute.OperatingSystemStateTypesGeneralized,
/// 					OsType:  compute.OperatingSystemTypesLinux,
/// 				},
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
/// import com.pulumi.azurenative.compute.Image;
/// import com.pulumi.azurenative.compute.ImageArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.DiskEncryptionSetParametersArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .imageName("myImage")
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(ImageStorageProfileArgs.builder()
///                 .osDisk(ImageOSDiskArgs.builder()
///                     .blobUri("https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd")
///                     .diskEncryptionSet(DiskEncryptionSetParametersArgs.builder()
///                         .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}")
///                         .build())
///                     .osState("Generalized")
///                     .osType("Linux")
///                     .build())
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
/// const image = new azure_native.compute.Image("image", {
///     imageName: "myImage",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         osDisk: {
///             blobUri: "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///             diskEncryptionSet: {
///                 id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///             },
///             osState: azure_native.compute.OperatingSystemStateTypes.Generalized,
///             osType: azure_native.compute.OperatingSystemTypes.Linux,
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// image = azure_native.compute.Image("image",
///     image_name="myImage",
///     location="West US",
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "os_disk": {
///             "blob_uri": "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///             "disk_encryption_set": {
///                 "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///             },
///             "os_state": azure_native.compute.OperatingSystemStateTypes.GENERALIZED,
///             "os_type": azure_native.compute.OperatingSystemTypes.LINUX,
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   image:
///     type: azure-native:compute:Image
///     properties:
///       imageName: myImage
///       location: West US
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         osDisk:
///           blobUri: https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd
///           diskEncryptionSet:
///             id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}
///           osState: Generalized
///           osType: Linux
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a virtual machine image from a blob.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new AzureNative.Compute.Image("image", new()
///     {
///         ImageName = "myImage",
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.ImageStorageProfileArgs
///         {
///             OsDisk = new AzureNative.Compute.Inputs.ImageOSDiskArgs
///             {
///                 BlobUri = "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///                 OsState = AzureNative.Compute.OperatingSystemStateTypes.Generalized,
///                 OsType = AzureNative.Compute.OperatingSystemTypes.Linux,
///             },
///             ZoneResilient = true,
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewImage(ctx, "image", &compute.ImageArgs{
/// 			ImageName:         pulumi.String("myImage"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.ImageStorageProfileArgs{
/// 				OsDisk: &compute.ImageOSDiskArgs{
/// 					BlobUri: pulumi.String("https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd"),
/// 					OsState: compute.OperatingSystemStateTypesGeneralized,
/// 					OsType:  compute.OperatingSystemTypesLinux,
/// 				},
/// 				ZoneResilient: pulumi.Bool(true),
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
/// import com.pulumi.azurenative.compute.Image;
/// import com.pulumi.azurenative.compute.ImageArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageOSDiskArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .imageName("myImage")
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(ImageStorageProfileArgs.builder()
///                 .osDisk(ImageOSDiskArgs.builder()
///                     .blobUri("https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd")
///                     .osState("Generalized")
///                     .osType("Linux")
///                     .build())
///                 .zoneResilient(true)
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
/// const image = new azure_native.compute.Image("image", {
///     imageName: "myImage",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         osDisk: {
///             blobUri: "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///             osState: azure_native.compute.OperatingSystemStateTypes.Generalized,
///             osType: azure_native.compute.OperatingSystemTypes.Linux,
///         },
///         zoneResilient: true,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// image = azure_native.compute.Image("image",
///     image_name="myImage",
///     location="West US",
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "os_disk": {
///             "blob_uri": "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///             "os_state": azure_native.compute.OperatingSystemStateTypes.GENERALIZED,
///             "os_type": azure_native.compute.OperatingSystemTypes.LINUX,
///         },
///         "zone_resilient": True,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   image:
///     type: azure-native:compute:Image
///     properties:
///       imageName: myImage
///       location: West US
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         osDisk:
///           blobUri: https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd
///           osState: Generalized
///           osType: Linux
///         zoneResilient: true
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a virtual machine image from a managed disk with DiskEncryptionSet resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new AzureNative.Compute.Image("image", new()
///     {
///         ImageName = "myImage",
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.ImageStorageProfileArgs
///         {
///             OsDisk = new AzureNative.Compute.Inputs.ImageOSDiskArgs
///             {
///                 DiskEncryptionSet = new AzureNative.Compute.Inputs.DiskEncryptionSetParametersArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                 },
///                 OsState = AzureNative.Compute.OperatingSystemStateTypes.Generalized,
///                 OsType = AzureNative.Compute.OperatingSystemTypes.Linux,
///                 Snapshot = new AzureNative.Compute.Inputs.SubResourceArgs
///                 {
///                     Id = "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot",
///                 },
///             },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewImage(ctx, "image", &compute.ImageArgs{
/// 			ImageName:         pulumi.String("myImage"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.ImageStorageProfileArgs{
/// 				OsDisk: &compute.ImageOSDiskArgs{
/// 					DiskEncryptionSet: &compute.DiskEncryptionSetParametersArgs{
/// 						Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}"),
/// 					},
/// 					OsState: compute.OperatingSystemStateTypesGeneralized,
/// 					OsType:  compute.OperatingSystemTypesLinux,
/// 					Snapshot: &compute.SubResourceArgs{
/// 						Id: pulumi.String("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot"),
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.compute.Image;
/// import com.pulumi.azurenative.compute.ImageArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.DiskEncryptionSetParametersArgs;
/// import com.pulumi.azurenative.compute.inputs.SubResourceArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .imageName("myImage")
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(ImageStorageProfileArgs.builder()
///                 .osDisk(ImageOSDiskArgs.builder()
///                     .diskEncryptionSet(DiskEncryptionSetParametersArgs.builder()
///                         .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}")
///                         .build())
///                     .osState("Generalized")
///                     .osType("Linux")
///                     .snapshot(SubResourceArgs.builder()
///                         .id("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot")
///                         .build())
///                     .build())
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
/// const image = new azure_native.compute.Image("image", {
///     imageName: "myImage",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         osDisk: {
///             diskEncryptionSet: {
///                 id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///             },
///             osState: azure_native.compute.OperatingSystemStateTypes.Generalized,
///             osType: azure_native.compute.OperatingSystemTypes.Linux,
///             snapshot: {
///                 id: "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot",
///             },
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// image = azure_native.compute.Image("image",
///     image_name="myImage",
///     location="West US",
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "os_disk": {
///             "disk_encryption_set": {
///                 "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///             },
///             "os_state": azure_native.compute.OperatingSystemStateTypes.GENERALIZED,
///             "os_type": azure_native.compute.OperatingSystemTypes.LINUX,
///             "snapshot": {
///                 "id": "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot",
///             },
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   image:
///     type: azure-native:compute:Image
///     properties:
///       imageName: myImage
///       location: West US
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         osDisk:
///           diskEncryptionSet:
///             id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}
///           osState: Generalized
///           osType: Linux
///           snapshot:
///             id: subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a virtual machine image from a managed disk.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new AzureNative.Compute.Image("image", new()
///     {
///         ImageName = "myImage",
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.ImageStorageProfileArgs
///         {
///             OsDisk = new AzureNative.Compute.Inputs.ImageOSDiskArgs
///             {
///                 ManagedDisk = new AzureNative.Compute.Inputs.SubResourceArgs
///                 {
///                     Id = "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk",
///                 },
///                 OsState = AzureNative.Compute.OperatingSystemStateTypes.Generalized,
///                 OsType = AzureNative.Compute.OperatingSystemTypes.Linux,
///             },
///             ZoneResilient = true,
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewImage(ctx, "image", &compute.ImageArgs{
/// 			ImageName:         pulumi.String("myImage"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.ImageStorageProfileArgs{
/// 				OsDisk: &compute.ImageOSDiskArgs{
/// 					ManagedDisk: &compute.SubResourceArgs{
/// 						Id: pulumi.String("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk"),
/// 					},
/// 					OsState: compute.OperatingSystemStateTypesGeneralized,
/// 					OsType:  compute.OperatingSystemTypesLinux,
/// 				},
/// 				ZoneResilient: pulumi.Bool(true),
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
/// import com.pulumi.azurenative.compute.Image;
/// import com.pulumi.azurenative.compute.ImageArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.SubResourceArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .imageName("myImage")
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(ImageStorageProfileArgs.builder()
///                 .osDisk(ImageOSDiskArgs.builder()
///                     .managedDisk(SubResourceArgs.builder()
///                         .id("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk")
///                         .build())
///                     .osState("Generalized")
///                     .osType("Linux")
///                     .build())
///                 .zoneResilient(true)
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
/// const image = new azure_native.compute.Image("image", {
///     imageName: "myImage",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         osDisk: {
///             managedDisk: {
///                 id: "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk",
///             },
///             osState: azure_native.compute.OperatingSystemStateTypes.Generalized,
///             osType: azure_native.compute.OperatingSystemTypes.Linux,
///         },
///         zoneResilient: true,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// image = azure_native.compute.Image("image",
///     image_name="myImage",
///     location="West US",
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "os_disk": {
///             "managed_disk": {
///                 "id": "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk",
///             },
///             "os_state": azure_native.compute.OperatingSystemStateTypes.GENERALIZED,
///             "os_type": azure_native.compute.OperatingSystemTypes.LINUX,
///         },
///         "zone_resilient": True,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   image:
///     type: azure-native:compute:Image
///     properties:
///       imageName: myImage
///       location: West US
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         osDisk:
///           managedDisk:
///             id: subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk
///           osState: Generalized
///           osType: Linux
///         zoneResilient: true
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a virtual machine image from a snapshot with DiskEncryptionSet resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new AzureNative.Compute.Image("image", new()
///     {
///         ImageName = "myImage",
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.ImageStorageProfileArgs
///         {
///             OsDisk = new AzureNative.Compute.Inputs.ImageOSDiskArgs
///             {
///                 DiskEncryptionSet = new AzureNative.Compute.Inputs.DiskEncryptionSetParametersArgs
///                 {
///                     Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///                 },
///                 ManagedDisk = new AzureNative.Compute.Inputs.SubResourceArgs
///                 {
///                     Id = "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk",
///                 },
///                 OsState = AzureNative.Compute.OperatingSystemStateTypes.Generalized,
///                 OsType = AzureNative.Compute.OperatingSystemTypes.Linux,
///             },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewImage(ctx, "image", &compute.ImageArgs{
/// 			ImageName:         pulumi.String("myImage"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.ImageStorageProfileArgs{
/// 				OsDisk: &compute.ImageOSDiskArgs{
/// 					DiskEncryptionSet: &compute.DiskEncryptionSetParametersArgs{
/// 						Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}"),
/// 					},
/// 					ManagedDisk: &compute.SubResourceArgs{
/// 						Id: pulumi.String("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk"),
/// 					},
/// 					OsState: compute.OperatingSystemStateTypesGeneralized,
/// 					OsType:  compute.OperatingSystemTypesLinux,
/// 				},
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
/// import com.pulumi.azurenative.compute.Image;
/// import com.pulumi.azurenative.compute.ImageArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.DiskEncryptionSetParametersArgs;
/// import com.pulumi.azurenative.compute.inputs.SubResourceArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .imageName("myImage")
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(ImageStorageProfileArgs.builder()
///                 .osDisk(ImageOSDiskArgs.builder()
///                     .diskEncryptionSet(DiskEncryptionSetParametersArgs.builder()
///                         .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}")
///                         .build())
///                     .managedDisk(SubResourceArgs.builder()
///                         .id("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk")
///                         .build())
///                     .osState("Generalized")
///                     .osType("Linux")
///                     .build())
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
/// const image = new azure_native.compute.Image("image", {
///     imageName: "myImage",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         osDisk: {
///             diskEncryptionSet: {
///                 id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///             },
///             managedDisk: {
///                 id: "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk",
///             },
///             osState: azure_native.compute.OperatingSystemStateTypes.Generalized,
///             osType: azure_native.compute.OperatingSystemTypes.Linux,
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// image = azure_native.compute.Image("image",
///     image_name="myImage",
///     location="West US",
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "os_disk": {
///             "disk_encryption_set": {
///                 "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///             },
///             "managed_disk": {
///                 "id": "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk",
///             },
///             "os_state": azure_native.compute.OperatingSystemStateTypes.GENERALIZED,
///             "os_type": azure_native.compute.OperatingSystemTypes.LINUX,
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   image:
///     type: azure-native:compute:Image
///     properties:
///       imageName: myImage
///       location: West US
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         osDisk:
///           diskEncryptionSet:
///             id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}
///           managedDisk:
///             id: subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk
///           osState: Generalized
///           osType: Linux
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a virtual machine image from a snapshot.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new AzureNative.Compute.Image("image", new()
///     {
///         ImageName = "myImage",
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.ImageStorageProfileArgs
///         {
///             OsDisk = new AzureNative.Compute.Inputs.ImageOSDiskArgs
///             {
///                 OsState = AzureNative.Compute.OperatingSystemStateTypes.Generalized,
///                 OsType = AzureNative.Compute.OperatingSystemTypes.Linux,
///                 Snapshot = new AzureNative.Compute.Inputs.SubResourceArgs
///                 {
///                     Id = "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot",
///                 },
///             },
///             ZoneResilient = false,
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewImage(ctx, "image", &compute.ImageArgs{
/// 			ImageName:         pulumi.String("myImage"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.ImageStorageProfileArgs{
/// 				OsDisk: &compute.ImageOSDiskArgs{
/// 					OsState: compute.OperatingSystemStateTypesGeneralized,
/// 					OsType:  compute.OperatingSystemTypesLinux,
/// 					Snapshot: &compute.SubResourceArgs{
/// 						Id: pulumi.String("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot"),
/// 					},
/// 				},
/// 				ZoneResilient: pulumi.Bool(false),
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
/// import com.pulumi.azurenative.compute.Image;
/// import com.pulumi.azurenative.compute.ImageArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.SubResourceArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .imageName("myImage")
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(ImageStorageProfileArgs.builder()
///                 .osDisk(ImageOSDiskArgs.builder()
///                     .osState("Generalized")
///                     .osType("Linux")
///                     .snapshot(SubResourceArgs.builder()
///                         .id("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot")
///                         .build())
///                     .build())
///                 .zoneResilient(false)
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
/// const image = new azure_native.compute.Image("image", {
///     imageName: "myImage",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         osDisk: {
///             osState: azure_native.compute.OperatingSystemStateTypes.Generalized,
///             osType: azure_native.compute.OperatingSystemTypes.Linux,
///             snapshot: {
///                 id: "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot",
///             },
///         },
///         zoneResilient: false,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// image = azure_native.compute.Image("image",
///     image_name="myImage",
///     location="West US",
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "os_disk": {
///             "os_state": azure_native.compute.OperatingSystemStateTypes.GENERALIZED,
///             "os_type": azure_native.compute.OperatingSystemTypes.LINUX,
///             "snapshot": {
///                 "id": "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot",
///             },
///         },
///         "zone_resilient": False,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   image:
///     type: azure-native:compute:Image
///     properties:
///       imageName: myImage
///       location: West US
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         osDisk:
///           osState: Generalized
///           osType: Linux
///           snapshot:
///             id: subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot
///         zoneResilient: false
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a virtual machine image from an existing virtual machine.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new AzureNative.Compute.Image("image", new()
///     {
///         ImageName = "myImage",
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         SourceVirtualMachine = new AzureNative.Compute.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVM",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewImage(ctx, "image", &compute.ImageArgs{
/// 			ImageName:         pulumi.String("myImage"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SourceVirtualMachine: &compute.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVM"),
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
/// import com.pulumi.azurenative.compute.Image;
/// import com.pulumi.azurenative.compute.ImageArgs;
/// import com.pulumi.azurenative.compute.inputs.SubResourceArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .imageName("myImage")
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .sourceVirtualMachine(SubResourceArgs.builder()
///                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVM")
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
/// const image = new azure_native.compute.Image("image", {
///     imageName: "myImage",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     sourceVirtualMachine: {
///         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVM",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// image = azure_native.compute.Image("image",
///     image_name="myImage",
///     location="West US",
///     resource_group_name="myResourceGroup",
///     source_virtual_machine={
///         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVM",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   image:
///     type: azure-native:compute:Image
///     properties:
///       imageName: myImage
///       location: West US
///       resourceGroupName: myResourceGroup
///       sourceVirtualMachine:
///         id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVM
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a virtual machine image that includes a data disk from a blob.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new AzureNative.Compute.Image("image", new()
///     {
///         ImageName = "myImage",
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.ImageStorageProfileArgs
///         {
///             DataDisks = new[]
///             {
///                 new AzureNative.Compute.Inputs.ImageDataDiskArgs
///                 {
///                     BlobUri = "https://mystorageaccount.blob.core.windows.net/dataimages/dataimage.vhd",
///                     Lun = 1,
///                 },
///             },
///             OsDisk = new AzureNative.Compute.Inputs.ImageOSDiskArgs
///             {
///                 BlobUri = "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///                 OsState = AzureNative.Compute.OperatingSystemStateTypes.Generalized,
///                 OsType = AzureNative.Compute.OperatingSystemTypes.Linux,
///             },
///             ZoneResilient = false,
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewImage(ctx, "image", &compute.ImageArgs{
/// 			ImageName:         pulumi.String("myImage"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.ImageStorageProfileArgs{
/// 				DataDisks: compute.ImageDataDiskArray{
/// 					&compute.ImageDataDiskArgs{
/// 						BlobUri: pulumi.String("https://mystorageaccount.blob.core.windows.net/dataimages/dataimage.vhd"),
/// 						Lun:     pulumi.Int(1),
/// 					},
/// 				},
/// 				OsDisk: &compute.ImageOSDiskArgs{
/// 					BlobUri: pulumi.String("https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd"),
/// 					OsState: compute.OperatingSystemStateTypesGeneralized,
/// 					OsType:  compute.OperatingSystemTypesLinux,
/// 				},
/// 				ZoneResilient: pulumi.Bool(false),
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
/// import com.pulumi.azurenative.compute.Image;
/// import com.pulumi.azurenative.compute.ImageArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageOSDiskArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .imageName("myImage")
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(ImageStorageProfileArgs.builder()
///                 .dataDisks(ImageDataDiskArgs.builder()
///                     .blobUri("https://mystorageaccount.blob.core.windows.net/dataimages/dataimage.vhd")
///                     .lun(1)
///                     .build())
///                 .osDisk(ImageOSDiskArgs.builder()
///                     .blobUri("https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd")
///                     .osState("Generalized")
///                     .osType("Linux")
///                     .build())
///                 .zoneResilient(false)
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
/// const image = new azure_native.compute.Image("image", {
///     imageName: "myImage",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         dataDisks: [{
///             blobUri: "https://mystorageaccount.blob.core.windows.net/dataimages/dataimage.vhd",
///             lun: 1,
///         }],
///         osDisk: {
///             blobUri: "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///             osState: azure_native.compute.OperatingSystemStateTypes.Generalized,
///             osType: azure_native.compute.OperatingSystemTypes.Linux,
///         },
///         zoneResilient: false,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// image = azure_native.compute.Image("image",
///     image_name="myImage",
///     location="West US",
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "data_disks": [{
///             "blob_uri": "https://mystorageaccount.blob.core.windows.net/dataimages/dataimage.vhd",
///             "lun": 1,
///         }],
///         "os_disk": {
///             "blob_uri": "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///             "os_state": azure_native.compute.OperatingSystemStateTypes.GENERALIZED,
///             "os_type": azure_native.compute.OperatingSystemTypes.LINUX,
///         },
///         "zone_resilient": False,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   image:
///     type: azure-native:compute:Image
///     properties:
///       imageName: myImage
///       location: West US
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         dataDisks:
///           - blobUri: https://mystorageaccount.blob.core.windows.net/dataimages/dataimage.vhd
///             lun: 1
///         osDisk:
///           blobUri: https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd
///           osState: Generalized
///           osType: Linux
///         zoneResilient: false
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a virtual machine image that includes a data disk from a managed disk.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new AzureNative.Compute.Image("image", new()
///     {
///         ImageName = "myImage",
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.ImageStorageProfileArgs
///         {
///             DataDisks = new[]
///             {
///                 new AzureNative.Compute.Inputs.ImageDataDiskArgs
///                 {
///                     Lun = 1,
///                     ManagedDisk = new AzureNative.Compute.Inputs.SubResourceArgs
///                     {
///                         Id = "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk2",
///                     },
///                 },
///             },
///             OsDisk = new AzureNative.Compute.Inputs.ImageOSDiskArgs
///             {
///                 ManagedDisk = new AzureNative.Compute.Inputs.SubResourceArgs
///                 {
///                     Id = "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk",
///                 },
///                 OsState = AzureNative.Compute.OperatingSystemStateTypes.Generalized,
///                 OsType = AzureNative.Compute.OperatingSystemTypes.Linux,
///             },
///             ZoneResilient = false,
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewImage(ctx, "image", &compute.ImageArgs{
/// 			ImageName:         pulumi.String("myImage"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.ImageStorageProfileArgs{
/// 				DataDisks: compute.ImageDataDiskArray{
/// 					&compute.ImageDataDiskArgs{
/// 						Lun: pulumi.Int(1),
/// 						ManagedDisk: &compute.SubResourceArgs{
/// 							Id: pulumi.String("subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk2"),
/// 						},
/// 					},
/// 				},
/// 				OsDisk: &compute.ImageOSDiskArgs{
/// 					ManagedDisk: &compute.SubResourceArgs{
/// 						Id: pulumi.String("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk"),
/// 					},
/// 					OsState: compute.OperatingSystemStateTypesGeneralized,
/// 					OsType:  compute.OperatingSystemTypesLinux,
/// 				},
/// 				ZoneResilient: pulumi.Bool(false),
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
/// import com.pulumi.azurenative.compute.Image;
/// import com.pulumi.azurenative.compute.ImageArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.SubResourceArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .imageName("myImage")
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(ImageStorageProfileArgs.builder()
///                 .dataDisks(ImageDataDiskArgs.builder()
///                     .lun(1)
///                     .managedDisk(SubResourceArgs.builder()
///                         .id("subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk2")
///                         .build())
///                     .build())
///                 .osDisk(ImageOSDiskArgs.builder()
///                     .managedDisk(SubResourceArgs.builder()
///                         .id("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk")
///                         .build())
///                     .osState("Generalized")
///                     .osType("Linux")
///                     .build())
///                 .zoneResilient(false)
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
/// const image = new azure_native.compute.Image("image", {
///     imageName: "myImage",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         dataDisks: [{
///             lun: 1,
///             managedDisk: {
///                 id: "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk2",
///             },
///         }],
///         osDisk: {
///             managedDisk: {
///                 id: "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk",
///             },
///             osState: azure_native.compute.OperatingSystemStateTypes.Generalized,
///             osType: azure_native.compute.OperatingSystemTypes.Linux,
///         },
///         zoneResilient: false,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// image = azure_native.compute.Image("image",
///     image_name="myImage",
///     location="West US",
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "data_disks": [{
///             "lun": 1,
///             "managed_disk": {
///                 "id": "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk2",
///             },
///         }],
///         "os_disk": {
///             "managed_disk": {
///                 "id": "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk",
///             },
///             "os_state": azure_native.compute.OperatingSystemStateTypes.GENERALIZED,
///             "os_type": azure_native.compute.OperatingSystemTypes.LINUX,
///         },
///         "zone_resilient": False,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   image:
///     type: azure-native:compute:Image
///     properties:
///       imageName: myImage
///       location: West US
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         dataDisks:
///           - lun: 1
///             managedDisk:
///               id: subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk2
///         osDisk:
///           managedDisk:
///             id: subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myManagedDisk
///           osState: Generalized
///           osType: Linux
///         zoneResilient: false
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a virtual machine image that includes a data disk from a snapshot.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new AzureNative.Compute.Image("image", new()
///     {
///         ImageName = "myImage",
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         StorageProfile = new AzureNative.Compute.Inputs.ImageStorageProfileArgs
///         {
///             DataDisks = new[]
///             {
///                 new AzureNative.Compute.Inputs.ImageDataDiskArgs
///                 {
///                     Lun = 1,
///                     Snapshot = new AzureNative.Compute.Inputs.SubResourceArgs
///                     {
///                         Id = "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot2",
///                     },
///                 },
///             },
///             OsDisk = new AzureNative.Compute.Inputs.ImageOSDiskArgs
///             {
///                 OsState = AzureNative.Compute.OperatingSystemStateTypes.Generalized,
///                 OsType = AzureNative.Compute.OperatingSystemTypes.Linux,
///                 Snapshot = new AzureNative.Compute.Inputs.SubResourceArgs
///                 {
///                     Id = "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot",
///                 },
///             },
///             ZoneResilient = true,
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewImage(ctx, "image", &compute.ImageArgs{
/// 			ImageName:         pulumi.String("myImage"),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StorageProfile: &compute.ImageStorageProfileArgs{
/// 				DataDisks: compute.ImageDataDiskArray{
/// 					&compute.ImageDataDiskArgs{
/// 						Lun: pulumi.Int(1),
/// 						Snapshot: &compute.SubResourceArgs{
/// 							Id: pulumi.String("subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot2"),
/// 						},
/// 					},
/// 				},
/// 				OsDisk: &compute.ImageOSDiskArgs{
/// 					OsState: compute.OperatingSystemStateTypesGeneralized,
/// 					OsType:  compute.OperatingSystemTypesLinux,
/// 					Snapshot: &compute.SubResourceArgs{
/// 						Id: pulumi.String("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot"),
/// 					},
/// 				},
/// 				ZoneResilient: pulumi.Bool(true),
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
/// import com.pulumi.azurenative.compute.Image;
/// import com.pulumi.azurenative.compute.ImageArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageStorageProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageOSDiskArgs;
/// import com.pulumi.azurenative.compute.inputs.SubResourceArgs;
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
///         var image = new Image("image", ImageArgs.builder()
///             .imageName("myImage")
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .storageProfile(ImageStorageProfileArgs.builder()
///                 .dataDisks(ImageDataDiskArgs.builder()
///                     .lun(1)
///                     .snapshot(SubResourceArgs.builder()
///                         .id("subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot2")
///                         .build())
///                     .build())
///                 .osDisk(ImageOSDiskArgs.builder()
///                     .osState("Generalized")
///                     .osType("Linux")
///                     .snapshot(SubResourceArgs.builder()
///                         .id("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot")
///                         .build())
///                     .build())
///                 .zoneResilient(true)
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
/// const image = new azure_native.compute.Image("image", {
///     imageName: "myImage",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     storageProfile: {
///         dataDisks: [{
///             lun: 1,
///             snapshot: {
///                 id: "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot2",
///             },
///         }],
///         osDisk: {
///             osState: azure_native.compute.OperatingSystemStateTypes.Generalized,
///             osType: azure_native.compute.OperatingSystemTypes.Linux,
///             snapshot: {
///                 id: "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot",
///             },
///         },
///         zoneResilient: true,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// image = azure_native.compute.Image("image",
///     image_name="myImage",
///     location="West US",
///     resource_group_name="myResourceGroup",
///     storage_profile={
///         "data_disks": [{
///             "lun": 1,
///             "snapshot": {
///                 "id": "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot2",
///             },
///         }],
///         "os_disk": {
///             "os_state": azure_native.compute.OperatingSystemStateTypes.GENERALIZED,
///             "os_type": azure_native.compute.OperatingSystemTypes.LINUX,
///             "snapshot": {
///                 "id": "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot",
///             },
///         },
///         "zone_resilient": True,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   image:
///     type: azure-native:compute:Image
///     properties:
///       imageName: myImage
///       location: West US
///       resourceGroupName: myResourceGroup
///       storageProfile:
///         dataDisks:
///           - lun: 1
///             snapshot:
///               id: subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot2
///         osDisk:
///           osState: Generalized
///           osType: Linux
///           snapshot:
///             id: subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot
///         zoneResilient: true
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
/// $ pulumi import azure-native:compute:Image myImage /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/images/{imageName}
/// ```
class Image extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The extended location of the Image.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// Specifies the HyperVGenerationType of the VirtualMachine created from the image. From API Version 2019-03-01 if the image source is a blob, then we need the user to specify the value, if the source is managed resource like disk or snapshot, we may require the user to specify the property if we cannot deduce it from the source managed resource.
  late final pulumi.Output<String?> hyperVGeneration;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The source virtual machine from which Image is created.
  late final pulumi.Output<SubResourceResponse?> sourceVirtualMachine;
  /// Specifies the storage settings for the virtual machine disks.
  late final pulumi.Output<ImageStorageProfileResponse?> storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Image].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Image]. {@macro pulumi_compute_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Image(
    String name, {
    ImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:Image',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation');
    this.hyperVGeneration = registerOutput<String?>('hyperVGeneration');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.sourceVirtualMachine = registerOutput<SubResourceResponse?>('sourceVirtualMachine');
    this.storageProfile = registerOutput<ImageStorageProfileResponse?>('storageProfile');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
