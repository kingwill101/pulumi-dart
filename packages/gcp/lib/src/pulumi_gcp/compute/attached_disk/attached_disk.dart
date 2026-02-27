import 'package:pulumi/pulumi.dart';
import 'attached_disk_args.dart';

/// Persistent disks can be attached to a compute instance using the `attached_disk`
/// section within the compute instance configuration.
/// However there may be situations where managing the attached disks via the compute
/// instance config isn't preferable or possible, such as attaching dynamic
/// numbers of disks using the `count` variable.
///
///
/// To get more information about attaching disks, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/instances/attachDisk)
/// * How-to Guides
/// * [Adding a persistent disk](https://cloud.google.com/compute/docs/disks/add-persistent-disk)
///
/// **Note:** When using `gcp.compute.AttachedDisk` you **must** use `lifecycle.ignore_changes = ["attached_disk"]` on the `gcp.compute.Instance` resource that has the disks attached. Otherwise the two resources will fight for control of the attached disk block.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Attached Disk can be imported the following ways:
///
/// * `projects/{{project}}/zones/{{zone}}/instances/{{instance.name}}/{{disk.name}}`
///
/// * `{{project}}/{{zone}}/{{instance.name}}/{{disk.name}}`
///
/// When using the `pulumi import` command, Attached Disk can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/attachedDisk:AttachedDisk default projects/{{project}}/zones/{{zone}}/instances/{{instance.name}}/{{disk.name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/attachedDisk:AttachedDisk default {{project}}/{{zone}}/{{instance.name}}/{{disk.name}}
/// ```
class AttachedDisk extends CustomResource {
  /// Specifies a unique device name of your choice that is
  /// reflected into the /dev/disk/by-id/google-* tree of a Linux operating
  /// system running within the instance. This name can be used to
  /// reference the device for mounting, resizing, and so on, from within
  /// the instance.
  ///
  /// If not specified, the server chooses a default device name to apply
  /// to this disk, in the form persistent-disks-x, where x is a number
  /// assigned by Google Compute Engine.
  late final Output<String> deviceName;

  /// `name` or `self_link` of the disk that will be attached.
  ///
  ///
  /// - - -
  late final Output<String> disk;

  /// `name` or `self_link` of the compute instance that the disk will be attached to.
  /// If the `self_link` is provided then `zone` and `project` are extracted from the
  /// self link. If only the name is used then `zone` and `project` must be defined
  /// as properties on the resource or provider.
  late final Output<String> instance;

  /// The disk interface used for attaching this disk.
  ///
  /// This field is only used for specific cases, please don't specify
  /// this field without advice from Google. Not specifying the field
  /// will allow the the server to assign the correct interface.
  ///
  /// Possible values:
  /// "SCSI"
  /// "NVME"
  late final Output<String?> interface;

  /// The mode in which to attach this disk, either READ_WRITE or
  /// READ_ONLY. If not specified, the default is to attach the disk in
  /// READ_WRITE mode.
  ///
  /// Possible values:
  /// "READ_ONLY"
  /// "READ_WRITE"
  late final Output<String?> mode;

  /// The project that the referenced compute instance is a part of. If `instance` is referenced by its
  /// `self_link` the project defined in the link will take precedence.
  late final Output<String> project;

  /// The zone that the referenced compute instance is located within. If `instance` is referenced by its
  /// `self_link` the zone defined in the link will take precedence.
  late final Output<String> zone;

  AttachedDisk(
    String name, {
    AttachedDiskArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/attachedDisk:AttachedDisk',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.deviceName = registerOutput<String>('deviceName');
    this.disk = registerOutput<String>('disk');
    this.instance = registerOutput<String>('instance');
    this.interface = registerOutput<String?>('interface');
    this.mode = registerOutput<String?>('mode');
    this.project = registerOutput<String>('project');
    this.zone = registerOutput<String>('zone');
  }
}
