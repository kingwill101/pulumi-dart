// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_config_device.dart';
import 'instance_config_devices.dart';
import 'instance_config_helper.dart';
import 'instance_config_interface.dart';

/// {@template pulumi_index_instance_config_instance_config_args_doc}
/// The set of arguments for InstanceConfig.
/// {@endtemplate}
/// {@macro pulumi_index_instance_config_instance_config_args_doc}
class InstanceConfigArgs {
  /// If true, the Linode will be booted into this config. If another config is booted, the Linode will be rebooted into this config. If false, the Linode will be shutdown only if it is currently booted into this config. If undefined, the config will alter the boot status of the Linode.
  final pulumi.Input<bool>? booted;
  /// Optional field for arbitrary User comments on this Config.
  ///
  /// * `devices` - (Optional) A dictionary of device disks to use as a device map in a Linode’s configuration profile.
  ///
  /// * `helpers` - (Optional) Helpers enabled when booting to this Linode Config.
  ///
  /// * `interface` - (Optional) An array of Network Interfaces to use for this Configuration Profile.
  final pulumi.Input<String>? comments;
  /// Blocks for device disks in a Linode's configuration profile.
  final pulumi.Input<List<InstanceConfigDevice>>? device;
  /// A dictionary of device disks to use as a device map in a Linode's configuration profile.
  final pulumi.Input<InstanceConfigDevices>? devices;
  /// Helpers enabled when booting to this Linode Config.
  final pulumi.Input<List<InstanceConfigHelper>>? helpers;
  /// An array of Network Interfaces to add to this Linode's Configuration Profile.
  final pulumi.Input<List<InstanceConfigInterface>>? interfaces;
  /// A Kernel ID to boot a Linode with. Default is `linode/latest-64bit`. Examples are `linode/latest-64bit`, `linode/grub2`, `linode/direct-disk`, etc. See all kernels [here](https://api.linode.com/v4/linode/kernels). Note that this is a paginated API endpoint ([docs](https://techdocs.akamai.com/linode-api/reference/get-kernels)).
  final pulumi.Input<String>? kernel;
  /// The Config’s label for display purposes only.
  ///
  /// - - -
  final pulumi.Input<String> label;
  /// The ID of the Linode to create this configuration profile under.
  final pulumi.Input<int> linodeId;
  /// The memory limit of the Config. Defaults to the total ram of the Linode.
  final pulumi.Input<int>? memoryLimit;
  /// The root device to boot. (default `/dev/sda`)
  final pulumi.Input<String>? rootDevice;
  /// Defines the state of your Linode after booting. (`default`, `single`, `binbash`)
  final pulumi.Input<String>? runLevel;
  /// Controls the virtualization mode. (`paravirt`, `fullvirt`)
  final pulumi.Input<String>? virtMode;

