// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_region_disk_resource_policy_attachment_region_disk_resource_policy_attachment_args_doc}
/// The set of arguments for RegionDiskResourcePolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_region_disk_resource_policy_attachment_region_disk_resource_policy_attachment_args_doc}
class RegionDiskResourcePolicyAttachmentArgs {
  /// The name of the regional disk in which the resource policies are attached to.
  final pulumi.Input<String> disk;

  /// The resource policy to be attached to the disk for scheduling snapshot
  /// creation. Do not specify the self link.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the region where the disk resides.
  final pulumi.Input<String>? region;

  /// Creates a new [RegionDiskResourcePolicyAttachmentArgs].
  /// [disk] The name of the regional disk in which the resource policies are attached to.
  /// [name] The resource policy to be attached to the disk for scheduling snapshot
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region where the disk resides.
  RegionDiskResourcePolicyAttachmentArgs({
    required String disk,
    String? name,
    String? project,
    String? region,
  }) : disk = pulumi.Input.asInput<String>(disk),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': disk,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory RegionDiskResourcePolicyAttachmentArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionDiskResourcePolicyAttachmentArgs(
      disk: map['disk'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
