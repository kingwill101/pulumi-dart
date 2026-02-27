// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstanceGroupManager.
class GetInstanceGroupManagerArgs {
  /// The name of the instance group. Either `name` or `self_link` must be provided.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The self link of the instance group. Either `name` or `self_link` must be provided.
  final pulumi.Input<String>? selfLink;

  /// The zone of the instance group. If referencing the instance group by name and `zone` is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  GetInstanceGroupManagerArgs({
    this.name,
    this.project,
    this.selfLink,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetInstanceGroupManagerArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      selfLink: pulumi.Input.asOptionalInput<String>(map['selfLink']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
