// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ResourcePolicyAttachment.
class ResourcePolicyAttachmentArgs {
  /// The name of the instance in which the resource policies are attached to.
  final pulumi.Input<String> instance;

  /// The resource policy to be attached to the instance for scheduling start/stop
  /// operations. Do not specify the self link.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the zone where the instance resides.
  final pulumi.Input<String>? zone;

  ResourcePolicyAttachmentArgs({
    required this.instance,
    this.name,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
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

  factory ResourcePolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyAttachmentArgs(
      instance: pulumi.Input.asInput<String>(map['instance']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
