import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_args.dart';
import 'volume_cool_access.dart';
import 'volume_data_protection_backup_policy.dart';
import 'volume_data_protection_replication.dart';
import 'volume_data_protection_snapshot_policy.dart';
import 'volume_export_policy_rule.dart';

/// Manages a NetApp Volume.
///
/// !> **Note:** This resource uses a feature to prevent deletion called `prevent_volume_destruction`, defaulting to `true`. It is intentionally set to `true` to prevent the possibility of accidental data loss. The example in this page shows all possible protection options you can apply, it is using same values as the defaults.
///
/// ## Import
///
/// NetApp Volumes can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:netapp/volume:Volume example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1/volumes/volume1
/// ```
class Volume extends pulumi.CustomResource {
  /// While auto splitting the short term clone volume, if the parent pool does not have enough space to accommodate the volume after split, it will be automatically resized, which will lead to increased billing. To accept capacity pool size auto grow and create a short term clone volume, set the property as `Accepted`. If `Declined`, the short term clone volume creation operation will fail. This property can only be used in conjunction with `create_from_snapshot_resource_id`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Short-term clones are not supported on large volumes or volumes enabled for cool access. Short-term clones automatically convert to regular volumes after 32 days. For more information, please refer to [Create a short-term clone volume in Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/create-short-term-clone)
  late final pulumi.Output<String?> acceptGrowCapacityPoolForShortTermCloneSplit;
  /// The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// Is the NetApp Volume enabled for Azure VMware Solution (AVS) datastore purpose. Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> azureVmwareDataStoreEnabled;
  /// A `cool_access` block as defined below.
  late final pulumi.Output<VolumeCoolAccess?> coolAccess;
  /// Creates volume from snapshot. Following properties must be the same as the original volume where the snapshot was taken from: `protocols`, `subnet_id`, `location`, `service_level`, `resource_group_name` and `account_name`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> createFromSnapshotResourceId;
  /// A `data_protection_backup_policy` block as defined below.
  late final pulumi.Output<VolumeDataProtectionBackupPolicy?> dataProtectionBackupPolicy;
  /// A `data_protection_replication` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<VolumeDataProtectionReplication?> dataProtectionReplication;
  /// A `data_protection_snapshot_policy` block as defined below.
  late final pulumi.Output<VolumeDataProtectionSnapshotPolicy?> dataProtectionSnapshotPolicy;
  /// The encryption key source, it can be `Microsoft.NetApp` for platform managed keys or `Microsoft.KeyVault` for customer-managed keys. This is required with `key_vault_private_endpoint_id`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> encryptionKeySource;
  /// One or more `export_policy_rule` block defined below.
  late final pulumi.Output<List<VolumeExportPolicyRule>?> exportPolicyRules;
  /// Enable to allow Kerberos secured volumes. Requires appropriate export rules. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `kerberos_enabled` requires that the parent `azure.netapp.Account` has a *valid* AD connection defined. If the configuration is invalid, the volume will still be created but in a failed state. This requires manually deleting the volume and recreating it again via Terraform once the AD configuration has been corrected.
  late final pulumi.Output<bool?> kerberosEnabled;
  /// The Private Endpoint ID for Key Vault, which is required when using customer-managed keys. This is required with `encryption_key_source`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> keyVaultPrivateEndpointId;
  /// A boolean specifying if the volume is a large volume. Defaults to `false`.
  ///
  /// > **Note:** Large volumes must be at least 50 TiB in size and can be up to 1,024 TiB (1 PiB). For more information, please refer to [Requirements and considerations for large volumes](https://learn.microsoft.com/en-us/azure/azure-netapp-files/large-volumes-requirements-considerations)
  late final pulumi.Output<bool?> largeVolumeEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A list of IPv4 Addresses which should be used to mount the volume.
  late final pulumi.Output<List<String>> mountIpAddresses;
  /// The name of the NetApp Volume. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Indicates which network feature to use, accepted values are `Basic` or `Standard`, it defaults to `Basic` if not defined. This is a feature in public preview and for more information about it and how to register, please refer to [Configure network features for an Azure NetApp Files volume](https://docs.microsoft.com/en-us/azure/azure-netapp-files/configure-network-features).
  late final pulumi.Output<String> networkFeatures;
  /// The name of the NetApp pool in which the NetApp Volume should be created.
  late final pulumi.Output<String> poolName;
  /// The target volume protocol expressed as a list. Supported single value include `CIFS`, `NFSv3`, or `NFSv4.1`. If argument is not defined it will default to `NFSv3`. Protocol conversion between `NFSv3` and `NFSv4.1` and vice-versa is supported without recreating the volume, however export policy rules must be updated accordingly to avoid configuration drift (e.g., when converting from `NFSv3` to `NFSv4.1`, set `nfsv3_enabled = false` and `nfsv41_enabled = true` in export policy rules). Dual protocol scenario is supported for CIFS and NFSv3, for more information, please refer to [Create a dual-protocol volume for Azure NetApp Files](https://docs.microsoft.com/azure/azure-netapp-files/create-volumes-dual-protocol) document.
  ///
  /// > **Note:** When converting protocols, ensure that export policy rules are updated to match the new protocol to avoid configuration drift. For example, when changing from NFSv3 to NFSv4.1, update the `protocol` field in export policy rules accordingly.
  late final pulumi.Output<List<String>> protocols;
  /// The name of the resource group where the NetApp Volume should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Volume security style, accepted values are `unix` or `ntfs`. If not provided, single-protocol volume is created defaulting to `unix` if it is `NFSv3` or `NFSv4.1` volume, if `CIFS`, it will default to `ntfs`. In a dual-protocol volume, if not provided, its value will be `ntfs`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> securityStyle;
  /// The target performance of the file system. Possible values are `Premium`, `Standard`, `Ultra` and `Flexible`.
  ///
  /// > **Note:** When updating `service_level` by migrating it to another Capacity Pool, both `service_level` and `pool_name` must be changed, otherwise the volume will be recreated with the specified `service_level`.
  ///
  /// > **Note:** After updating `service_level` the `id` for the volume will change to include the new Capacity Pool so any resources referencing the Volume will be silently removed from state. They will still exist in Azure but need to reimported into Terraform.
  late final pulumi.Output<String> serviceLevel;
  /// Enable SMB encryption. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> smb3ProtocolEncryptionEnabled;
  /// Limits enumeration of files and folders (that is, listing the contents) in SMB only to users with allowed access on the share. For instance, if a user doesn't have access to read a file or folder in a share with access-based enumeration enabled, then the file or folder doesn't show up in directory listings. Defaults to `false`. For more information, please refer to [Understand NAS share permissions in Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/network-attached-storage-permissions#:~:text=security%20for%20administrators.-,Access%2Dbased%20enumeration,in%20an%20Azure%20NetApp%20Files%20SMB%20volume.%20Only%20contosoadmin%20has%20access.,-In%20the%20below)
  late final pulumi.Output<bool?> smbAccessBasedEnumerationEnabled;
  /// Enable SMB Continuous Availability. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> smbContinuousAvailabilityEnabled;
  /// Limits clients from browsing for an SMB share by hiding the share from view in Windows Explorer or when listing shares in "net view." Only end users that know the absolute paths to the share are able to find the share. Defaults to `false`. For more information, please refer to [Understand NAS share permissions in Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/network-attached-storage-permissions#:~:text=Non%2Dbrowsable%20shares,find%20the%20share.)
  late final pulumi.Output<bool?> smbNonBrowsableEnabled;
  /// Specifies whether the .snapshot (NFS clients) or ~snapshot (SMB clients) path of a volume is visible. Defaults to `true`.
  late final pulumi.Output<bool?> snapshotDirectoryVisible;
  /// The maximum Storage Quota allowed for a file system in Gigabytes.
  late final pulumi.Output<int> storageQuotaInGb;
  /// The ID of the Subnet the NetApp Volume resides in, which must have the `Microsoft.NetApp/volumes` delegation. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subnetId;
  /// A mapping of tags to assign to the resource.
  ///
  /// > **Note:** It is highly recommended to use the **lifecycle** property as noted in the example since it will prevent an accidental deletion of the volume if the `protocols` argument changes to a different protocol type.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Throughput of this volume in Mibps.
  late final pulumi.Output<double> throughputInMibps;
  /// A unique file path for the volume. Used when creating mount targets. Changing this forces a new resource to be created.
  late final pulumi.Output<String> volumePath;
  /// Specifies the Availability Zone in which the Volume should be located. Possible values are `1`, `2` and `3`. Changing this forces a new resource to be created. This feature is currently in preview, for more information on how to enable it, please refer to [Manage availability zone volume placement for Azure NetApp Files](https://learn.microsoft.com/en-us/azure/azure-netapp-files/manage-availability-zone-volume-placement#register-the-feature).
  late final pulumi.Output<String?> zone;

