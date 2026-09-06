import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_pool_volume_args.dart';
import 'mount_target_properties_response.dart';
import 'placement_key_value_pairs_response.dart';
import 'system_data_response.dart';
import 'volume_properties_response_data_protection.dart';
import 'volume_properties_response_export_policy.dart';

/// Volume resource
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview, 2025-12-01, 2025-12-15-preview, 2026-01-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-04-01, 2026-04-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Volumes_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var capacityPoolVolume = new AzureNative.NetApp.CapacityPoolVolume("capacityPoolVolume", new()
///     {
///         AccountName = "account1",
///         CreationToken = "my-unique-file-path",
///         Location = "eastus",
///         PoolName = "pool1",
///         ResourceGroupName = "myRG",
///         ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///         SubnetId = "/subscriptions/9760acf5-4638-11e7-9bdb-020073ca7778/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///         UsageThreshold = 107374182400,
///         VolumeName = "volume1",
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
/// 	netapp "github.com/pulumi/pulumi-azure-native-sdk/netapp/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewCapacityPoolVolume(ctx, "capacityPoolVolume", &netapp.CapacityPoolVolumeArgs{
/// 			AccountName:       pulumi.String("account1"),
/// 			CreationToken:     pulumi.String("my-unique-file-path"),
/// 			Location:          pulumi.String("eastus"),
/// 			PoolName:          pulumi.String("pool1"),
/// 			ResourceGroupName: pulumi.String("myRG"),
/// 			ServiceLevel:      pulumi.String(netapp.ServiceLevelPremium),
/// 			SubnetId:          pulumi.String("/subscriptions/9760acf5-4638-11e7-9bdb-020073ca7778/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 			UsageThreshold:    pulumi.Float64(107374182400),
/// 			VolumeName:        pulumi.String("volume1"),
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
/// resource "azure-native_netapp_capacitypoolvolume" "capacityPoolVolume" {
///   account_name        = "account1"
///   creation_token      = "my-unique-file-path"
///   location            = "eastus"
///   pool_name           = "pool1"
///   resource_group_name = "myRG"
///   service_level       = "Premium"
///   subnet_id           = "/subscriptions/9760acf5-4638-11e7-9bdb-020073ca7778/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"
///   usage_threshold     = 107374182400
///   volume_name         = "volume1"
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
/// import com.pulumi.azurenative.netapp.CapacityPoolVolume;
/// import com.pulumi.azurenative.netapp.CapacityPoolVolumeArgs;
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
///         var capacityPoolVolume = new CapacityPoolVolume("capacityPoolVolume", CapacityPoolVolumeArgs.builder()
///             .accountName("account1")
///             .creationToken("my-unique-file-path")
///             .location("eastus")
///             .poolName("pool1")
///             .resourceGroupName("myRG")
///             .serviceLevel("Premium")
///             .subnetId("/subscriptions/9760acf5-4638-11e7-9bdb-020073ca7778/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///             .usageThreshold(107374182400.0)
///             .volumeName("volume1")
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
/// const capacityPoolVolume = new azure_native.netapp.CapacityPoolVolume("capacityPoolVolume", {
///     accountName: "account1",
///     creationToken: "my-unique-file-path",
///     location: "eastus",
///     poolName: "pool1",
///     resourceGroupName: "myRG",
///     serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///     subnetId: "/subscriptions/9760acf5-4638-11e7-9bdb-020073ca7778/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///     usageThreshold: 107374182400,
///     volumeName: "volume1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// capacity_pool_volume = azure_native.netapp.CapacityPoolVolume("capacityPoolVolume",
///     account_name="account1",
///     creation_token="my-unique-file-path",
///     location="eastus",
///     pool_name="pool1",
///     resource_group_name="myRG",
///     service_level=azure_native.netapp.ServiceLevel.PREMIUM,
///     subnet_id="/subscriptions/9760acf5-4638-11e7-9bdb-020073ca7778/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///     usage_threshold=107374182400,
///     volume_name="volume1")
///
/// ```
///
/// ```yaml
/// resources:
///   capacityPoolVolume:
///     type: azure-native:netapp:CapacityPoolVolume
///     properties:
///       accountName: account1
///       creationToken: my-unique-file-path
///       location: eastus
///       poolName: pool1
///       resourceGroupName: myRG
///       serviceLevel: Premium
///       subnetId: /subscriptions/9760acf5-4638-11e7-9bdb-020073ca7778/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///       usageThreshold: 1.073741824e+11
///       volumeName: volume1
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
/// $ pulumi import azure-native:netapp:CapacityPoolVolume account1/pool1/volume1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/capacityPools/{poolName}/volumes/{volumeName}
/// ```
class CapacityPoolVolume extends pulumi.CustomResource {
  /// Actual throughput in MiB/s for auto qosType volumes calculated based on size and serviceLevel
  late final pulumi.Output<double> actualThroughputMibps;
  /// Specifies whether the volume is enabled for Azure VMware Solution (AVS) datastore purpose
  late final pulumi.Output<String?> avsDataStore;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource identifier used to identify the Backup.
  late final pulumi.Output<String?> backupId;
  /// Unique Baremetal Tenant Identifier.
  late final pulumi.Output<String> baremetalTenantId;
  /// Pool Resource Id used in case of creating a volume through volume group
  late final pulumi.Output<String?> capacityPoolResourceId;
  /// When a volume is being restored from another volume's snapshot, will show the percentage completion of this cloning process. When this value is empty/null there is no cloning process currently happening on this volume. This value will update every 5 minutes during cloning.
  late final pulumi.Output<int> cloneProgress;
  /// Specifies whether Cool Access(tiering) is enabled for the volume.
  late final pulumi.Output<bool?> coolAccess;
  /// coolAccessRetrievalPolicy determines the data retrieval behavior from the cool tier to standard storage based on the read pattern for cool access enabled volumes. The possible values for this field are:
  /// Default - Data will be pulled from cool tier to standard storage on random reads. This policy is the default.
  /// OnRead - All client-driven data read is pulled from cool tier to standard storage on both sequential and random reads.
  /// Never - No client-driven data is pulled from cool tier to standard storage.
  late final pulumi.Output<String?> coolAccessRetrievalPolicy;
  /// coolAccessTieringPolicy determines which cold data blocks are moved to cool tier. The possible values for this field are: Auto - Moves cold user data blocks in both the Snapshot copies and the active file system to the cool tier tier. This policy is the default. SnapshotOnly - Moves user data blocks of the Volume Snapshot copies that are not associated with the active file system to the cool tier.
  late final pulumi.Output<String?> coolAccessTieringPolicy;
  /// Specifies the number of days after which data that is not accessed by clients will be tiered.
  late final pulumi.Output<int?> coolnessPeriod;
  /// A unique file path for the volume. Used when creating mount targets
  late final pulumi.Output<String> creationToken;
  /// DataProtection type volumes include an object containing details of the replication
  late final pulumi.Output<VolumePropertiesResponseDataProtection?> dataProtection;
  /// Data store resource unique identifier
  late final pulumi.Output<List<String>> dataStoreResourceId;
  /// Default group quota for volume in KiBs. If isDefaultQuotaEnabled is set, the minimum value of 4 KiBs applies.
  late final pulumi.Output<double?> defaultGroupQuotaInKiBs;
  /// Default user quota for volume in KiBs. If isDefaultQuotaEnabled is set, the minimum value of 4 KiBs applies .
  late final pulumi.Output<double?> defaultUserQuotaInKiBs;
  /// If enabled (true) the snapshot the volume was created from will be automatically deleted after the volume create operation has finished.  Defaults to false
  late final pulumi.Output<bool?> deleteBaseSnapshot;
  /// The effective value of the network features type available to the volume, or current effective state of update.
  late final pulumi.Output<String> effectiveNetworkFeatures;
  /// Flag indicating whether subvolume operations are enabled on the volume
  late final pulumi.Output<String?> enableSubvolumes;
  /// Specifies if the volume is encrypted or not. Only available on volumes created or updated after 2022-01-01.
  late final pulumi.Output<bool> encrypted;
  /// Source of key used to encrypt data in volume. Applicable if NetApp account has encryption.keySource = 'Microsoft.KeyVault'. Possible values (case-insensitive) are: 'Microsoft.NetApp, Microsoft.KeyVault'
  late final pulumi.Output<String?> encryptionKeySource;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Set of export policy rules
  late final pulumi.Output<VolumePropertiesResponseExportPolicy?> exportPolicy;
  /// Flag indicating whether file access logs are enabled for the volume, based on active diagnostic settings present on the volume.
  late final pulumi.Output<String> fileAccessLogs;
  /// Unique FileSystem Identifier.
  late final pulumi.Output<String> fileSystemId;
  /// Specifies if default quota is enabled for the volume.
  late final pulumi.Output<bool?> isDefaultQuotaEnabled;
  /// Specifies whether volume is a Large Volume or Regular Volume.
  late final pulumi.Output<bool?> isLargeVolume;
  /// Restoring
  late final pulumi.Output<bool?> isRestoring;
  /// Describe if a volume is KerberosEnabled. To be use with swagger version 2020-05-01 or later
  late final pulumi.Output<bool?> kerberosEnabled;
  /// The resource ID of private endpoint for KeyVault. It must reside in the same VNET as the volume. Only applicable if encryptionKeySource = 'Microsoft.KeyVault'.
  late final pulumi.Output<String?> keyVaultPrivateEndpointResourceId;
  /// Specifies whether LDAP is enabled or not for a given NFS volume.
  late final pulumi.Output<bool?> ldapEnabled;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Maximum number of files allowed. Needs a service request in order to be changed. Only allowed to be changed if volume quota is more than 4TiB.
  late final pulumi.Output<double> maximumNumberOfFiles;
  /// List of mount targets
  late final pulumi.Output<List<MountTargetPropertiesResponse>> mountTargets;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The original value of the network features type available to the volume at the time it was created.
  late final pulumi.Output<String?> networkFeatures;
  /// Network Sibling Set ID for the the group of volumes sharing networking resources.
  late final pulumi.Output<String> networkSiblingSetId;
  /// Id of the snapshot or backup that the volume is restored from.
  late final pulumi.Output<String> originatingResourceId;
  /// Application specific placement rules for the particular volume
  late final pulumi.Output<List<PlacementKeyValuePairsResponse>?> placementRules;
  /// Set of protocol types, default NFSv3, CIFS for SMB protocol
  late final pulumi.Output<List<String>?> protocolTypes;
  /// The availability zone where the volume is provisioned. This refers to the logical availability zone where the volume resides.
  late final pulumi.Output<String> provisionedAvailabilityZone;
  /// Azure lifecycle management
  late final pulumi.Output<String> provisioningState;
  /// Proximity placement group associated with the volume
  late final pulumi.Output<String?> proximityPlacementGroup;
  /// The security style of volume, default unix, defaults to ntfs for dual protocol or CIFS protocol
  late final pulumi.Output<String?> securityStyle;
  /// The service level of the file system
  late final pulumi.Output<String?> serviceLevel;
  /// Enables access-based enumeration share property for SMB Shares. Only applicable for SMB/DualProtocol volume
  late final pulumi.Output<String?> smbAccessBasedEnumeration;
  /// Enables continuously available share property for smb volume. Only applicable for SMB volume
  late final pulumi.Output<bool?> smbContinuouslyAvailable;
  /// Enables encryption for in-flight smb3 data. Only applicable for SMB/DualProtocol volume. To be used with swagger version 2020-08-01 or later
  late final pulumi.Output<bool?> smbEncryption;
  /// Enables non-browsable property for SMB Shares. Only applicable for SMB/DualProtocol volume
  late final pulumi.Output<String?> smbNonBrowsable;
  /// If enabled (true) the volume will contain a read-only snapshot directory which provides access to each of the volume's snapshots (defaults to true).
  late final pulumi.Output<bool?> snapshotDirectoryVisible;
  /// Resource identifier used to identify the Snapshot.
  late final pulumi.Output<String?> snapshotId;
  /// Provides storage to network proximity information for the volume.
  late final pulumi.Output<String> storageToNetworkProximity;
  /// The Azure Resource URI for a delegated subnet. Must have the delegation Microsoft.NetApp/volumes
  late final pulumi.Output<String> subnetId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// T2 network information
  late final pulumi.Output<String> t2Network;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<double?> throughputMibps;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// UNIX permissions for NFS volume accepted in octal 4 digit format. First digit selects the set user ID(4), set group ID (2) and sticky (1) attributes. Second digit selects permission for the owner of the file: read (4), write (2) and execute (1). Third selects permissions for other users in the same group. the fourth for other users not in the group. 0755 - gives read/write/execute permissions to owner and read/execute to group and other users.
  late final pulumi.Output<String?> unixPermissions;
  /// Maximum storage quota allowed for a file system in bytes. This is a soft quota used for alerting only. For regular volumes, valid values are in the range 50GiB to 100TiB. For large volumes, valid values are in the range 100TiB to 500TiB, and on an exceptional basis, from to 2400GiB to 2400TiB. Values expressed in bytes as multiples of 1 GiB.
  late final pulumi.Output<double> usageThreshold;
  /// Volume Group Name
  late final pulumi.Output<String> volumeGroupName;
  /// Volume spec name is the application specific designation or identifier for the particular volume in a volume group for e.g. data, log
  late final pulumi.Output<String?> volumeSpecName;
  /// What type of volume is this. For destination volumes in Cross Region Replication, set type to DataProtection
  late final pulumi.Output<String?> volumeType;
  /// Availability Zone
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [CapacityPoolVolume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityPoolVolume]. {@macro pulumi_netapp_capacity_pool_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityPoolVolume(
    String name, {
    CapacityPoolVolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:CapacityPoolVolume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actualThroughputMibps = registerOutput<double>('actualThroughputMibps');
    avsDataStore = registerOutput<String?>('avsDataStore');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backupId = registerOutput<String?>('backupId');
    baremetalTenantId = registerOutput<String>('baremetalTenantId');
    capacityPoolResourceId = registerOutput<String?>('capacityPoolResourceId');
    cloneProgress = registerOutput<int>('cloneProgress');
    coolAccess = registerOutput<bool?>('coolAccess');
    coolAccessRetrievalPolicy = registerOutput<String?>('coolAccessRetrievalPolicy');
    coolAccessTieringPolicy = registerOutput<String?>('coolAccessTieringPolicy');
    coolnessPeriod = registerOutput<int?>('coolnessPeriod');
    creationToken = registerOutput<String>('creationToken');
    dataProtection = registerOutput<VolumePropertiesResponseDataProtection?>('dataProtection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumePropertiesResponseDataProtection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataStoreResourceId = registerOutput<List<String>>('dataStoreResourceId', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    defaultGroupQuotaInKiBs = registerOutput<double?>('defaultGroupQuotaInKiBs');
    defaultUserQuotaInKiBs = registerOutput<double?>('defaultUserQuotaInKiBs');
    deleteBaseSnapshot = registerOutput<bool?>('deleteBaseSnapshot');
    effectiveNetworkFeatures = registerOutput<String>('effectiveNetworkFeatures');
    enableSubvolumes = registerOutput<String?>('enableSubvolumes');
    encrypted = registerOutput<bool>('encrypted');
    encryptionKeySource = registerOutput<String?>('encryptionKeySource');
    etag = registerOutput<String>('etag');
    exportPolicy = registerOutput<VolumePropertiesResponseExportPolicy?>('exportPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumePropertiesResponseExportPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fileAccessLogs = registerOutput<String>('fileAccessLogs');
    fileSystemId = registerOutput<String>('fileSystemId');
    isDefaultQuotaEnabled = registerOutput<bool?>('isDefaultQuotaEnabled');
    isLargeVolume = registerOutput<bool?>('isLargeVolume');
    isRestoring = registerOutput<bool?>('isRestoring');
    kerberosEnabled = registerOutput<bool?>('kerberosEnabled');
    keyVaultPrivateEndpointResourceId = registerOutput<String?>('keyVaultPrivateEndpointResourceId');
    ldapEnabled = registerOutput<bool?>('ldapEnabled');
    location = registerOutput<String>('location');
    maximumNumberOfFiles = registerOutput<double>('maximumNumberOfFiles');
    mountTargets = registerOutput<List<MountTargetPropertiesResponse>>('mountTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MountTargetPropertiesResponse>(guardedValue, (value) => MountTargetPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    networkFeatures = registerOutput<String?>('networkFeatures');
    networkSiblingSetId = registerOutput<String>('networkSiblingSetId');
    originatingResourceId = registerOutput<String>('originatingResourceId');
    placementRules = registerOutput<List<PlacementKeyValuePairsResponse>?>('placementRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlacementKeyValuePairsResponse>(guardedValue, (value) => PlacementKeyValuePairsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    protocolTypes = registerOutput<List<String>?>('protocolTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    provisionedAvailabilityZone = registerOutput<String>('provisionedAvailabilityZone');
    provisioningState = registerOutput<String>('provisioningState');
    proximityPlacementGroup = registerOutput<String?>('proximityPlacementGroup');
    securityStyle = registerOutput<String?>('securityStyle');
    serviceLevel = registerOutput<String?>('serviceLevel');
    smbAccessBasedEnumeration = registerOutput<String?>('smbAccessBasedEnumeration');
    smbContinuouslyAvailable = registerOutput<bool?>('smbContinuouslyAvailable');
    smbEncryption = registerOutput<bool?>('smbEncryption');
    smbNonBrowsable = registerOutput<String?>('smbNonBrowsable');
    snapshotDirectoryVisible = registerOutput<bool?>('snapshotDirectoryVisible');
    snapshotId = registerOutput<String?>('snapshotId');
    storageToNetworkProximity = registerOutput<String>('storageToNetworkProximity');
    subnetId = registerOutput<String>('subnetId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    t2Network = registerOutput<String>('t2Network');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    throughputMibps = registerOutput<double?>('throughputMibps');
    type = registerOutput<String>('type');
    unixPermissions = registerOutput<String?>('unixPermissions');
    usageThreshold = registerOutput<double>('usageThreshold');
    volumeGroupName = registerOutput<String>('volumeGroupName');
    volumeSpecName = registerOutput<String?>('volumeSpecName');
    volumeType = registerOutput<String?>('volumeType');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [CapacityPoolVolume] resource.
  CapacityPoolVolume.reference(String urn)
    : super(
        'azure-native:netapp:CapacityPoolVolume',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actualThroughputMibps = registerOutput<double>('actualThroughputMibps');
    avsDataStore = registerOutput<String?>('avsDataStore');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backupId = registerOutput<String?>('backupId');
    baremetalTenantId = registerOutput<String>('baremetalTenantId');
    capacityPoolResourceId = registerOutput<String?>('capacityPoolResourceId');
    cloneProgress = registerOutput<int>('cloneProgress');
    coolAccess = registerOutput<bool?>('coolAccess');
    coolAccessRetrievalPolicy = registerOutput<String?>('coolAccessRetrievalPolicy');
    coolAccessTieringPolicy = registerOutput<String?>('coolAccessTieringPolicy');
    coolnessPeriod = registerOutput<int?>('coolnessPeriod');
    creationToken = registerOutput<String>('creationToken');
    dataProtection = registerOutput<VolumePropertiesResponseDataProtection?>('dataProtection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumePropertiesResponseDataProtection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataStoreResourceId = registerOutput<List<String>>('dataStoreResourceId', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    defaultGroupQuotaInKiBs = registerOutput<double?>('defaultGroupQuotaInKiBs');
    defaultUserQuotaInKiBs = registerOutput<double?>('defaultUserQuotaInKiBs');
    deleteBaseSnapshot = registerOutput<bool?>('deleteBaseSnapshot');
    effectiveNetworkFeatures = registerOutput<String>('effectiveNetworkFeatures');
    enableSubvolumes = registerOutput<String?>('enableSubvolumes');
    encrypted = registerOutput<bool>('encrypted');
    encryptionKeySource = registerOutput<String?>('encryptionKeySource');
    etag = registerOutput<String>('etag');
    exportPolicy = registerOutput<VolumePropertiesResponseExportPolicy?>('exportPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumePropertiesResponseExportPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fileAccessLogs = registerOutput<String>('fileAccessLogs');
    fileSystemId = registerOutput<String>('fileSystemId');
    isDefaultQuotaEnabled = registerOutput<bool?>('isDefaultQuotaEnabled');
    isLargeVolume = registerOutput<bool?>('isLargeVolume');
    isRestoring = registerOutput<bool?>('isRestoring');
    kerberosEnabled = registerOutput<bool?>('kerberosEnabled');
    keyVaultPrivateEndpointResourceId = registerOutput<String?>('keyVaultPrivateEndpointResourceId');
    ldapEnabled = registerOutput<bool?>('ldapEnabled');
    location = registerOutput<String>('location');
    maximumNumberOfFiles = registerOutput<double>('maximumNumberOfFiles');
    mountTargets = registerOutput<List<MountTargetPropertiesResponse>>('mountTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MountTargetPropertiesResponse>(guardedValue, (value) => MountTargetPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    networkFeatures = registerOutput<String?>('networkFeatures');
    networkSiblingSetId = registerOutput<String>('networkSiblingSetId');
    originatingResourceId = registerOutput<String>('originatingResourceId');
    placementRules = registerOutput<List<PlacementKeyValuePairsResponse>?>('placementRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PlacementKeyValuePairsResponse>(guardedValue, (value) => PlacementKeyValuePairsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    protocolTypes = registerOutput<List<String>?>('protocolTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    provisionedAvailabilityZone = registerOutput<String>('provisionedAvailabilityZone');
    provisioningState = registerOutput<String>('provisioningState');
    proximityPlacementGroup = registerOutput<String?>('proximityPlacementGroup');
    securityStyle = registerOutput<String?>('securityStyle');
    serviceLevel = registerOutput<String?>('serviceLevel');
    smbAccessBasedEnumeration = registerOutput<String?>('smbAccessBasedEnumeration');
    smbContinuouslyAvailable = registerOutput<bool?>('smbContinuouslyAvailable');
    smbEncryption = registerOutput<bool?>('smbEncryption');
    smbNonBrowsable = registerOutput<String?>('smbNonBrowsable');
    snapshotDirectoryVisible = registerOutput<bool?>('snapshotDirectoryVisible');
    snapshotId = registerOutput<String?>('snapshotId');
    storageToNetworkProximity = registerOutput<String>('storageToNetworkProximity');
    subnetId = registerOutput<String>('subnetId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    t2Network = registerOutput<String>('t2Network');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    throughputMibps = registerOutput<double?>('throughputMibps');
    type = registerOutput<String>('type');
    unixPermissions = registerOutput<String?>('unixPermissions');
    usageThreshold = registerOutput<double>('usageThreshold');
    volumeGroupName = registerOutput<String>('volumeGroupName');
    volumeSpecName = registerOutput<String?>('volumeSpecName');
    volumeType = registerOutput<String?>('volumeType');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
