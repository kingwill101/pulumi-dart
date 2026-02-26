// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RegionDiskResourcePolicyAttachment.
class RegionDiskResourcePolicyAttachmentArgs {
  /// The name of the regional disk in which the resource policies are attached to.
  final Input<String> disk;

  /// The resource policy to be attached to the disk for scheduling snapshot
  /// creation. Do not specify the self link.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A reference to the region where the disk resides.
  final Input<String>? region;

  RegionDiskResourcePolicyAttachmentArgs({
    required this.disk,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disk'] = disk;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory RegionDiskResourcePolicyAttachmentArgs.fromMap(
      Map<String, dynamic> map) {
    return RegionDiskResourcePolicyAttachmentArgs(
      disk: Input.asInput<String>(map['disk']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