  /// Creates a new [Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Volume]. {@macro pulumi_netapp_volume_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Volume(
    String name, {
    VolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:netapp/volume:Volume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceptGrowCapacityPoolForShortTermCloneSplit = registerOutput<String?>('acceptGrowCapacityPoolForShortTermCloneSplit');
    this.accountName = registerOutput<String>('accountName');
    this.azureVmwareDataStoreEnabled = registerOutput<bool?>('azureVmwareDataStoreEnabled');
    this.coolAccess = registerOutput<VolumeCoolAccess?>('coolAccess');
    this.createFromSnapshotResourceId = registerOutput<String?>('createFromSnapshotResourceId');
    this.dataProtectionBackupPolicy = registerOutput<VolumeDataProtectionBackupPolicy?>('dataProtectionBackupPolicy');
    this.dataProtectionReplication = registerOutput<VolumeDataProtectionReplication?>('dataProtectionReplication');
    this.dataProtectionSnapshotPolicy = registerOutput<VolumeDataProtectionSnapshotPolicy?>('dataProtectionSnapshotPolicy');
    this.encryptionKeySource = registerOutput<String>('encryptionKeySource');
    this.exportPolicyRules = registerOutput<List<VolumeExportPolicyRule>?>('exportPolicyRules');
    this.kerberosEnabled = registerOutput<bool?>('kerberosEnabled');
    this.keyVaultPrivateEndpointId = registerOutput<String>('keyVaultPrivateEndpointId');
    this.largeVolumeEnabled = registerOutput<bool?>('largeVolumeEnabled');
    this.location = registerOutput<String>('location');
    this.mountIpAddresses = registerOutput<List<String>>('mountIpAddresses');
    this.name = registerOutput<String>('name');
    this.networkFeatures = registerOutput<String>('networkFeatures');
    this.poolName = registerOutput<String>('poolName');
    this.protocols = registerOutput<List<String>>('protocols');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.securityStyle = registerOutput<String>('securityStyle');
    this.serviceLevel = registerOutput<String>('serviceLevel');
    this.smb3ProtocolEncryptionEnabled = registerOutput<bool?>('smb3ProtocolEncryptionEnabled');
    this.smbAccessBasedEnumerationEnabled = registerOutput<bool?>('smbAccessBasedEnumerationEnabled');
    this.smbContinuousAvailabilityEnabled = registerOutput<bool?>('smbContinuousAvailabilityEnabled');
    this.smbNonBrowsableEnabled = registerOutput<bool?>('smbNonBrowsableEnabled');
    this.snapshotDirectoryVisible = registerOutput<bool?>('snapshotDirectoryVisible');
    this.storageQuotaInGb = registerOutput<int>('storageQuotaInGb');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.throughputInMibps = registerOutput<double>('throughputInMibps');
    this.volumePath = registerOutput<String>('volumePath');
    this.zone = registerOutput<String?>('zone');
  }
}
