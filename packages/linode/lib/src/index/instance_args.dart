// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_alerts.dart';
import 'instance_config.dart';
import 'instance_disk.dart';
import 'instance_interface.dart';
import 'instance_metadata.dart';
import 'instance_placement_group.dart';

/// {@template pulumi_index_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_index_instance_instance_args_doc}
class InstanceArgs {
  /// Configuration options for alert triggers on this Linode.
  final pulumi.Input<InstanceAlerts>? alerts;
  /// A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if 'image' is provided.
  final pulumi.Input<List<String>>? authorizedKeys;
  /// A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. Only accepted if 'image' is provided.
  final pulumi.Input<List<String>>? authorizedUsers;
  /// A Backup ID from another Linode's available backups. Your User must have read_write access to that Linode, the Backup must have a status of successful, and the Linode must be deployed to the same region as the Backup. See /linode/instances/{linodeId}/backups for a Linode's available backups. This field and the image field are mutually exclusive.
  final pulumi.Input<int>? backupId;
  /// If this field is set to true, the created Linode will automatically be enrolled in the Linode Backup service. This will incur an additional charge. The cost for the Backup service is dependent on the Type of Linode deployed.
  final pulumi.Input<bool>? backupsEnabled;
  /// The Label of the Instance Config that should be used to boot the Linode instance.
  final pulumi.Input<String>? bootConfigLabel;
  /// If true, then the instance is kept or converted into in a running state. If false, the instance will be shutdown. If unspecified, the Linode's power status will not be managed by the Provider.
  final pulumi.Input<bool>? booted;
  /// Configuration profiles define the VM settings and boot behavior of the Linode Instance.
  final pulumi.Input<List<InstanceConfig>>? configs;
  /// The disk encryption policy for this instance. (`enabled`, `disabled`; default `enabled` in supported regions)
  ///
  /// * **NOTE: Disk encryption may not currently be available to all users.**
  final pulumi.Input<String>? diskEncryption;
  final pulumi.Input<List<InstanceDisk>>? disks;
  /// The ID of the Firewall to attach to the instance upon creation. *Changing `firewall_id` forces the creation of a new Linode Instance.*
  final pulumi.Input<int>? firewallId;
  /// A deprecated property denoting a group label for this Linode. We recommend using the `tags` attribute instead.
  final pulumi.Input<String>? group;
  /// An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use.
  final pulumi.Input<String>? image;
  /// Specifies the interface type for the Linode. If set to `linode`, Linode interfaces must be created using a separate resource before this Linode can be booted. (`linode`, `legacy_config`; default is determined by the account `interfaces_for_new_linodes` setting)
  ///
  /// * TODO(Linode Interfaces): Link to a usage example using the `linode_instance_interface` resource
  final pulumi.Input<String>? interfaceGeneration;
  /// An array of Network Interfaces for this Linode to be created with. If an explicit config or disk is defined, interfaces must be declared in the config block.
  final pulumi.Input<List<InstanceInterface>>? interfaces;
  /// A set of reserved IPv4 addresses to assign to this Linode on creation.
  ///
  /// * **NOTE: IP reservation is not currently available to all users.**
  final pulumi.Input<List<String>>? ipv4s;
  /// The Linode's label is for display purposes only. If no label is provided for a Linode, a default will be assigned.
  final pulumi.Input<String>? label;
  /// The maintenance policy of this Linode instance. Examples are `"linode/migrate"` and `"linode/power_off_on"`. Defaults to the default maintenance policy of the account. (**Note: v4beta only.**)
  final pulumi.Input<String>? maintenancePolicy;
  /// Various fields related to the Linode Metadata service.
  final pulumi.Input<List<InstanceMetadata>>? metadatas;
  /// The type of migration to use when updating the type or region of a Linode. (`cold`, `warm`; default `cold`)
  final pulumi.Input<String>? migrationType;
  /// Enables the Network Helper feature. The default value is determined by the network_helper setting in the account settings.
  ///
  /// * `interface` - (Optional) A list of network interfaces to be assigned to the Linode on creation. If an explicit config or disk is defined, interfaces must be declared in the `config` block.
  final pulumi.Input<bool>? networkHelper;
  /// Information about the Placement Group this Linode is assigned to.
  final pulumi.Input<InstancePlacementGroup>? placementGroup;
  /// If true, changes to the Linode's assigned Placement Group will be ignored. This is necessary when using this resource in conjunction with the linode.PlacementGroupAssignment resource.
  final pulumi.Input<bool>? placementGroupExternallyManaged;
  /// If true, the created Linode will have private networking enabled, allowing use of the 192.168.128.0/17 network within the Linode's region. It can be enabled on an existing Linode but it can't be disabled.
  final pulumi.Input<bool>? privateIp;
  /// This is the location where the Linode is deployed. Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc. See all regions [here](https://api.linode.com/v4/regions). *Changing `region` will trigger a migration of this Linode. Migration operations are typically long-running operations, so the update timeout should be adjusted accordingly.*.
  final pulumi.Input<String> region;
  /// If true, changes in Linode type will attempt to upsize or downsize implicitly created disks. This must be false if explicit disks are defined. *This is an irreversible action as Linode disks cannot be automatically downsized.*
  ///
  /// * `alerts.0.cpu` - (Optional) The percentage of CPU usage required to trigger an alert. If the average CPU usage over two hours exceeds this value, we'll send you an alert. If this is set to 0, the alert is disabled.
  ///
  /// * `alerts.0.network_in` - (Optional) The amount of incoming traffic, in Mbit/s, required to trigger an alert. If the average incoming traffic over two hours exceeds this value, we'll send you an alert. If this is set to 0 (zero), the alert is disabled.
  ///
  /// * `alerts.0.network_out` - (Optional) The amount of outbound traffic, in Mbit/s, required to trigger an alert. If the average outbound traffic over two hours exceeds this value, we'll send you an alert. If this is set to 0 (zero), the alert is disabled.
  ///
  /// * `alerts.0.transfer_quota` - (Optional) The percentage of network transfer that may be used before an alert is triggered. When this value is exceeded, we'll alert you. If this is set to 0 (zero), the alert is disabled.
  ///
  /// * `alerts.0.io` - (Optional) The amount of disk IO operation per second required to trigger an alert. If the average disk IO over two hours exceeds this value, we'll send you an alert. If set to 0, this alert is disabled.
  final pulumi.Input<bool>? resizeDisk;
  /// The password that will be initially assigned to the 'root' user account.
  final pulumi.Input<String>? rootPass;
  /// A set of IPv4 addresses to be shared with the Instance. These IP addresses can be both private and public, but must be in the same region as the instance.
  ///
  /// * `metadata.0.user_data` - (Optional) The base64-encoded user-defined data exposed to this instance through the Linode Metadata service. Refer to the base64encode(...) function for information on encoding content for this field.
  ///
  /// * `placement_group.0.id` - (Optional) The ID of the Placement Group to assign this Linode to.
  final pulumi.Input<List<String>>? sharedIpv4s;
  /// An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.
  final pulumi.Input<Map<String, String>>? stackscriptData;
  /// The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript.
  final pulumi.Input<int>? stackscriptId;
  /// When deploying from an Image, this field is optional with a Linode API default of 512mb, otherwise it is ignored. This is used to set the swap disk size for the newly-created Linode.
  final pulumi.Input<int>? swapSize;
  /// A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>>? tags;
  /// The Linode type defines the pricing, CPU, disk, and RAM specs of the instance. Examples are `"g6-nanode-1"`, `"g6-standard-2"`, `"g6-highmem-16"`, `"g6-dedicated-16"`, etc. See all types [here](https://api.linode.com/v4/linode/types).
  ///
  /// - - -
  final pulumi.Input<String>? type;
  /// The watchdog, named Lassie, is a Shutdown Watchdog that monitors your Linode and will reboot it if it powers off unexpectedly. It works by issuing a boot job when your Linode powers off without a shutdown job being responsible. To prevent a loop, Lassie will give up if there have been more than 5 boot jobs issued within 15 minutes.
  final pulumi.Input<bool>? watchdogEnabled;