  /// Creates a new [InstanceConfigArgs].
  /// [booted] If true, the Linode will be booted into this config. If another config is booted, the Linode will be rebooted into this config. If false, the Linode will be shutdown only if it is currently booted into this config. If undefined, the config will alter the boot status of the Linode.
  /// [comments] Optional field for arbitrary User comments on this Config.
  /// [device] Blocks for device disks in a Linode's configuration profile.
  /// [devices] A dictionary of device disks to use as a device map in a Linode's configuration profile.
  /// [helpers] Helpers enabled when booting to this Linode Config.
  /// [interfaces] An array of Network Interfaces to add to this Linode's Configuration Profile.
  /// [kernel] A Kernel ID to boot a Linode with. Default is `linode/latest-64bit`. Examples are `linode/latest-64bit`, `linode/grub2`, `linode/direct-disk`, etc. See all kernels [here](https://api.linode.com/v4/linode/kernels). Note that this is a paginated API endpoint ([docs](https://techdocs.akamai.com/linode-api/reference/get-kernels)).
  /// [label] The Config’s label for display purposes only.
  /// [linodeId] The ID of the Linode to create this configuration profile under.
  /// [memoryLimit] The memory limit of the Config. Defaults to the total ram of the Linode.
  /// [rootDevice] The root device to boot. (default `/dev/sda`)
  /// [runLevel] Defines the state of your Linode after booting. (`default`, `single`, `binbash`)
  /// [virtMode] Controls the virtualization mode. (`paravirt`, `fullvirt`)
  InstanceConfigArgs({
    bool? booted,
    String? comments,
    List<InstanceConfigDevice>? device,
    InstanceConfigDevices? devices,
    List<InstanceConfigHelper>? helpers,
    List<InstanceConfigInterface>? interfaces,
    String? kernel,
    required String label,
    required int linodeId,
    int? memoryLimit,
    String? rootDevice,
    String? runLevel,
    String? virtMode,
  }) :
      booted = pulumi.Input.asOptionalInput<bool>(booted),
      comments = pulumi.Input.asOptionalInput<String>(comments),
      device = pulumi.Input.asOptionalInput<List<InstanceConfigDevice>>(device),
      devices = pulumi.Input.asOptionalInput<InstanceConfigDevices>(devices),
      helpers = pulumi.Input.asOptionalInput<List<InstanceConfigHelper>>(helpers),
      interfaces = pulumi.Input.asOptionalInput<List<InstanceConfigInterface>>(interfaces),
      kernel = pulumi.Input.asOptionalInput<String>(kernel),
      label = pulumi.Input.asInput<String>(label),
      linodeId = pulumi.Input.asInput<int>(linodeId),
      memoryLimit = pulumi.Input.asOptionalInput<int>(memoryLimit),
      rootDevice = pulumi.Input.asOptionalInput<String>(rootDevice),
      runLevel = pulumi.Input.asOptionalInput<String>(runLevel),
      virtMode = pulumi.Input.asOptionalInput<String>(virtMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booted': ?booted,
      'comments': ?comments,
      'device': ?pulumi.Input.mapOptionalInputValue<List<InstanceConfigDevice>, List<Map<String, dynamic>>>(device, (value) => pulumi.Input.encodeList<InstanceConfigDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'devices': ?pulumi.Input.mapOptionalInputValue<InstanceConfigDevices, Map<String, dynamic>>(devices, (value) => value.toMap()),
      'helpers': ?pulumi.Input.mapOptionalInputValue<List<InstanceConfigHelper>, List<Map<String, dynamic>>>(helpers, (value) => pulumi.Input.encodeList<InstanceConfigHelper, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interfaces': ?pulumi.Input.mapOptionalInputValue<List<InstanceConfigInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<InstanceConfigInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kernel': ?kernel,
      'label': label,
      'linodeId': linodeId,
      'memoryLimit': ?memoryLimit,
      'rootDevice': ?rootDevice,
      'runLevel': ?runLevel,
      'virtMode': ?virtMode,
    };
  }

  factory InstanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return InstanceConfigArgs(
      booted: map['booted'] == null ? null : map['booted'] as bool,
      comments: map['comments'] == null ? null : map['comments'] as String,
      device: map['device'] == null ? null : pulumi.Input.decodeList<InstanceConfigDevice>(map['device'], (value) => InstanceConfigDevice.fromMap((value as Map).cast<String, dynamic>())),
      devices: map['devices'] == null ? null : InstanceConfigDevices.fromMap((map['devices'] as Map).cast<String, dynamic>()),
      helpers: map['helpers'] == null ? null : pulumi.Input.decodeList<InstanceConfigHelper>(map['helpers'], (value) => InstanceConfigHelper.fromMap((value as Map).cast<String, dynamic>())),
      interfaces: map['interfaces'] == null ? null : pulumi.Input.decodeList<InstanceConfigInterface>(map['interfaces'], (value) => InstanceConfigInterface.fromMap((value as Map).cast<String, dynamic>())),
      kernel: map['kernel'] == null ? null : map['kernel'] as String,
      label: map['label'] as String,
      linodeId: map['linodeId'] as int,
      memoryLimit: map['memoryLimit'] == null ? null : map['memoryLimit'] as int,
      rootDevice: map['rootDevice'] == null ? null : map['rootDevice'] as String,
      runLevel: map['runLevel'] == null ? null : map['runLevel'] as String,
      virtMode: map['virtMode'] == null ? null : map['virtMode'] as String,
    );
  }
}

