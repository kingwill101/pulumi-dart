import 'package:pulumi/pulumi.dart';
import 'disk_resource_policy_attachment_args.dart';

/// Adds existing resource policies to a disk. You can only add one policy
/// which will be applied to this disk for scheduling snapshot creation.
///
/// > **Note:** This resource does not support regional disks (`gcp.compute.RegionDisk`). For regional disks, please refer to the `gcp.compute.RegionDiskResourcePolicyAttachment` resource.
///
///
/// ## Example Usage
///
/// ### Disk Resource Policy Attachment Basic
///
///
///
///
/// ## Import
///
/// DiskResourcePolicyAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/disks/{{disk}}/{{name}}`
///
/// * `{{project}}/{{zone}}/{{disk}}/{{name}}`
///
/// * `{{zone}}/{{disk}}/{{name}}`
///
/// * `{{disk}}/{{name}}`
///
/// When using the `pulumi import` command, DiskResourcePolicyAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/diskResourcePolicyAttachment:DiskResourcePolicyAttachment default projects/{{project}}/zones/{{zone}}/disks/{{disk}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/diskResourcePolicyAttachment:DiskResourcePolicyAttachment default {{project}}/{{zone}}/{{disk}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/diskResourcePolicyAttachment:DiskResourcePolicyAttachment default {{zone}}/{{disk}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/diskResourcePolicyAttachment:DiskResourcePolicyAttachment default {{disk}}/{{name}}
/// ```
class DiskResourcePolicyAttachment extends CustomResource {
  /// The name of the disk in which the resource policies are attached to.
  late final Output<String> disk;

  /// The resource policy to be attached to the disk for scheduling snapshot
  /// creation. Do not specify the self link.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// A reference to the zone where the disk resides.
  late final Output<String> zone;

  DiskResourcePolicyAttachment(
    String name, {
    DiskResourcePolicyAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/diskResourcePolicyAttachment:DiskResourcePolicyAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.disk = registerOutput<String>('disk');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.zone = registerOutput<String>('zone');
  }
}
