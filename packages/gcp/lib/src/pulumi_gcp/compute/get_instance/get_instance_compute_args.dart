// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstance.
class GetInstanceComputeArgs {
  /// The name of the instance. One of `name` or `self_link` must be provided.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If `self_link` is provided, this value is ignored.  If neither `self_link`
  /// nor `project` are provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The self link of the instance. One of `name` or `self_link` must be provided.
  final pulumi.Input<String>? selfLink;

  /// The zone of the instance. If `self_link` is provided, this
  /// value is ignored.  If neither `self_link` nor `zone` are provided, the
  /// provider zone is used.
  final pulumi.Input<String>? zone;

  GetInstanceComputeArgs({
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

  factory GetInstanceComputeArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceComputeArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      selfLink: pulumi.Input.asOptionalInput<String>(map['selfLink']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
