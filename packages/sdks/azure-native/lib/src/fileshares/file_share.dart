import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_args.dart';
import 'file_share_properties_response.dart';
import 'system_data_response.dart';

/// File share resource
///
/// Uses Azure REST API version 2025-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### FileShares_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fileShare = new AzureNative.FileShares.FileShare("fileShare", new()
///     {
///         Location = "gdsuixfhrgfbbbfjtgocmlzyuonrr",
///         Properties = new AzureNative.FileShares.Inputs.FileSharePropertiesArgs
///         {
///             MediaTier = AzureNative.FileShares.MediaTier.SSD,
///             MountName = "fileshare",
///             NfsProtocolProperties = new AzureNative.FileShares.Inputs.NfsProtocolPropertiesArgs
///             {
///                 RootSquash = AzureNative.FileShares.ShareRootSquash.NoRootSquash,
///             },
///             Protocol = AzureNative.FileShares.Protocol.NFS,
///             ProvisionedIOPerSec = 5,
///             ProvisionedStorageGiB = 8,
///             ProvisionedThroughputMiBPerSec = 22,
///             PublicAccessProperties = new AzureNative.FileShares.Inputs.PublicAccessPropertiesArgs
///             {
///                 AllowedSubnets = new[]
///                 {
///                     "/subscriptions/9760acf5-4638-11e7-9bdb-020073ca7778/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 },
///             },
///             PublicNetworkAccess = AzureNative.FileShares.PublicNetworkAccess.Enabled,
///             Redundancy = AzureNative.FileShares.Redundancy.Local,
///         },
///         ResourceGroupName = "rgfileshares",
///         ResourceName = "fileshare",
///         Tags =
///         {
///             { "key9647", "xwokdvyoae" },
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
/// 	fileshares "github.com/pulumi/pulumi-azure-native-sdk/fileshares/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fileshares.NewFileShare(ctx, "fileShare", &fileshares.FileShareArgs{
/// 			Location: pulumi.String("gdsuixfhrgfbbbfjtgocmlzyuonrr"),
/// 			Properties: &fileshares.FileSharePropertiesArgs{
/// 				MediaTier: pulumi.String(fileshares.MediaTierSSD),
/// 				MountName: pulumi.String("fileshare"),
/// 				NfsProtocolProperties: &fileshares.NfsProtocolPropertiesArgs{
/// 					RootSquash: pulumi.String(fileshares.ShareRootSquashNoRootSquash),
/// 				},
/// 				Protocol:                       pulumi.String(fileshares.ProtocolNFS),
/// 				ProvisionedIOPerSec:            pulumi.Int(5),
/// 				ProvisionedStorageGiB:          pulumi.Int(8),
/// 				ProvisionedThroughputMiBPerSec: pulumi.Int(22),
/// 				PublicAccessProperties: &fileshares.PublicAccessPropertiesArgs{
/// 					AllowedSubnets: pulumi.StringArray{
/// 						pulumi.String("/subscriptions/9760acf5-4638-11e7-9bdb-020073ca7778/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					},
/// 				},
/// 				PublicNetworkAccess: pulumi.String(fileshares.PublicNetworkAccessEnabled),
/// 				Redundancy:          pulumi.String(fileshares.RedundancyLocal),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgfileshares"),
/// 			ResourceName:      pulumi.String("fileshare"),
/// 			Tags: pulumi.StringMap{
/// 				"key9647": pulumi.String("xwokdvyoae"),
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
/// import com.pulumi.azurenative.fileshares.FileShare;
/// import com.pulumi.azurenative.fileshares.FileShareArgs;
/// import com.pulumi.azurenative.fileshares.inputs.FileSharePropertiesArgs;
/// import com.pulumi.azurenative.fileshares.inputs.NfsProtocolPropertiesArgs;
/// import com.pulumi.azurenative.fileshares.inputs.PublicAccessPropertiesArgs;
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
///         var fileShare = new FileShare("fileShare", FileShareArgs.builder()
///             .location("gdsuixfhrgfbbbfjtgocmlzyuonrr")
///             .properties(FileSharePropertiesArgs.builder()
///                 .mediaTier("SSD")
///                 .mountName("fileshare")
///                 .nfsProtocolProperties(NfsProtocolPropertiesArgs.builder()
///                     .rootSquash("NoRootSquash")
///                     .build())
///                 .protocol("NFS")
///                 .provisionedIOPerSec(5)
///                 .provisionedStorageGiB(8)
///                 .provisionedThroughputMiBPerSec(22)
///                 .publicAccessProperties(PublicAccessPropertiesArgs.builder()
///                     .allowedSubnets("/subscriptions/9760acf5-4638-11e7-9bdb-020073ca7778/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .build())
///                 .publicNetworkAccess("Enabled")
///                 .redundancy("Local")
///                 .build())
///             .resourceGroupName("rgfileshares")
///             .resourceName("fileshare")
///             .tags(Map.of("key9647", "xwokdvyoae"))
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
/// const fileShare = new azure_native.fileshares.FileShare("fileShare", {
///     location: "gdsuixfhrgfbbbfjtgocmlzyuonrr",
///     properties: {
///         mediaTier: azure_native.fileshares.MediaTier.SSD,
///         mountName: "fileshare",
///         nfsProtocolProperties: {
///             rootSquash: azure_native.fileshares.ShareRootSquash.NoRootSquash,
///         },
///         protocol: azure_native.fileshares.Protocol.NFS,
///         provisionedIOPerSec: 5,
///         provisionedStorageGiB: 8,
///         provisionedThroughputMiBPerSec: 22,
///         publicAccessProperties: {
///             allowedSubnets: ["/subscriptions/9760acf5-4638-11e7-9bdb-020073ca7778/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"],
///         },
///         publicNetworkAccess: azure_native.fileshares.PublicNetworkAccess.Enabled,
///         redundancy: azure_native.fileshares.Redundancy.Local,
///     },
///     resourceGroupName: "rgfileshares",
///     resourceName: "fileshare",
///     tags: {
///         key9647: "xwokdvyoae",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// file_share = azure_native.fileshares.FileShare("fileShare",
///     location="gdsuixfhrgfbbbfjtgocmlzyuonrr",
///     properties={
///         "media_tier": azure_native.fileshares.MediaTier.SSD,
///         "mount_name": "fileshare",
///         "nfs_protocol_properties": {
///             "root_squash": azure_native.fileshares.ShareRootSquash.NO_ROOT_SQUASH,
///         },
///         "protocol": azure_native.fileshares.Protocol.NFS,
///         "provisioned_io_per_sec": 5,
///         "provisioned_storage_gi_b": 8,
///         "provisioned_throughput_mi_b_per_sec": 22,
///         "public_access_properties": {
///             "allowed_subnets": ["/subscriptions/9760acf5-4638-11e7-9bdb-020073ca7778/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"],
///         },
///         "public_network_access": azure_native.fileshares.PublicNetworkAccess.ENABLED,
///         "redundancy": azure_native.fileshares.Redundancy.LOCAL,
///     },
///     resource_group_name="rgfileshares",
///     resource_name_="fileshare",
///     tags={
///         "key9647": "xwokdvyoae",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   fileShare:
///     type: azure-native:fileshares:FileShare
///     properties:
///       location: gdsuixfhrgfbbbfjtgocmlzyuonrr
///       properties:
///         mediaTier: SSD
///         mountName: fileshare
///         nfsProtocolProperties:
///           rootSquash: NoRootSquash
///         protocol: NFS
///         provisionedIOPerSec: 5
///         provisionedStorageGiB: 8
///         provisionedThroughputMiBPerSec: 22
///         publicAccessProperties:
///           allowedSubnets:
///             - /subscriptions/9760acf5-4638-11e7-9bdb-020073ca7778/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///         publicNetworkAccess: Enabled
///         redundancy: Local
///       resourceGroupName: rgfileshares
///       resourceName: fileshare
///       tags:
///         key9647: xwokdvyoae
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
/// $ pulumi import azure-native:fileshares:FileShare fileshare /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.FileShares/fileShares/{resourceName}
/// ```
class FileShare extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<FileSharePropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FileShare].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FileShare]. {@macro pulumi_fileshares_file_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FileShare(
    String name, {
    FileShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:fileshares:FileShare',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<FileSharePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FileSharePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
