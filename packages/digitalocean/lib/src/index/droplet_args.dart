// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'droplet_backup_policy.dart';

/// {@template pulumi_index_droplet_droplet_args_doc}
/// The set of arguments for Droplet.
/// {@endtemplate}
/// {@macro pulumi_index_droplet_droplet_args_doc}
class DropletArgs {
  /// An object specifying the backup policy for the Droplet. If omitted and `backups` is `true`, the backup plan will default to daily.
  final pulumi.Input<DropletBackupPolicy>? backupPolicy;
  /// Boolean controlling if backups are made. Defaults to
  /// false.
  final pulumi.Input<bool>? backups;
  /// A boolean indicating whether to install the
  /// DigitalOcean agent used for providing access to the Droplet web console in
  /// the control panel. By default, the agent is installed on new Droplets but
  /// installation errors (i.e. OS not supported) are ignored. To prevent it from
  /// being installed, set to `false`. To make installation errors fatal, explicitly
  /// set it to `true`.
  final pulumi.Input<bool>? dropletAgent;
  /// A boolean indicating whether the droplet
  /// should be gracefully shut down before it is deleted.
  ///
  /// > **NOTE:** If you use `volume_ids` on a Droplet, Terraform will assume management over the full set volumes for the instance, and treat additional volumes as a drift. For this reason, `volume_ids` must not be mixed with external `digitalocean.VolumeAttachment` resources for a given instance.
  final pulumi.Input<bool>? gracefulShutdown;
  /// The Droplet image ID or slug. This could be either image ID or droplet snapshot ID. You can find image IDs and slugs using the [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Images).
  final pulumi.Input<String> image;
  /// Boolean controlling if IPv6 is enabled. Defaults to false.
  /// Once enabled for a Droplet, IPv6 can not be disabled. When enabling IPv6 on
  /// an existing Droplet, [additional OS-level configuration](https://docs.digitalocean.com/products/networking/ipv6/how-to/enable/#on-existing-droplets)
  /// is required.
  final pulumi.Input<bool>? ipv6;
  /// The IPv6 address
  final pulumi.Input<String>? ipv6Address;
  /// Boolean controlling whether monitoring agent is installed.
  /// Defaults to false. If set to `true`, you can configure monitor alert policies
  /// [monitor alert resource](https://www.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/monitor_alert)
  final pulumi.Input<bool>? monitoring;
  /// The Droplet name.
  final pulumi.Input<String>? name;
  /// **Deprecated** Boolean controlling if private networking
  /// is enabled. This parameter has been deprecated. Use `vpc_uuid` instead to specify a VPC network for the Droplet. If no `vpc_uuid` is provided, the Droplet will be placed in your account's default VPC for the region.
  final pulumi.Input<bool>? privateNetworking;
  /// The region where the Droplet will be created.
  final pulumi.Input<String>? region;
  /// Boolean controlling whether to increase the disk
  /// size when resizing a Droplet. It defaults to `true`. When set to `false`,
  /// only the Droplet's RAM and CPU will be resized. **Increasing a Droplet's disk
  /// size is a permanent change**. Increasing only RAM and CPU is reversible.
  final pulumi.Input<bool>? resizeDisk;
  /// The unique slug that identifies the type of Droplet. You may list the available slugs using the [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Sizes).
  final pulumi.Input<String> size;
  /// A list of SSH key IDs or fingerprints to enable in
  /// the format `[12345, 123456]`. To retrieve this info, use the
  /// [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/SSH-Keys)
  /// or CLI (`doctl compute ssh-key list`). Once a Droplet is created keys can not
  /// be added or removed via this provider. Modifying this field will prompt you
  /// to destroy and recreate the Droplet.
  final pulumi.Input<List<String>>? sshKeys;
  /// A list of the tags to be applied to this Droplet.
  final pulumi.Input<List<String>>? tags;
  /// A string of the desired User Data provided [during Droplet creation](https://docs.digitalocean.com/products/droplets/how-to/provide-user-data/). Changing this forces a new resource to be created.
  final pulumi.Input<String>? userData;
  /// A list of the IDs of each [block storage volume](https://www.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/volume) to be attached to the Droplet.
  final pulumi.Input<List<String>>? volumeIds;
  /// The ID of the VPC where the Droplet will be located.
  final pulumi.Input<String>? vpcUuid;

