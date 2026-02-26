// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DiskResourcePolicyAttachment.
class DiskResourcePolicyAttachmentArgs {
  /// The name of the disk in which the resource policies are attached to.
  final Input<String> disk;

  /// The resource policy to be attached to the disk for scheduling snapshot
  /// creation. Do not specify the self link.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A reference to the zone where the disk resides.
  final Input<String>? zone;

  DiskResourcePolicyAttachmentArgs({
    required this.disk,
    this.name,
    this.project,
    this.zone,
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
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory DiskResourcePolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return DiskResourcePolicyAttachmentArgs(
      disk: Input.asInput<String>(map['disk']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
