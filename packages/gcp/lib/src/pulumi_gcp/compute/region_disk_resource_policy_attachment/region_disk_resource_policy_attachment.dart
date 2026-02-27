import 'package:pulumi/pulumi.dart';
import 'region_disk_resource_policy_attachment_args.dart';

/// Adds existing resource policies to a disk. You can only add one policy
/// which will be applied to this disk for scheduling snapshot creation.
///
/// > **Note:** This resource does not support zonal disks (`gcp.compute.Disk`). For zonal disks, please refer to the `gcp.compute.DiskResourcePolicyAttachment` resource.
///
///
///
///
/// ## Example Usage
///
/// ### Region Disk Resource Policy Attachment Basic
///
///
///
///
/// ## Import
///
/// RegionDiskResourcePolicyAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/disks/{{disk}}/{{name}}`
///
/// * `{{project}}/{{region}}/{{disk}}/{{name}}`
///
/// * `{{region}}/{{disk}}/{{name}}`
///
/// * `{{disk}}/{{name}}`
///
/// When using the `pulumi import` command, RegionDiskResourcePolicyAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionDiskResourcePolicyAttachment:RegionDiskResourcePolicyAttachment default projects/{{project}}/regions/{{region}}/disks/{{disk}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionDiskResourcePolicyAttachment:RegionDiskResourcePolicyAttachment default {{project}}/{{region}}/{{disk}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionDiskResourcePolicyAttachment:RegionDiskResourcePolicyAttachment default {{region}}/{{disk}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionDiskResourcePolicyAttachment:RegionDiskResourcePolicyAttachment default {{disk}}/{{name}}
/// ```
class RegionDiskResourcePolicyAttachment extends CustomResource {
  /// The name of the regional disk in which the resource policies are attached to.
  late final Output<String> disk;

  /// The resource policy to be attached to the disk for scheduling snapshot
  /// creation. Do not specify the self link.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// A reference to the region where the disk resides.
  late final Output<String> region;

  RegionDiskResourcePolicyAttachment(
    String name, {
    RegionDiskResourcePolicyAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionDiskResourcePolicyAttachment:RegionDiskResourcePolicyAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.disk = registerOutput<String>('disk');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
