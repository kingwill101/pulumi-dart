// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionInstanceGroupManager.
class GetRegionInstanceGroupManagerArgs {
  /// The name of the instance group. Either `name` or `self_link` must be provided.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  ///
  /// * `Region` - (Optional) The region where the managed instance group resides. If not provided, the provider region is used.
  final Input<String>? project;
  final Input<String>? region;

  /// The self link of the instance group. Either `name` or `self_link` must be provided.
  final Input<String>? selfLink;

  GetRegionInstanceGroupManagerArgs({
    this.name,
    this.project,
    this.region,
    this.selfLink,
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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    return map;
  }

  factory GetRegionInstanceGroupManagerArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerArgs(
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      selfLink: Input.asOptionalInput<String>(map['selfLink']),
    );
  }
}
