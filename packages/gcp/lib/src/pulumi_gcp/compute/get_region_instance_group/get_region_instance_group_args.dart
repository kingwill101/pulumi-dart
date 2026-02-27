// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionInstanceGroup.
class GetRegionInstanceGroupArgs {
  /// The name of the instance group.  One of `name` or `self_link` must be provided.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If `self_link` is provided, this value is ignored.  If neither `self_link`
  /// nor `project` are provided, the provider project is used.
  final Input<String>? project;

  /// The region in which the resource belongs.  If `self_link`
  /// is provided, this value is ignored.  If neither `self_link` nor `region` are
  /// provided, the provider region is used.
  final Input<String>? region;

  /// The link to the instance group.  One of `name` or `self_link` must be provided.
  ///
  /// - - -
  final Input<String>? selfLink;

  GetRegionInstanceGroupArgs({
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

  factory GetRegionInstanceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupArgs(
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      selfLink: Input.asOptionalInput<String>(map['selfLink']),
    );
  }
}