  /// Creates a new [InstanceArgs].
  /// [alerts] Configuration options for alert triggers on this Linode.
  /// [authorizedKeys] A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if 'image' is provided.
  /// [authorizedUsers] A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. Only accepted if 'image' is provided.
  /// [backupId] A Backup ID from another Linode's available backups. Your User must have read_write access to that Linode, the Backup must have a status of successful, and the Linode must be deployed to the same region as the Backup. See /linode/instances/{linodeId}/backups for a Linode's available backups. This field and the image field are mutually exclusive.
  /// [backupsEnabled] If this field is set to true, the created Linode will automatically be enrolled in the Linode Backup service. This will incur an additional charge. The cost for the Backup service is dependent on the Type of Linode deployed.
  /// [bootConfigLabel] The Label of the Instance Config that should be used to boot the Linode instance.
  /// [booted] If true, then the instance is kept or converted into in a running state. If false, the instance will be shutdown. If unspecified, the Linode's power status will not be managed by the Provider.
  /// [configs] Configuration profiles define the VM settings and boot behavior of the Linode Instance.
  /// [diskEncryption] The disk encryption policy for this instance. (`enabled`, `disabled`; default `enabled` in supported regions)
  /// [disks] Optional.
  /// [firewallId] The ID of the Firewall to attach to the instance upon creation. *Changing `firewall_id` forces the creation of a new Linode Instance.*
  /// [group] A deprecated property denoting a group label for this Linode. We recommend using the `tags` attribute instead.
  /// [image] An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use.
  /// [interfaceGeneration] Specifies the interface type for the Linode. If set to `linode`, Linode interfaces must be created using a separate resource before this Linode can be booted. (`linode`, `legacy_config`; default is determined by the account `interfaces_for_new_linodes` setting)
  /// [interfaces] An array of Network Interfaces for this Linode to be created with. If an explicit config or disk is defined, interfaces must be declared in the config block.
  /// [ipv4s] A set of reserved IPv4 addresses to assign to this Linode on creation.
  /// [label] The Linode's label is for display purposes only. If no label is provided for a Linode, a default will be assigned.
  /// [maintenancePolicy] The maintenance policy of this Linode instance. Examples are `"linode/migrate"` and `"linode/power_off_on"`. Defaults to the default maintenance policy of the account. (**Note: v4beta only.**)
  /// [metadatas] Various fields related to the Linode Metadata service.
  /// [migrationType] The type of migration to use when updating the type or region of a Linode. (`cold`, `warm`; default `cold`)
  /// [networkHelper] Enables the Network Helper feature. The default value is determined by the network_helper setting in the account settings.
  /// [placementGroup] Information about the Placement Group this Linode is assigned to.
  /// [placementGroupExternallyManaged] If true, changes to the Linode's assigned Placement Group will be ignored. This is necessary when using this resource in conjunction with the linode.PlacementGroupAssignment resource.
  /// [privateIp] If true, the created Linode will have private networking enabled, allowing use of the 192.168.128.0/17 network within the Linode's region. It can be enabled on an existing Linode but it can't be disabled.
  /// [region] This is the location where the Linode is deployed. Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc. See all regions [here](https://api.linode.com/v4/regions). *Changing `region` will trigger a migration of this Linode. Migration operations are typically long-running operations, so the update timeout should be adjusted accordingly.*.
  /// [resizeDisk] If true, changes in Linode type will attempt to upsize or downsize implicitly created disks. This must be false if explicit disks are defined. *This is an irreversible action as Linode disks cannot be automatically downsized.*
  /// [rootPass] The password that will be initially assigned to the 'root' user account.
  /// [sharedIpv4s] A set of IPv4 addresses to be shared with the Instance. These IP addresses can be both private and public, but must be in the same region as the instance.
  /// [stackscriptData] An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.
  /// [stackscriptId] The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript.
  /// [swapSize] When deploying from an Image, this field is optional with a Linode API default of 512mb, otherwise it is ignored. This is used to set the swap disk size for the newly-created Linode.
  /// [tags] A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [type] The Linode type defines the pricing, CPU, disk, and RAM specs of the instance. Examples are `"g6-nanode-1"`, `"g6-standard-2"`, `"g6-highmem-16"`, `"g6-dedicated-16"`, etc. See all types [here](https://api.linode.com/v4/linode/types).
  /// [watchdogEnabled] The watchdog, named Lassie, is a Shutdown Watchdog that monitors your Linode and will reboot it if it powers off unexpectedly. It works by issuing a boot job when your Linode powers off without a shutdown job being responsible. To prevent a loop, Lassie will give up if there have been more than 5 boot jobs issued within 15 minutes.
  InstanceArgs({
    InstanceAlerts? alerts,
    List<String>? authorizedKeys,
    List<String>? authorizedUsers,
    int? backupId,
    bool? backupsEnabled,
    String? bootConfigLabel,
    bool? booted,
    List<InstanceConfig>? configs,
    String? diskEncryption,
    List<InstanceDisk>? disks,
    int? firewallId,
    String? group,
    String? image,
    String? interfaceGeneration,
    List<InstanceInterface>? interfaces,
    List<String>? ipv4s,
    String? label,
    String? maintenancePolicy,
    List<InstanceMetadata>? metadatas,
    String? migrationType,
    bool? networkHelper,
    InstancePlacementGroup? placementGroup,
    bool? placementGroupExternallyManaged,
    bool? privateIp,
    required String region,
    bool? resizeDisk,
    String? rootPass,
    List<String>? sharedIpv4s,
    Map<String, String>? stackscriptData,
    int? stackscriptId,
    int? swapSize,
    List<String>? tags,
    String? type,
    bool? watchdogEnabled,
  }) :
      alerts = pulumi.Input.asOptionalInput<InstanceAlerts>(alerts),
      authorizedKeys = pulumi.Input.asOptionalInput<List<String>>(authorizedKeys),
      authorizedUsers = pulumi.Input.asOptionalInput<List<String>>(authorizedUsers),
      backupId = pulumi.Input.asOptionalInput<int>(backupId),
      backupsEnabled = pulumi.Input.asOptionalInput<bool>(backupsEnabled),
      bootConfigLabel = pulumi.Input.asOptionalInput<String>(bootConfigLabel),
      booted = pulumi.Input.asOptionalInput<bool>(booted),
      configs = pulumi.Input.asOptionalInput<List<InstanceConfig>>(configs),
      diskEncryption = pulumi.Input.asOptionalInput<String>(diskEncryption),
      disks = pulumi.Input.asOptionalInput<List<InstanceDisk>>(disks),
      firewallId = pulumi.Input.asOptionalInput<int>(firewallId),
      group = pulumi.Input.asOptionalInput<String>(group),
      image = pulumi.Input.asOptionalInput<String>(image),
      interfaceGeneration = pulumi.Input.asOptionalInput<String>(interfaceGeneration),
      interfaces = pulumi.Input.asOptionalInput<List<InstanceInterface>>(interfaces),
      ipv4s = pulumi.Input.asOptionalInput<List<String>>(ipv4s),
      label = pulumi.Input.asOptionalInput<String>(label),
      maintenancePolicy = pulumi.Input.asOptionalInput<String>(maintenancePolicy),
      metadatas = pulumi.Input.asOptionalInput<List<InstanceMetadata>>(metadatas),
      migrationType = pulumi.Input.asOptionalInput<String>(migrationType),
      networkHelper = pulumi.Input.asOptionalInput<bool>(networkHelper),
      placementGroup = pulumi.Input.asOptionalInput<InstancePlacementGroup>(placementGroup),
      placementGroupExternallyManaged = pulumi.Input.asOptionalInput<bool>(placementGroupExternallyManaged),
      privateIp = pulumi.Input.asOptionalInput<bool>(privateIp),
      region = pulumi.Input.asInput<String>(region),
      resizeDisk = pulumi.Input.asOptionalInput<bool>(resizeDisk),
      rootPass = pulumi.Input.asOptionalInput<String>(rootPass),
      sharedIpv4s = pulumi.Input.asOptionalInput<List<String>>(sharedIpv4s),
      stackscriptData = pulumi.Input.asOptionalInput<Map<String, String>>(stackscriptData),
      stackscriptId = pulumi.Input.asOptionalInput<int>(stackscriptId),
      swapSize = pulumi.Input.asOptionalInput<int>(swapSize),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      watchdogEnabled = pulumi.Input.asOptionalInput<bool>(watchdogEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?pulumi.Input.mapOptionalInputValue<InstanceAlerts, Map<String, dynamic>>(alerts, (value) => value.toMap()),
      'authorizedKeys': ?authorizedKeys,
      'authorizedUsers': ?authorizedUsers,
      'backupId': ?backupId,
      'backupsEnabled': ?backupsEnabled,
      'bootConfigLabel': ?bootConfigLabel,
      'booted': ?booted,
      'configs': ?pulumi.Input.mapOptionalInputValue<List<InstanceConfig>, List<Map<String, dynamic>>>(configs, (value) => pulumi.Input.encodeList<InstanceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskEncryption': ?diskEncryption,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<InstanceDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<InstanceDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firewallId': ?firewallId,
      'group': ?group,
      'image': ?image,
      'interfaceGeneration': ?interfaceGeneration,
      'interfaces': ?pulumi.Input.mapOptionalInputValue<List<InstanceInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<InstanceInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv4s': ?ipv4s,
      'label': ?label,
      'maintenancePolicy': ?maintenancePolicy,
      'metadatas': ?pulumi.Input.mapOptionalInputValue<List<InstanceMetadata>, List<Map<String, dynamic>>>(metadatas, (value) => pulumi.Input.encodeList<InstanceMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'migrationType': ?migrationType,
      'networkHelper': ?networkHelper,
      'placementGroup': ?pulumi.Input.mapOptionalInputValue<InstancePlacementGroup, Map<String, dynamic>>(placementGroup, (value) => value.toMap()),
      'placementGroupExternallyManaged': ?placementGroupExternallyManaged,
      'privateIp': ?privateIp,
      'region': region,
      'resizeDisk': ?resizeDisk,
      'rootPass': ?rootPass,
      'sharedIpv4s': ?sharedIpv4s,
      'stackscriptData': ?stackscriptData,
      'stackscriptId': ?stackscriptId,
      'swapSize': ?swapSize,
      'tags': ?tags,
      'type': ?type,
      'watchdogEnabled': ?watchdogEnabled,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      alerts: map['alerts'] == null ? null : InstanceAlerts.fromMap((map['alerts'] as Map).cast<String, dynamic>()),
      authorizedKeys: map['authorizedKeys'] == null ? null : (map['authorizedKeys'] as List).cast<String>(),
      authorizedUsers: map['authorizedUsers'] == null ? null : (map['authorizedUsers'] as List).cast<String>(),
      backupId: map['backupId'] == null ? null : map['backupId'] as int,
      backupsEnabled: map['backupsEnabled'] == null ? null : map['backupsEnabled'] as bool,
      bootConfigLabel: map['bootConfigLabel'] == null ? null : map['bootConfigLabel'] as String,
      booted: map['booted'] == null ? null : map['booted'] as bool,
      configs: map['configs'] == null ? null : pulumi.Input.decodeList<InstanceConfig>(map['configs'], (value) => InstanceConfig.fromMap((value as Map).cast<String, dynamic>())),
      diskEncryption: map['diskEncryption'] == null ? null : map['diskEncryption'] as String,
      disks: map['disks'] == null ? null : pulumi.Input.decodeList<InstanceDisk>(map['disks'], (value) => InstanceDisk.fromMap((value as Map).cast<String, dynamic>())),
      firewallId: map['firewallId'] == null ? null : map['firewallId'] as int,
      group: map['group'] == null ? null : map['group'] as String,
      image: map['image'] == null ? null : map['image'] as String,
      interfaceGeneration: map['interfaceGeneration'] == null ? null : map['interfaceGeneration'] as String,
      interfaces: map['interfaces'] == null ? null : pulumi.Input.decodeList<InstanceInterface>(map['interfaces'], (value) => InstanceInterface.fromMap((value as Map).cast<String, dynamic>())),
      ipv4s: map['ipv4s'] == null ? null : (map['ipv4s'] as List).cast<String>(),
      label: map['label'] == null ? null : map['label'] as String,
      maintenancePolicy: map['maintenancePolicy'] == null ? null : map['maintenancePolicy'] as String,
      metadatas: map['metadatas'] == null ? null : pulumi.Input.decodeList<InstanceMetadata>(map['metadatas'], (value) => InstanceMetadata.fromMap((value as Map).cast<String, dynamic>())),
      migrationType: map['migrationType'] == null ? null : map['migrationType'] as String,
      networkHelper: map['networkHelper'] == null ? null : map['networkHelper'] as bool,
      placementGroup: map['placementGroup'] == null ? null : InstancePlacementGroup.fromMap((map['placementGroup'] as Map).cast<String, dynamic>()),
      placementGroupExternallyManaged: map['placementGroupExternallyManaged'] == null ? null : map['placementGroupExternallyManaged'] as bool,
      privateIp: map['privateIp'] == null ? null : map['privateIp'] as bool,
      region: map['region'] as String,
      resizeDisk: map['resizeDisk'] == null ? null : map['resizeDisk'] as bool,
      rootPass: map['rootPass'] == null ? null : map['rootPass'] as String,
      sharedIpv4s: map['sharedIpv4s'] == null ? null : (map['sharedIpv4s'] as List).cast<String>(),
      stackscriptData: map['stackscriptData'] == null ? null : (map['stackscriptData'] as Map).cast<String, String>(),
      stackscriptId: map['stackscriptId'] == null ? null : map['stackscriptId'] as int,
      swapSize: map['swapSize'] == null ? null : map['swapSize'] as int,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      type: map['type'] == null ? null : map['type'] as String,
      watchdogEnabled: map['watchdogEnabled'] == null ? null : map['watchdogEnabled'] as bool,
    );
  }
}