  /// Creates a new [DropletArgs].
  /// [backupPolicy] An object specifying the backup policy for the Droplet. If omitted and `backups` is `true`, the backup plan will default to daily.
  /// [backups] Boolean controlling if backups are made. Defaults to
  /// [dropletAgent] A boolean indicating whether to install the
  /// [gracefulShutdown] A boolean indicating whether the droplet
  /// [image] The Droplet image ID or slug. This could be either image ID or droplet snapshot ID. You can find image IDs and slugs using the [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Images).
  /// [ipv6] Boolean controlling if IPv6 is enabled. Defaults to false.
  /// [ipv6Address] The IPv6 address
  /// [monitoring] Boolean controlling whether monitoring agent is installed.
  /// [name] The Droplet name.
  /// [privateNetworking] **Deprecated** Boolean controlling if private networking
  /// [region] The region where the Droplet will be created.
  /// [resizeDisk] Boolean controlling whether to increase the disk
  /// [size] The unique slug that identifies the type of Droplet. You may list the available slugs using the [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Sizes).
  /// [sshKeys] A list of SSH key IDs or fingerprints to enable in
  /// [tags] A list of the tags to be applied to this Droplet.
  /// [userData] A string of the desired User Data provided [during Droplet creation](https://docs.digitalocean.com/products/droplets/how-to/provide-user-data/). Changing this forces a new resource to be created.
  /// [volumeIds] A list of the IDs of each [block storage volume](https://www.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/volume) to be attached to the Droplet.
  /// [vpcUuid] The ID of the VPC where the Droplet will be located.
  DropletArgs({
    DropletBackupPolicy? backupPolicy,
    bool? backups,
    bool? dropletAgent,
    bool? gracefulShutdown,
    required String image,
    bool? ipv6,
    String? ipv6Address,
    bool? monitoring,
    String? name,
    bool? privateNetworking,
    String? region,
    bool? resizeDisk,
    required String size,
    List<String>? sshKeys,
    List<String>? tags,
    String? userData,
    List<String>? volumeIds,
    String? vpcUuid,
  }) :
      backupPolicy = pulumi.Input.asOptionalInput<DropletBackupPolicy>(backupPolicy),
      backups = pulumi.Input.asOptionalInput<bool>(backups),
      dropletAgent = pulumi.Input.asOptionalInput<bool>(dropletAgent),
      gracefulShutdown = pulumi.Input.asOptionalInput<bool>(gracefulShutdown),
      image = pulumi.Input.asInput<String>(image),
      ipv6 = pulumi.Input.asOptionalInput<bool>(ipv6),
      ipv6Address = pulumi.Input.asOptionalInput<String>(ipv6Address),
      monitoring = pulumi.Input.asOptionalInput<bool>(monitoring),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateNetworking = pulumi.Input.asOptionalInput<bool>(privateNetworking),
      region = pulumi.Input.asOptionalInput<String>(region),
      resizeDisk = pulumi.Input.asOptionalInput<bool>(resizeDisk),
      size = pulumi.Input.asInput<String>(size),
      sshKeys = pulumi.Input.asOptionalInput<List<String>>(sshKeys),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      volumeIds = pulumi.Input.asOptionalInput<List<String>>(volumeIds),
      vpcUuid = pulumi.Input.asOptionalInput<String>(vpcUuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicy': ?pulumi.Input.mapOptionalInputValue<DropletBackupPolicy, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'backups': ?backups,
      'dropletAgent': ?dropletAgent,
      'gracefulShutdown': ?gracefulShutdown,
      'image': image,
      'ipv6': ?ipv6,
      'ipv6Address': ?ipv6Address,
      'monitoring': ?monitoring,
      'name': ?name,
      'privateNetworking': ?privateNetworking,
      'region': ?region,
      'resizeDisk': ?resizeDisk,
      'size': size,
      'sshKeys': ?sshKeys,
      'tags': ?tags,
      'userData': ?userData,
      'volumeIds': ?volumeIds,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory DropletArgs.fromMap(Map<String, dynamic> map) {
    return DropletArgs(
      backupPolicy: map['backupPolicy'] == null ? null : DropletBackupPolicy.fromMap((map['backupPolicy'] as Map).cast<String, dynamic>()),
      backups: map['backups'] == null ? null : map['backups'] as bool,
      dropletAgent: map['dropletAgent'] == null ? null : map['dropletAgent'] as bool,
      gracefulShutdown: map['gracefulShutdown'] == null ? null : map['gracefulShutdown'] as bool,
      image: map['image'] as String,
      ipv6: map['ipv6'] == null ? null : map['ipv6'] as bool,
      ipv6Address: map['ipv6Address'] == null ? null : map['ipv6Address'] as String,
      monitoring: map['monitoring'] == null ? null : map['monitoring'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      privateNetworking: map['privateNetworking'] == null ? null : map['privateNetworking'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      resizeDisk: map['resizeDisk'] == null ? null : map['resizeDisk'] as bool,
      size: map['size'] as String,
      sshKeys: map['sshKeys'] == null ? null : (map['sshKeys'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      userData: map['userData'] == null ? null : map['userData'] as String,
      volumeIds: map['volumeIds'] == null ? null : (map['volumeIds'] as List).cast<String>(),
      vpcUuid: map['vpcUuid'] == null ? null : map['vpcUuid'] as String,
    );
  }
}

