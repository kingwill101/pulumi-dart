import 'package:pulumi/pulumi.dart' as pulumi;
import 'creation_data_response.dart';
import 'disk_args.dart';
import 'disk_purchase_plan_response.dart';
import 'disk_security_profile_response.dart';
import 'disk_sku_response.dart';
import 'encryption_response.dart';
import 'encryption_settings_collection_response.dart';
import 'extended_location_response.dart';
import 'property_updates_in_progress_response.dart';
import 'supported_capabilities_response.dart';
import 'system_data_response.dart';

/// Disk resource.
///
/// Uses Azure REST API version 2024-03-02. In version 2.x of the Azure Native provider, it used API version 2022-07-02.
///
/// Other available API versions: 2022-07-02, 2023-01-02, 2023-04-02, 2023-10-02, 2025-01-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### create a confidential VM supported disk encrypted with customer managed key
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.FromImage,
///             ImageReference = new AzureNative.Compute.Inputs.ImageDiskReferenceArgs
///             {
///                 Id = "/Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/westus/Publishers/{publisher}/ArtifactTypes/VMImage/Offers/{offer}/Skus/{sku}/Versions/1.0.0",
///             },
///         },
///         DiskName = "myDisk",
///         Location = "West US",
///         OsType = AzureNative.Compute.OperatingSystemTypes.Windows,
///         ResourceGroupName = "myResourceGroup",
///         SecurityProfile = new AzureNative.Compute.Inputs.DiskSecurityProfileArgs
///         {
///             SecureVMDiskEncryptionSetId = "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{diskEncryptionSetName}",
///             SecurityType = AzureNative.Compute.DiskSecurityTypes.ConfidentialVM_DiskEncryptedWithCustomerKey,
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
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption: pulumi.String(compute.DiskCreateOptionFromImage),
/// 				ImageReference: &compute.ImageDiskReferenceArgs{
/// 					Id: pulumi.String("/Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/westus/Publishers/{publisher}/ArtifactTypes/VMImage/Offers/{offer}/Skus/{sku}/Versions/1.0.0"),
/// 				},
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			Location:          pulumi.String("West US"),
/// 			OsType:            compute.OperatingSystemTypesWindows,
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SecurityProfile: &compute.DiskSecurityProfileArgs{
/// 				SecureVMDiskEncryptionSetId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{diskEncryptionSetName}"),
/// 				SecurityType:                pulumi.String(compute.DiskSecurityTypes_ConfidentialVM_DiskEncryptedWithCustomerKey),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageDiskReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.DiskSecurityProfileArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("FromImage")
///                 .imageReference(ImageDiskReferenceArgs.builder()
///                     .id("/Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/westus/Publishers/{publisher}/ArtifactTypes/VMImage/Offers/{offer}/Skus/{sku}/Versions/1.0.0")
///                     .build())
///                 .build())
///             .diskName("myDisk")
///             .location("West US")
///             .osType("Windows")
///             .resourceGroupName("myResourceGroup")
///             .securityProfile(DiskSecurityProfileArgs.builder()
///                 .secureVMDiskEncryptionSetId("/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{diskEncryptionSetName}")
///                 .securityType("ConfidentialVM_DiskEncryptedWithCustomerKey")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.FromImage,
///         imageReference: {
///             id: "/Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/westus/Publishers/{publisher}/ArtifactTypes/VMImage/Offers/{offer}/Skus/{sku}/Versions/1.0.0",
///         },
///     },
///     diskName: "myDisk",
///     location: "West US",
///     osType: azure_native.compute.OperatingSystemTypes.Windows,
///     resourceGroupName: "myResourceGroup",
///     securityProfile: {
///         secureVMDiskEncryptionSetId: "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{diskEncryptionSetName}",
///         securityType: azure_native.compute.DiskSecurityTypes.ConfidentialVM_DiskEncryptedWithCustomerKey,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.FROM_IMAGE,
///         "image_reference": {
///             "id": "/Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/westus/Publishers/{publisher}/ArtifactTypes/VMImage/Offers/{offer}/Skus/{sku}/Versions/1.0.0",
///         },
///     },
///     disk_name="myDisk",
///     location="West US",
///     os_type=azure_native.compute.OperatingSystemTypes.WINDOWS,
///     resource_group_name="myResourceGroup",
///     security_profile={
///         "secure_vm_disk_encryption_set_id": "/subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{diskEncryptionSetName}",
///         "security_type": azure_native.compute.DiskSecurityTypes.CONFIDENTIAL_V_M_DISK_ENCRYPTED_WITH_CUSTOMER_KEY,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: FromImage
///         imageReference:
///           id: /Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/westus/Publishers/{publisher}/ArtifactTypes/VMImage/Offers/{offer}/Skus/{sku}/Versions/1.0.0
///       diskName: myDisk
///       location: West US
///       osType: Windows
///       resourceGroupName: myResourceGroup
///       securityProfile:
///         secureVMDiskEncryptionSetId: /subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{diskEncryptionSetName}
///         securityType: ConfidentialVM_DiskEncryptedWithCustomerKey
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk and associate with disk access resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Empty,
///         },
///         DiskAccessId = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskAccesses/{existing-diskAccess-name}",
///         DiskName = "myDisk",
///         DiskSizeGB = 200,
///         Location = "West US",
///         NetworkAccessPolicy = AzureNative.Compute.NetworkAccessPolicy.AllowPrivate,
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption: pulumi.String(compute.DiskCreateOptionEmpty),
/// 			},
/// 			DiskAccessId:        pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskAccesses/{existing-diskAccess-name}"),
/// 			DiskName:            pulumi.String("myDisk"),
/// 			DiskSizeGB:          pulumi.Int(200),
/// 			Location:            pulumi.String("West US"),
/// 			NetworkAccessPolicy: pulumi.String(compute.NetworkAccessPolicyAllowPrivate),
/// 			ResourceGroupName:   pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Empty")
///                 .build())
///             .diskAccessId("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskAccesses/{existing-diskAccess-name}")
///             .diskName("myDisk")
///             .diskSizeGB(200)
///             .location("West US")
///             .networkAccessPolicy("AllowPrivate")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Empty,
///     },
///     diskAccessId: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskAccesses/{existing-diskAccess-name}",
///     diskName: "myDisk",
///     diskSizeGB: 200,
///     location: "West US",
///     networkAccessPolicy: azure_native.compute.NetworkAccessPolicy.AllowPrivate,
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.EMPTY,
///     },
///     disk_access_id="/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskAccesses/{existing-diskAccess-name}",
///     disk_name="myDisk",
///     disk_size_gb=200,
///     location="West US",
///     network_access_policy=azure_native.compute.NetworkAccessPolicy.ALLOW_PRIVATE,
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: Empty
///       diskAccessId: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskAccesses/{existing-diskAccess-name}
///       diskName: myDisk
///       diskSizeGB: 200
///       location: West US
///       networkAccessPolicy: AllowPrivate
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk and associate with disk encryption set.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Empty,
///         },
///         DiskName = "myDisk",
///         DiskSizeGB = 200,
///         Encryption = new AzureNative.Compute.Inputs.EncryptionArgs
///         {
///             DiskEncryptionSetId = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///         },
///         Location = "West US",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption: pulumi.String(compute.DiskCreateOptionEmpty),
/// 			},
/// 			DiskName:   pulumi.String("myDisk"),
/// 			DiskSizeGB: pulumi.Int(200),
/// 			Encryption: &compute.EncryptionArgs{
/// 				DiskEncryptionSetId: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}"),
/// 			},
/// 			Location:          pulumi.String("West US"),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
/// import com.pulumi.azurenative.compute.inputs.EncryptionArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Empty")
///                 .build())
///             .diskName("myDisk")
///             .diskSizeGB(200)
///             .encryption(EncryptionArgs.builder()
///                 .diskEncryptionSetId("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}")
///                 .build())
///             .location("West US")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Empty,
///     },
///     diskName: "myDisk",
///     diskSizeGB: 200,
///     encryption: {
///         diskEncryptionSetId: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///     },
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.EMPTY,
///     },
///     disk_name="myDisk",
///     disk_size_gb=200,
///     encryption={
///         "disk_encryption_set_id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}",
///     },
///     location="West US",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: Empty
///       diskName: myDisk
///       diskSizeGB: 200
///       encryption:
///         diskEncryptionSetId: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/diskEncryptionSets/{existing-diskEncryptionSet-name}
///       location: West US
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk by copying a snapshot.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Copy,
///             SourceResourceId = "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot",
///         },
///         DiskName = "myDisk",
///         Location = "West US",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption:     pulumi.String(compute.DiskCreateOptionCopy),
/// 				SourceResourceId: pulumi.String("subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot"),
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			Location:          pulumi.String("West US"),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Copy")
///                 .sourceResourceId("subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot")
///                 .build())
///             .diskName("myDisk")
///             .location("West US")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Copy,
///         sourceResourceId: "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot",
///     },
///     diskName: "myDisk",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.COPY,
///         "source_resource_id": "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot",
///     },
///     disk_name="myDisk",
///     location="West US",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: Copy
///         sourceResourceId: subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/snapshots/mySnapshot
///       diskName: myDisk
///       location: West US
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk by importing an unmanaged blob from a different subscription.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Import,
///             SourceUri = "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///             StorageAccountId = "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount",
///         },
///         DiskName = "myDisk",
///         Location = "West US",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption:     pulumi.String(compute.DiskCreateOptionImport),
/// 				SourceUri:        pulumi.String("https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd"),
/// 				StorageAccountId: pulumi.String("subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount"),
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			Location:          pulumi.String("West US"),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Import")
///                 .sourceUri("https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd")
///                 .storageAccountId("subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount")
///                 .build())
///             .diskName("myDisk")
///             .location("West US")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Import,
///         sourceUri: "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///         storageAccountId: "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount",
///     },
///     diskName: "myDisk",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.IMPORT_,
///         "source_uri": "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///         "storage_account_id": "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount",
///     },
///     disk_name="myDisk",
///     location="West US",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: Import
///         sourceUri: https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd
///         storageAccountId: subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount
///       diskName: myDisk
///       location: West US
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk by importing an unmanaged blob from the same subscription.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Import,
///             SourceUri = "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///         },
///         DiskName = "myDisk",
///         Location = "West US",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption: pulumi.String(compute.DiskCreateOptionImport),
/// 				SourceUri:    pulumi.String("https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd"),
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			Location:          pulumi.String("West US"),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Import")
///                 .sourceUri("https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd")
///                 .build())
///             .diskName("myDisk")
///             .location("West US")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Import,
///         sourceUri: "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///     },
///     diskName: "myDisk",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.IMPORT_,
///         "source_uri": "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///     },
///     disk_name="myDisk",
///     location="West US",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: Import
///         sourceUri: https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd
///       diskName: myDisk
///       location: West US
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk from ImportSecure create option
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.ImportSecure,
///             SecurityDataUri = "https://mystorageaccount.blob.core.windows.net/osimages/vmgs.vhd",
///             SourceUri = "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///             StorageAccountId = "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount",
///         },
///         DiskName = "myDisk",
///         Location = "West US",
///         OsType = AzureNative.Compute.OperatingSystemTypes.Windows,
///         ResourceGroupName = "myResourceGroup",
///         SecurityProfile = new AzureNative.Compute.Inputs.DiskSecurityProfileArgs
///         {
///             SecurityType = AzureNative.Compute.DiskSecurityTypes.ConfidentialVM_VMGuestStateOnlyEncryptedWithPlatformKey,
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
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption:     pulumi.String(compute.DiskCreateOptionImportSecure),
/// 				SecurityDataUri:  pulumi.String("https://mystorageaccount.blob.core.windows.net/osimages/vmgs.vhd"),
/// 				SourceUri:        pulumi.String("https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd"),
/// 				StorageAccountId: pulumi.String("subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount"),
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			Location:          pulumi.String("West US"),
/// 			OsType:            compute.OperatingSystemTypesWindows,
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SecurityProfile: &compute.DiskSecurityProfileArgs{
/// 				SecurityType: pulumi.String(compute.DiskSecurityTypes_ConfidentialVM_VMGuestStateOnlyEncryptedWithPlatformKey),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
/// import com.pulumi.azurenative.compute.inputs.DiskSecurityProfileArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("ImportSecure")
///                 .securityDataUri("https://mystorageaccount.blob.core.windows.net/osimages/vmgs.vhd")
///                 .sourceUri("https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd")
///                 .storageAccountId("subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount")
///                 .build())
///             .diskName("myDisk")
///             .location("West US")
///             .osType("Windows")
///             .resourceGroupName("myResourceGroup")
///             .securityProfile(DiskSecurityProfileArgs.builder()
///                 .securityType("ConfidentialVM_VMGuestStateOnlyEncryptedWithPlatformKey")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.ImportSecure,
///         securityDataUri: "https://mystorageaccount.blob.core.windows.net/osimages/vmgs.vhd",
///         sourceUri: "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///         storageAccountId: "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount",
///     },
///     diskName: "myDisk",
///     location: "West US",
///     osType: azure_native.compute.OperatingSystemTypes.Windows,
///     resourceGroupName: "myResourceGroup",
///     securityProfile: {
///         securityType: azure_native.compute.DiskSecurityTypes.ConfidentialVM_VMGuestStateOnlyEncryptedWithPlatformKey,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.IMPORT_SECURE,
///         "security_data_uri": "https://mystorageaccount.blob.core.windows.net/osimages/vmgs.vhd",
///         "source_uri": "https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd",
///         "storage_account_id": "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount",
///     },
///     disk_name="myDisk",
///     location="West US",
///     os_type=azure_native.compute.OperatingSystemTypes.WINDOWS,
///     resource_group_name="myResourceGroup",
///     security_profile={
///         "security_type": azure_native.compute.DiskSecurityTypes.CONFIDENTIAL_V_M_VM_GUEST_STATE_ONLY_ENCRYPTED_WITH_PLATFORM_KEY,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: ImportSecure
///         securityDataUri: https://mystorageaccount.blob.core.windows.net/osimages/vmgs.vhd
///         sourceUri: https://mystorageaccount.blob.core.windows.net/osimages/osimage.vhd
///         storageAccountId: subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/myStorageAccount
///       diskName: myDisk
///       location: West US
///       osType: Windows
///       resourceGroupName: myResourceGroup
///       securityProfile:
///         securityType: ConfidentialVM_VMGuestStateOnlyEncryptedWithPlatformKey
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk from UploadPreparedSecure create option
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.UploadPreparedSecure,
///             UploadSizeBytes = 10737418752,
///         },
///         DiskName = "myDisk",
///         Location = "West US",
///         OsType = AzureNative.Compute.OperatingSystemTypes.Windows,
///         ResourceGroupName = "myResourceGroup",
///         SecurityProfile = new AzureNative.Compute.Inputs.DiskSecurityProfileArgs
///         {
///             SecurityType = AzureNative.Compute.DiskSecurityTypes.TrustedLaunch,
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
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption:    pulumi.String(compute.DiskCreateOptionUploadPreparedSecure),
/// 				UploadSizeBytes: pulumi.Float64(10737418752),
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			Location:          pulumi.String("West US"),
/// 			OsType:            compute.OperatingSystemTypesWindows,
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SecurityProfile: &compute.DiskSecurityProfileArgs{
/// 				SecurityType: pulumi.String(compute.DiskSecurityTypesTrustedLaunch),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
/// import com.pulumi.azurenative.compute.inputs.DiskSecurityProfileArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("UploadPreparedSecure")
///                 .uploadSizeBytes(10737418752.0)
///                 .build())
///             .diskName("myDisk")
///             .location("West US")
///             .osType("Windows")
///             .resourceGroupName("myResourceGroup")
///             .securityProfile(DiskSecurityProfileArgs.builder()
///                 .securityType("TrustedLaunch")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.UploadPreparedSecure,
///         uploadSizeBytes: 10737418752,
///     },
///     diskName: "myDisk",
///     location: "West US",
///     osType: azure_native.compute.OperatingSystemTypes.Windows,
///     resourceGroupName: "myResourceGroup",
///     securityProfile: {
///         securityType: azure_native.compute.DiskSecurityTypes.TrustedLaunch,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.UPLOAD_PREPARED_SECURE,
///         "upload_size_bytes": 10737418752,
///     },
///     disk_name="myDisk",
///     location="West US",
///     os_type=azure_native.compute.OperatingSystemTypes.WINDOWS,
///     resource_group_name="myResourceGroup",
///     security_profile={
///         "security_type": azure_native.compute.DiskSecurityTypes.TRUSTED_LAUNCH,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: UploadPreparedSecure
///         uploadSizeBytes: 1.0737418752e+10
///       diskName: myDisk
///       location: West US
///       osType: Windows
///       resourceGroupName: myResourceGroup
///       securityProfile:
///         securityType: TrustedLaunch
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk from a platform image.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.FromImage,
///             ImageReference = new AzureNative.Compute.Inputs.ImageDiskReferenceArgs
///             {
///                 Id = "/Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/westus/Publishers/{publisher}/ArtifactTypes/VMImage/Offers/{offer}/Skus/{sku}/Versions/1.0.0",
///             },
///         },
///         DiskName = "myDisk",
///         Location = "West US",
///         OsType = AzureNative.Compute.OperatingSystemTypes.Windows,
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption: pulumi.String(compute.DiskCreateOptionFromImage),
/// 				ImageReference: &compute.ImageDiskReferenceArgs{
/// 					Id: pulumi.String("/Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/westus/Publishers/{publisher}/ArtifactTypes/VMImage/Offers/{offer}/Skus/{sku}/Versions/1.0.0"),
/// 				},
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			Location:          pulumi.String("West US"),
/// 			OsType:            compute.OperatingSystemTypesWindows,
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageDiskReferenceArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("FromImage")
///                 .imageReference(ImageDiskReferenceArgs.builder()
///                     .id("/Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/westus/Publishers/{publisher}/ArtifactTypes/VMImage/Offers/{offer}/Skus/{sku}/Versions/1.0.0")
///                     .build())
///                 .build())
///             .diskName("myDisk")
///             .location("West US")
///             .osType("Windows")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.FromImage,
///         imageReference: {
///             id: "/Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/westus/Publishers/{publisher}/ArtifactTypes/VMImage/Offers/{offer}/Skus/{sku}/Versions/1.0.0",
///         },
///     },
///     diskName: "myDisk",
///     location: "West US",
///     osType: azure_native.compute.OperatingSystemTypes.Windows,
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.FROM_IMAGE,
///         "image_reference": {
///             "id": "/Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/westus/Publishers/{publisher}/ArtifactTypes/VMImage/Offers/{offer}/Skus/{sku}/Versions/1.0.0",
///         },
///     },
///     disk_name="myDisk",
///     location="West US",
///     os_type=azure_native.compute.OperatingSystemTypes.WINDOWS,
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: FromImage
///         imageReference:
///           id: /Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/westus/Publishers/{publisher}/ArtifactTypes/VMImage/Offers/{offer}/Skus/{sku}/Versions/1.0.0
///       diskName: myDisk
///       location: West US
///       osType: Windows
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk from an Azure Compute Gallery community image.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.FromImage,
///             GalleryImageReference = new AzureNative.Compute.Inputs.ImageDiskReferenceArgs
///             {
///                 CommunityGalleryImageId = "/CommunityGalleries/{communityGalleryPublicGalleryName}/Images/{imageName}/Versions/1.0.0",
///             },
///         },
///         DiskName = "myDisk",
///         Location = "West US",
///         OsType = AzureNative.Compute.OperatingSystemTypes.Windows,
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption: pulumi.String(compute.DiskCreateOptionFromImage),
/// 				GalleryImageReference: &compute.ImageDiskReferenceArgs{
/// 					CommunityGalleryImageId: pulumi.String("/CommunityGalleries/{communityGalleryPublicGalleryName}/Images/{imageName}/Versions/1.0.0"),
/// 				},
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			Location:          pulumi.String("West US"),
/// 			OsType:            compute.OperatingSystemTypesWindows,
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageDiskReferenceArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("FromImage")
///                 .galleryImageReference(ImageDiskReferenceArgs.builder()
///                     .communityGalleryImageId("/CommunityGalleries/{communityGalleryPublicGalleryName}/Images/{imageName}/Versions/1.0.0")
///                     .build())
///                 .build())
///             .diskName("myDisk")
///             .location("West US")
///             .osType("Windows")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.FromImage,
///         galleryImageReference: {
///             communityGalleryImageId: "/CommunityGalleries/{communityGalleryPublicGalleryName}/Images/{imageName}/Versions/1.0.0",
///         },
///     },
///     diskName: "myDisk",
///     location: "West US",
///     osType: azure_native.compute.OperatingSystemTypes.Windows,
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.FROM_IMAGE,
///         "gallery_image_reference": {
///             "community_gallery_image_id": "/CommunityGalleries/{communityGalleryPublicGalleryName}/Images/{imageName}/Versions/1.0.0",
///         },
///     },
///     disk_name="myDisk",
///     location="West US",
///     os_type=azure_native.compute.OperatingSystemTypes.WINDOWS,
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: FromImage
///         galleryImageReference:
///           communityGalleryImageId: /CommunityGalleries/{communityGalleryPublicGalleryName}/Images/{imageName}/Versions/1.0.0
///       diskName: myDisk
///       location: West US
///       osType: Windows
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk from an Azure Compute Gallery direct shared image.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.FromImage,
///             GalleryImageReference = new AzureNative.Compute.Inputs.ImageDiskReferenceArgs
///             {
///                 SharedGalleryImageId = "/SharedGalleries/{sharedGalleryUniqueName}/Images/{imageName}/Versions/1.0.0",
///             },
///         },
///         DiskName = "myDisk",
///         Location = "West US",
///         OsType = AzureNative.Compute.OperatingSystemTypes.Windows,
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption: pulumi.String(compute.DiskCreateOptionFromImage),
/// 				GalleryImageReference: &compute.ImageDiskReferenceArgs{
/// 					SharedGalleryImageId: pulumi.String("/SharedGalleries/{sharedGalleryUniqueName}/Images/{imageName}/Versions/1.0.0"),
/// 				},
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			Location:          pulumi.String("West US"),
/// 			OsType:            compute.OperatingSystemTypesWindows,
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageDiskReferenceArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("FromImage")
///                 .galleryImageReference(ImageDiskReferenceArgs.builder()
///                     .sharedGalleryImageId("/SharedGalleries/{sharedGalleryUniqueName}/Images/{imageName}/Versions/1.0.0")
///                     .build())
///                 .build())
///             .diskName("myDisk")
///             .location("West US")
///             .osType("Windows")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.FromImage,
///         galleryImageReference: {
///             sharedGalleryImageId: "/SharedGalleries/{sharedGalleryUniqueName}/Images/{imageName}/Versions/1.0.0",
///         },
///     },
///     diskName: "myDisk",
///     location: "West US",
///     osType: azure_native.compute.OperatingSystemTypes.Windows,
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.FROM_IMAGE,
///         "gallery_image_reference": {
///             "shared_gallery_image_id": "/SharedGalleries/{sharedGalleryUniqueName}/Images/{imageName}/Versions/1.0.0",
///         },
///     },
///     disk_name="myDisk",
///     location="West US",
///     os_type=azure_native.compute.OperatingSystemTypes.WINDOWS,
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: FromImage
///         galleryImageReference:
///           sharedGalleryImageId: /SharedGalleries/{sharedGalleryUniqueName}/Images/{imageName}/Versions/1.0.0
///       diskName: myDisk
///       location: West US
///       osType: Windows
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk from an Azure Compute Gallery image.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.FromImage,
///             GalleryImageReference = new AzureNative.Compute.Inputs.ImageDiskReferenceArgs
///             {
///                 Id = "/Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/Providers/Microsoft.Compute/Galleries/{galleryName}/Images/{imageName}/Versions/1.0.0",
///             },
///         },
///         DiskName = "myDisk",
///         Location = "West US",
///         OsType = AzureNative.Compute.OperatingSystemTypes.Windows,
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption: pulumi.String(compute.DiskCreateOptionFromImage),
/// 				GalleryImageReference: &compute.ImageDiskReferenceArgs{
/// 					Id: pulumi.String("/Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/Providers/Microsoft.Compute/Galleries/{galleryName}/Images/{imageName}/Versions/1.0.0"),
/// 				},
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			Location:          pulumi.String("West US"),
/// 			OsType:            compute.OperatingSystemTypesWindows,
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageDiskReferenceArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("FromImage")
///                 .galleryImageReference(ImageDiskReferenceArgs.builder()
///                     .id("/Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/Providers/Microsoft.Compute/Galleries/{galleryName}/Images/{imageName}/Versions/1.0.0")
///                     .build())
///                 .build())
///             .diskName("myDisk")
///             .location("West US")
///             .osType("Windows")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.FromImage,
///         galleryImageReference: {
///             id: "/Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/Providers/Microsoft.Compute/Galleries/{galleryName}/Images/{imageName}/Versions/1.0.0",
///         },
///     },
///     diskName: "myDisk",
///     location: "West US",
///     osType: azure_native.compute.OperatingSystemTypes.Windows,
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.FROM_IMAGE,
///         "gallery_image_reference": {
///             "id": "/Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/Providers/Microsoft.Compute/Galleries/{galleryName}/Images/{imageName}/Versions/1.0.0",
///         },
///     },
///     disk_name="myDisk",
///     location="West US",
///     os_type=azure_native.compute.OperatingSystemTypes.WINDOWS,
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: FromImage
///         galleryImageReference:
///           id: /Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/Providers/Microsoft.Compute/Galleries/{galleryName}/Images/{imageName}/Versions/1.0.0
///       diskName: myDisk
///       location: West US
///       osType: Windows
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk from an existing managed disk in the same or different subscription.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Copy,
///             SourceResourceId = "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myDisk1",
///         },
///         DiskName = "myDisk2",
///         Location = "West US",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption:     pulumi.String(compute.DiskCreateOptionCopy),
/// 				SourceResourceId: pulumi.String("subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myDisk1"),
/// 			},
/// 			DiskName:          pulumi.String("myDisk2"),
/// 			Location:          pulumi.String("West US"),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Copy")
///                 .sourceResourceId("subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myDisk1")
///                 .build())
///             .diskName("myDisk2")
///             .location("West US")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Copy,
///         sourceResourceId: "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myDisk1",
///     },
///     diskName: "myDisk2",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.COPY,
///         "source_resource_id": "subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myDisk1",
///     },
///     disk_name="myDisk2",
///     location="West US",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: Copy
///         sourceResourceId: subscriptions/{subscriptionId}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/myDisk1
///       diskName: myDisk2
///       location: West US
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk from elastic san volume snapshot.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.CopyFromSanSnapshot,
///             ElasticSanResourceId = "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.ElasticSan/elasticSans/myElasticSan/volumegroups/myElasticSanVolumeGroup/snapshots/myElasticSanVolumeSnapshot",
///         },
///         DiskName = "myDisk",
///         Location = "West US",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption:         pulumi.String(compute.DiskCreateOptionCopyFromSanSnapshot),
/// 				ElasticSanResourceId: pulumi.String("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.ElasticSan/elasticSans/myElasticSan/volumegroups/myElasticSanVolumeGroup/snapshots/myElasticSanVolumeSnapshot"),
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			Location:          pulumi.String("West US"),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("CopyFromSanSnapshot")
///                 .elasticSanResourceId("subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.ElasticSan/elasticSans/myElasticSan/volumegroups/myElasticSanVolumeGroup/snapshots/myElasticSanVolumeSnapshot")
///                 .build())
///             .diskName("myDisk")
///             .location("West US")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.CopyFromSanSnapshot,
///         elasticSanResourceId: "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.ElasticSan/elasticSans/myElasticSan/volumegroups/myElasticSanVolumeGroup/snapshots/myElasticSanVolumeSnapshot",
///     },
///     diskName: "myDisk",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.COPY_FROM_SAN_SNAPSHOT,
///         "elastic_san_resource_id": "subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.ElasticSan/elasticSans/myElasticSan/volumegroups/myElasticSanVolumeGroup/snapshots/myElasticSanVolumeSnapshot",
///     },
///     disk_name="myDisk",
///     location="West US",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: CopyFromSanSnapshot
///         elasticSanResourceId: subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.ElasticSan/elasticSans/myElasticSan/volumegroups/myElasticSanVolumeGroup/snapshots/myElasticSanVolumeSnapshot
///       diskName: myDisk
///       location: West US
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk with dataAccessAuthMode
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Empty,
///         },
///         DataAccessAuthMode = AzureNative.Compute.DataAccessAuthMode.AzureActiveDirectory,
///         DiskName = "myDisk",
///         DiskSizeGB = 200,
///         Location = "West US",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption: pulumi.String(compute.DiskCreateOptionEmpty),
/// 			},
/// 			DataAccessAuthMode: pulumi.String(compute.DataAccessAuthModeAzureActiveDirectory),
/// 			DiskName:           pulumi.String("myDisk"),
/// 			DiskSizeGB:         pulumi.Int(200),
/// 			Location:           pulumi.String("West US"),
/// 			ResourceGroupName:  pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Empty")
///                 .build())
///             .dataAccessAuthMode("AzureActiveDirectory")
///             .diskName("myDisk")
///             .diskSizeGB(200)
///             .location("West US")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Empty,
///     },
///     dataAccessAuthMode: azure_native.compute.DataAccessAuthMode.AzureActiveDirectory,
///     diskName: "myDisk",
///     diskSizeGB: 200,
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.EMPTY,
///     },
///     data_access_auth_mode=azure_native.compute.DataAccessAuthMode.AZURE_ACTIVE_DIRECTORY,
///     disk_name="myDisk",
///     disk_size_gb=200,
///     location="West US",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: Empty
///       dataAccessAuthMode: AzureActiveDirectory
///       diskName: myDisk
///       diskSizeGB: 200
///       location: West US
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk with optimizedForFrequentAttach.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Empty,
///         },
///         DiskName = "myDisk",
///         DiskSizeGB = 200,
///         Location = "West US",
///         OptimizedForFrequentAttach = true,
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption: pulumi.String(compute.DiskCreateOptionEmpty),
/// 			},
/// 			DiskName:                   pulumi.String("myDisk"),
/// 			DiskSizeGB:                 pulumi.Int(200),
/// 			Location:                   pulumi.String("West US"),
/// 			OptimizedForFrequentAttach: pulumi.Bool(true),
/// 			ResourceGroupName:          pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Empty")
///                 .build())
///             .diskName("myDisk")
///             .diskSizeGB(200)
///             .location("West US")
///             .optimizedForFrequentAttach(true)
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Empty,
///     },
///     diskName: "myDisk",
///     diskSizeGB: 200,
///     location: "West US",
///     optimizedForFrequentAttach: true,
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.EMPTY,
///     },
///     disk_name="myDisk",
///     disk_size_gb=200,
///     location="West US",
///     optimized_for_frequent_attach=True,
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: Empty
///       diskName: myDisk
///       diskSizeGB: 200
///       location: West US
///       optimizedForFrequentAttach: true
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk with performancePlus.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Upload,
///             PerformancePlus = true,
///         },
///         DiskName = "myDisk",
///         Location = "West US",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption:    pulumi.String(compute.DiskCreateOptionUpload),
/// 				PerformancePlus: pulumi.Bool(true),
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			Location:          pulumi.String("West US"),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Upload")
///                 .performancePlus(true)
///                 .build())
///             .diskName("myDisk")
///             .location("West US")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Upload,
///         performancePlus: true,
///     },
///     diskName: "myDisk",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.UPLOAD,
///         "performance_plus": True,
///     },
///     disk_name="myDisk",
///     location="West US",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: Upload
///         performancePlus: true
///       diskName: myDisk
///       location: West US
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk with premium v2 account type.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Empty,
///         },
///         DiskIOPSReadWrite = 125,
///         DiskMBpsReadWrite = 3000,
///         DiskName = "myPremiumV2Disk",
///         DiskSizeGB = 200,
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.DiskSkuArgs
///         {
///             Name = AzureNative.Compute.DiskStorageAccountTypes.PremiumV2_LRS,
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
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption: pulumi.String(compute.DiskCreateOptionEmpty),
/// 			},
/// 			DiskIOPSReadWrite: pulumi.Float64(125),
/// 			DiskMBpsReadWrite: pulumi.Float64(3000),
/// 			DiskName:          pulumi.String("myPremiumV2Disk"),
/// 			DiskSizeGB:        pulumi.Int(200),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.DiskSkuArgs{
/// 				Name: pulumi.String(compute.DiskStorageAccountTypes_PremiumV2_LRS),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
/// import com.pulumi.azurenative.compute.inputs.DiskSkuArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Empty")
///                 .build())
///             .diskIOPSReadWrite(125.0)
///             .diskMBpsReadWrite(3000.0)
///             .diskName("myPremiumV2Disk")
///             .diskSizeGB(200)
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .sku(DiskSkuArgs.builder()
///                 .name("PremiumV2_LRS")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Empty,
///     },
///     diskIOPSReadWrite: 125,
///     diskMBpsReadWrite: 3000,
///     diskName: "myPremiumV2Disk",
///     diskSizeGB: 200,
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: azure_native.compute.DiskStorageAccountTypes.PremiumV2_LRS,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.EMPTY,
///     },
///     disk_iops_read_write=125,
///     disk_m_bps_read_write=3000,
///     disk_name="myPremiumV2Disk",
///     disk_size_gb=200,
///     location="West US",
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": azure_native.compute.DiskStorageAccountTypes.PREMIUM_V2_LRS,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: Empty
///       diskIOPSReadWrite: 125
///       diskMBpsReadWrite: 3000
///       diskName: myPremiumV2Disk
///       diskSizeGB: 200
///       location: West US
///       resourceGroupName: myResourceGroup
///       sku:
///         name: PremiumV2_LRS
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk with security profile
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.FromImage,
///             ImageReference = new AzureNative.Compute.Inputs.ImageDiskReferenceArgs
///             {
///                 Id = "/Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/uswest/Publishers/Microsoft/ArtifactTypes/VMImage/Offers/{offer}",
///             },
///         },
///         DiskName = "myDisk",
///         Location = "North Central US",
///         OsType = AzureNative.Compute.OperatingSystemTypes.Windows,
///         ResourceGroupName = "myResourceGroup",
///         SecurityProfile = new AzureNative.Compute.Inputs.DiskSecurityProfileArgs
///         {
///             SecurityType = AzureNative.Compute.DiskSecurityTypes.TrustedLaunch,
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
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption: pulumi.String(compute.DiskCreateOptionFromImage),
/// 				ImageReference: &compute.ImageDiskReferenceArgs{
/// 					Id: pulumi.String("/Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/uswest/Publishers/Microsoft/ArtifactTypes/VMImage/Offers/{offer}"),
/// 				},
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			Location:          pulumi.String("North Central US"),
/// 			OsType:            compute.OperatingSystemTypesWindows,
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SecurityProfile: &compute.DiskSecurityProfileArgs{
/// 				SecurityType: pulumi.String(compute.DiskSecurityTypesTrustedLaunch),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
/// import com.pulumi.azurenative.compute.inputs.ImageDiskReferenceArgs;
/// import com.pulumi.azurenative.compute.inputs.DiskSecurityProfileArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("FromImage")
///                 .imageReference(ImageDiskReferenceArgs.builder()
///                     .id("/Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/uswest/Publishers/Microsoft/ArtifactTypes/VMImage/Offers/{offer}")
///                     .build())
///                 .build())
///             .diskName("myDisk")
///             .location("North Central US")
///             .osType("Windows")
///             .resourceGroupName("myResourceGroup")
///             .securityProfile(DiskSecurityProfileArgs.builder()
///                 .securityType("TrustedLaunch")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.FromImage,
///         imageReference: {
///             id: "/Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/uswest/Publishers/Microsoft/ArtifactTypes/VMImage/Offers/{offer}",
///         },
///     },
///     diskName: "myDisk",
///     location: "North Central US",
///     osType: azure_native.compute.OperatingSystemTypes.Windows,
///     resourceGroupName: "myResourceGroup",
///     securityProfile: {
///         securityType: azure_native.compute.DiskSecurityTypes.TrustedLaunch,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.FROM_IMAGE,
///         "image_reference": {
///             "id": "/Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/uswest/Publishers/Microsoft/ArtifactTypes/VMImage/Offers/{offer}",
///         },
///     },
///     disk_name="myDisk",
///     location="North Central US",
///     os_type=azure_native.compute.OperatingSystemTypes.WINDOWS,
///     resource_group_name="myResourceGroup",
///     security_profile={
///         "security_type": azure_native.compute.DiskSecurityTypes.TRUSTED_LAUNCH,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: FromImage
///         imageReference:
///           id: /Subscriptions/{subscriptionId}/Providers/Microsoft.Compute/Locations/uswest/Publishers/Microsoft/ArtifactTypes/VMImage/Offers/{offer}
///       diskName: myDisk
///       location: North Central US
///       osType: Windows
///       resourceGroupName: myResourceGroup
///       securityProfile:
///         securityType: TrustedLaunch
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk with ssd zrs account type.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Empty,
///         },
///         DiskName = "myDisk",
///         DiskSizeGB = 200,
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.DiskSkuArgs
///         {
///             Name = AzureNative.Compute.DiskStorageAccountTypes.Premium_ZRS,
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
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption: pulumi.String(compute.DiskCreateOptionEmpty),
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			DiskSizeGB:        pulumi.Int(200),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.DiskSkuArgs{
/// 				Name: pulumi.String(compute.DiskStorageAccountTypes_Premium_ZRS),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
/// import com.pulumi.azurenative.compute.inputs.DiskSkuArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Empty")
///                 .build())
///             .diskName("myDisk")
///             .diskSizeGB(200)
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .sku(DiskSkuArgs.builder()
///                 .name("Premium_ZRS")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Empty,
///     },
///     diskName: "myDisk",
///     diskSizeGB: 200,
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: azure_native.compute.DiskStorageAccountTypes.Premium_ZRS,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.EMPTY,
///     },
///     disk_name="myDisk",
///     disk_size_gb=200,
///     location="West US",
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": azure_native.compute.DiskStorageAccountTypes.PREMIUM_ZRS,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: Empty
///       diskName: myDisk
///       diskSizeGB: 200
///       location: West US
///       resourceGroupName: myResourceGroup
///       sku:
///         name: Premium_ZRS
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed disk with ultra account type with readOnly property set.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Empty,
///             LogicalSectorSize = 4096,
///         },
///         DiskIOPSReadWrite = 125,
///         DiskMBpsReadWrite = 3000,
///         DiskName = "myUltraReadOnlyDisk",
///         DiskSizeGB = 200,
///         Encryption = new AzureNative.Compute.Inputs.EncryptionArgs
///         {
///             Type = AzureNative.Compute.EncryptionType.EncryptionAtRestWithPlatformKey,
///         },
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.DiskSkuArgs
///         {
///             Name = AzureNative.Compute.DiskStorageAccountTypes.UltraSSD_LRS,
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
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption:      pulumi.String(compute.DiskCreateOptionEmpty),
/// 				LogicalSectorSize: pulumi.Int(4096),
/// 			},
/// 			DiskIOPSReadWrite: pulumi.Float64(125),
/// 			DiskMBpsReadWrite: pulumi.Float64(3000),
/// 			DiskName:          pulumi.String("myUltraReadOnlyDisk"),
/// 			DiskSizeGB:        pulumi.Int(200),
/// 			Encryption: &compute.EncryptionArgs{
/// 				Type: pulumi.String(compute.EncryptionTypeEncryptionAtRestWithPlatformKey),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.DiskSkuArgs{
/// 				Name: pulumi.String(compute.DiskStorageAccountTypes_UltraSSD_LRS),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
/// import com.pulumi.azurenative.compute.inputs.EncryptionArgs;
/// import com.pulumi.azurenative.compute.inputs.DiskSkuArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Empty")
///                 .logicalSectorSize(4096)
///                 .build())
///             .diskIOPSReadWrite(125.0)
///             .diskMBpsReadWrite(3000.0)
///             .diskName("myUltraReadOnlyDisk")
///             .diskSizeGB(200)
///             .encryption(EncryptionArgs.builder()
///                 .type("EncryptionAtRestWithPlatformKey")
///                 .build())
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .sku(DiskSkuArgs.builder()
///                 .name("UltraSSD_LRS")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Empty,
///         logicalSectorSize: 4096,
///     },
///     diskIOPSReadWrite: 125,
///     diskMBpsReadWrite: 3000,
///     diskName: "myUltraReadOnlyDisk",
///     diskSizeGB: 200,
///     encryption: {
///         type: azure_native.compute.EncryptionType.EncryptionAtRestWithPlatformKey,
///     },
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: azure_native.compute.DiskStorageAccountTypes.UltraSSD_LRS,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.EMPTY,
///         "logical_sector_size": 4096,
///     },
///     disk_iops_read_write=125,
///     disk_m_bps_read_write=3000,
///     disk_name="myUltraReadOnlyDisk",
///     disk_size_gb=200,
///     encryption={
///         "type": azure_native.compute.EncryptionType.ENCRYPTION_AT_REST_WITH_PLATFORM_KEY,
///     },
///     location="West US",
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": azure_native.compute.DiskStorageAccountTypes.ULTRA_SS_D_LRS,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: Empty
///         logicalSectorSize: 4096
///       diskIOPSReadWrite: 125
///       diskMBpsReadWrite: 3000
///       diskName: myUltraReadOnlyDisk
///       diskSizeGB: 200
///       encryption:
///         type: EncryptionAtRestWithPlatformKey
///       location: West US
///       resourceGroupName: myResourceGroup
///       sku:
///         name: UltraSSD_LRS
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create a managed upload disk.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Upload,
///             UploadSizeBytes = 10737418752,
///         },
///         DiskName = "myDisk",
///         Location = "West US",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption:    pulumi.String(compute.DiskCreateOptionUpload),
/// 				UploadSizeBytes: pulumi.Float64(10737418752),
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			Location:          pulumi.String("West US"),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Upload")
///                 .uploadSizeBytes(10737418752.0)
///                 .build())
///             .diskName("myDisk")
///             .location("West US")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Upload,
///         uploadSizeBytes: 10737418752,
///     },
///     diskName: "myDisk",
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.UPLOAD,
///         "upload_size_bytes": 10737418752,
///     },
///     disk_name="myDisk",
///     location="West US",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: Upload
///         uploadSizeBytes: 1.0737418752e+10
///       diskName: myDisk
///       location: West US
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create an empty managed disk in extended location.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Empty,
///         },
///         DiskName = "myDisk",
///         DiskSizeGB = 200,
///         ExtendedLocation = new AzureNative.Compute.Inputs.ExtendedLocationArgs
///         {
///             Name = "{edge-zone-id}",
///             Type = AzureNative.Compute.ExtendedLocationTypes.EdgeZone,
///         },
///         Location = "West US",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption: pulumi.String(compute.DiskCreateOptionEmpty),
/// 			},
/// 			DiskName:   pulumi.String("myDisk"),
/// 			DiskSizeGB: pulumi.Int(200),
/// 			ExtendedLocation: &compute.ExtendedLocationArgs{
/// 				Name: pulumi.String("{edge-zone-id}"),
/// 				Type: pulumi.String(compute.ExtendedLocationTypesEdgeZone),
/// 			},
/// 			Location:          pulumi.String("West US"),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
/// import com.pulumi.azurenative.compute.inputs.ExtendedLocationArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Empty")
///                 .build())
///             .diskName("myDisk")
///             .diskSizeGB(200)
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("{edge-zone-id}")
///                 .type("EdgeZone")
///                 .build())
///             .location("West US")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Empty,
///     },
///     diskName: "myDisk",
///     diskSizeGB: 200,
///     extendedLocation: {
///         name: "{edge-zone-id}",
///         type: azure_native.compute.ExtendedLocationTypes.EdgeZone,
///     },
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.EMPTY,
///     },
///     disk_name="myDisk",
///     disk_size_gb=200,
///     extended_location={
///         "name": "{edge-zone-id}",
///         "type": azure_native.compute.ExtendedLocationTypes.EDGE_ZONE,
///     },
///     location="West US",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: Empty
///       diskName: myDisk
///       diskSizeGB: 200
///       extendedLocation:
///         name: '{edge-zone-id}'
///         type: EdgeZone
///       location: West US
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create an empty managed disk.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Empty,
///         },
///         DiskName = "myDisk",
///         DiskSizeGB = 200,
///         Location = "West US",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption: pulumi.String(compute.DiskCreateOptionEmpty),
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			DiskSizeGB:        pulumi.Int(200),
/// 			Location:          pulumi.String("West US"),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Empty")
///                 .build())
///             .diskName("myDisk")
///             .diskSizeGB(200)
///             .location("West US")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Empty,
///     },
///     diskName: "myDisk",
///     diskSizeGB: 200,
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.EMPTY,
///     },
///     disk_name="myDisk",
///     disk_size_gb=200,
///     location="West US",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: Empty
///       diskName: myDisk
///       diskSizeGB: 200
///       location: West US
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create an ultra managed disk with logicalSectorSize 512E
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disk = new AzureNative.Compute.Disk("disk", new()
///     {
///         CreationData = new AzureNative.Compute.Inputs.CreationDataArgs
///         {
///             CreateOption = AzureNative.Compute.DiskCreateOption.Empty,
///             LogicalSectorSize = 512,
///         },
///         DiskName = "myDisk",
///         DiskSizeGB = 200,
///         Location = "West US",
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.Compute.Inputs.DiskSkuArgs
///         {
///             Name = AzureNative.Compute.DiskStorageAccountTypes.UltraSSD_LRS,
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
/// 		_, err := compute.NewDisk(ctx, "disk", &compute.DiskArgs{
/// 			CreationData: &compute.CreationDataArgs{
/// 				CreateOption:      pulumi.String(compute.DiskCreateOptionEmpty),
/// 				LogicalSectorSize: pulumi.Int(512),
/// 			},
/// 			DiskName:          pulumi.String("myDisk"),
/// 			DiskSizeGB:        pulumi.Int(200),
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &compute.DiskSkuArgs{
/// 				Name: pulumi.String(compute.DiskStorageAccountTypes_UltraSSD_LRS),
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
/// import com.pulumi.azurenative.compute.Disk;
/// import com.pulumi.azurenative.compute.DiskArgs;
/// import com.pulumi.azurenative.compute.inputs.CreationDataArgs;
/// import com.pulumi.azurenative.compute.inputs.DiskSkuArgs;
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
///         var disk = new Disk("disk", DiskArgs.builder()
///             .creationData(CreationDataArgs.builder()
///                 .createOption("Empty")
///                 .logicalSectorSize(512)
///                 .build())
///             .diskName("myDisk")
///             .diskSizeGB(200)
///             .location("West US")
///             .resourceGroupName("myResourceGroup")
///             .sku(DiskSkuArgs.builder()
///                 .name("UltraSSD_LRS")
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
/// const disk = new azure_native.compute.Disk("disk", {
///     creationData: {
///         createOption: azure_native.compute.DiskCreateOption.Empty,
///         logicalSectorSize: 512,
///     },
///     diskName: "myDisk",
///     diskSizeGB: 200,
///     location: "West US",
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: azure_native.compute.DiskStorageAccountTypes.UltraSSD_LRS,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disk = azure_native.compute.Disk("disk",
///     creation_data={
///         "create_option": azure_native.compute.DiskCreateOption.EMPTY,
///         "logical_sector_size": 512,
///     },
///     disk_name="myDisk",
///     disk_size_gb=200,
///     location="West US",
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": azure_native.compute.DiskStorageAccountTypes.ULTRA_SS_D_LRS,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   disk:
///     type: azure-native:compute:Disk
///     properties:
///       creationData:
///         createOption: Empty
///         logicalSectorSize: 512
///       diskName: myDisk
///       diskSizeGB: 200
///       location: West US
///       resourceGroupName: myResourceGroup
///       sku:
///         name: UltraSSD_LRS
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
/// $ pulumi import azure-native:compute:Disk myDisk /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/disks/{diskName}
/// ```
class Disk extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Set to true to enable bursting beyond the provisioned performance target of the disk. Bursting is disabled by default. Does not apply to Ultra disks.
  late final pulumi.Output<bool?> burstingEnabled;

  /// Latest time when bursting was last enabled on a disk.
  late final pulumi.Output<String> burstingEnabledTime;

  /// Percentage complete for the background copy when a resource is created via the CopyStart operation.
  late final pulumi.Output<double?> completionPercent;

  /// Disk source information. CreationData information cannot be changed after the disk has been created.
  late final pulumi.Output<CreationDataResponse> creationData;

  /// Additional authentication requirements when exporting or uploading to a disk or snapshot.
  late final pulumi.Output<String?> dataAccessAuthMode;

  /// ARM id of the DiskAccess resource for using private endpoints on disks.
  late final pulumi.Output<String?> diskAccessId;

  /// The total number of IOPS that will be allowed across all VMs mounting the shared disk as ReadOnly. One operation can transfer between 4k and 256k bytes.
  late final pulumi.Output<double?> diskIOPSReadOnly;

  /// The number of IOPS allowed for this disk; only settable for UltraSSD disks. One operation can transfer between 4k and 256k bytes.
  late final pulumi.Output<double?> diskIOPSReadWrite;

  /// The total throughput (MBps) that will be allowed across all VMs mounting the shared disk as ReadOnly. MBps means millions of bytes per second - MB here uses the ISO notation, of powers of 10.
  late final pulumi.Output<double?> diskMBpsReadOnly;

  /// The bandwidth allowed for this disk; only settable for UltraSSD disks. MBps means millions of bytes per second - MB here uses the ISO notation, of powers of 10.
  late final pulumi.Output<double?> diskMBpsReadWrite;

  /// The size of the disk in bytes. This field is read only.
  late final pulumi.Output<double> diskSizeBytes;

  /// If creationData.createOption is Empty, this field is mandatory and it indicates the size of the disk to create. If this field is present for updates or creation with other options, it indicates a resize. Resizes are only allowed if the disk is not attached to a running VM, and can only increase the disk's size.
  late final pulumi.Output<int?> diskSizeGB;

  /// The state of the disk.
  late final pulumi.Output<String> diskState;

  /// Encryption property can be used to encrypt data at rest with customer managed keys or platform managed keys.
  late final pulumi.Output<EncryptionResponse?> encryption;

  /// Encryption settings collection used for Azure Disk Encryption, can contain multiple encryption settings per disk or snapshot.
  late final pulumi.Output<EncryptionSettingsCollectionResponse?>
  encryptionSettingsCollection;

  /// The extended location where the disk will be created. Extended location cannot be changed.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
  late final pulumi.Output<String?> hyperVGeneration;

  /// The UTC time when the ownership state of the disk was last changed i.e., the time the disk was last attached or detached from a VM or the time when the VM to which the disk was attached was deallocated or started.
  late final pulumi.Output<String> lastOwnershipUpdateTime;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// A relative URI containing the ID of the VM that has the disk attached.
  late final pulumi.Output<String> managedBy;

  /// List of relative URIs containing the IDs of the VMs that have the disk attached. maxShares should be set to a value greater than one for disks to allow attaching them to multiple VMs.
  late final pulumi.Output<List<String>> managedByExtended;

  /// The maximum number of VMs that can attach to the disk at the same time. Value greater than one indicates a disk that can be mounted on multiple VMs at the same time.
  late final pulumi.Output<int?> maxShares;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Policy for accessing the disk via network.
  late final pulumi.Output<String?> networkAccessPolicy;

  /// Setting this property to true improves reliability and performance of data disks that are frequently (more than 5 times a day) by detached from one virtual machine and attached to another. This property should not be set for disks that are not detached and attached frequently as it causes the disks to not align with the fault domain of the virtual machine.
  late final pulumi.Output<bool?> optimizedForFrequentAttach;

  /// The Operating System type.
  late final pulumi.Output<String?> osType;

  /// Properties of the disk for which update is pending.
  late final pulumi.Output<PropertyUpdatesInProgressResponse>
  propertyUpdatesInProgress;

  /// The disk provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// Policy for controlling export on the disk.
  late final pulumi.Output<String?> publicNetworkAccess;

  /// Purchase plan information for the the image from which the OS disk was created. E.g. - {name: 2019-Datacenter, publisher: MicrosoftWindowsServer, product: WindowsServer}
  late final pulumi.Output<DiskPurchasePlanResponse?> purchasePlan;

  /// Contains the security related information for the resource.
  late final pulumi.Output<DiskSecurityProfileResponse?> securityProfile;

  /// Details of the list of all VMs that have the disk attached. maxShares should be set to a value greater than one for disks to allow attaching them to multiple VMs.
  late final pulumi.Output<List<Map<String, dynamic>>> shareInfo;

  /// The disks sku name. Can be Standard_LRS, Premium_LRS, StandardSSD_LRS, UltraSSD_LRS, Premium_ZRS, StandardSSD_ZRS, or PremiumV2_LRS.
  late final pulumi.Output<DiskSkuResponse?> sku;

  /// List of supported capabilities for the image from which the OS disk was created.
  late final pulumi.Output<SupportedCapabilitiesResponse?>
  supportedCapabilities;

  /// Indicates the OS on a disk supports hibernation.
  late final pulumi.Output<bool?> supportsHibernation;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Performance tier of the disk (e.g, P4, S10) as described here: https://azure.microsoft.com/en-us/pricing/details/managed-disks/. Does not apply to Ultra disks.
  late final pulumi.Output<String?> tier;

  /// The time when the disk was created.
  late final pulumi.Output<String> timeCreated;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Unique Guid identifying the resource.
  late final pulumi.Output<String> uniqueId;

  /// The Logical zone list for Disk.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [Disk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Disk]. {@macro pulumi_compute_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Disk(String name, {DiskArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:compute:Disk',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    burstingEnabled = registerOutput<bool?>('burstingEnabled');
    burstingEnabledTime = registerOutput<String>('burstingEnabledTime');
    completionPercent = registerOutput<double?>('completionPercent');
    creationData = registerOutput<CreationDataResponse>('creationData');
    dataAccessAuthMode = registerOutput<String?>('dataAccessAuthMode');
    diskAccessId = registerOutput<String?>('diskAccessId');
    diskIOPSReadOnly = registerOutput<double?>('diskIOPSReadOnly');
    diskIOPSReadWrite = registerOutput<double?>('diskIOPSReadWrite');
    diskMBpsReadOnly = registerOutput<double?>('diskMBpsReadOnly');
    diskMBpsReadWrite = registerOutput<double?>('diskMBpsReadWrite');
    diskSizeBytes = registerOutput<double>('diskSizeBytes');
    diskSizeGB = registerOutput<int?>('diskSizeGB');
    diskState = registerOutput<String>('diskState');
    encryption = registerOutput<EncryptionResponse?>('encryption');
    encryptionSettingsCollection =
        registerOutput<EncryptionSettingsCollectionResponse?>(
          'encryptionSettingsCollection',
        );
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
    );
    hyperVGeneration = registerOutput<String?>('hyperVGeneration');
    lastOwnershipUpdateTime = registerOutput<String>('lastOwnershipUpdateTime');
    location = registerOutput<String>('location');
    managedBy = registerOutput<String>('managedBy');
    managedByExtended = registerOutput<List<String>>('managedByExtended');
    maxShares = registerOutput<int?>('maxShares');
    this.name = registerOutput<String>('name');
    networkAccessPolicy = registerOutput<String?>('networkAccessPolicy');
    optimizedForFrequentAttach = registerOutput<bool?>(
      'optimizedForFrequentAttach',
    );
    osType = registerOutput<String?>('osType');
    propertyUpdatesInProgress =
        registerOutput<PropertyUpdatesInProgressResponse>(
          'propertyUpdatesInProgress',
        );
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    purchasePlan = registerOutput<DiskPurchasePlanResponse?>('purchasePlan');
    securityProfile = registerOutput<DiskSecurityProfileResponse?>(
      'securityProfile',
    );
    shareInfo = registerOutput<List<Map<String, dynamic>>>('shareInfo');
    sku = registerOutput<DiskSkuResponse?>('sku');
    supportedCapabilities = registerOutput<SupportedCapabilitiesResponse?>(
      'supportedCapabilities',
    );
    supportsHibernation = registerOutput<bool?>('supportsHibernation');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    tier = registerOutput<String?>('tier');
    timeCreated = registerOutput<String>('timeCreated');
    type = registerOutput<String>('type');
    uniqueId = registerOutput<String>('uniqueId');
    zones = registerOutput<List<String>?>('zones');
  }
}
