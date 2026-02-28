// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_region_instance_group_manager_get_region_instance_group_manager_args_doc}
/// Arguments for getRegionInstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_get_region_instance_group_manager_get_region_instance_group_manager_args_doc}
class GetRegionInstanceGroupManagerArgs {
  /// The name of the instance group. Either `name` or `self_link` must be provided.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  ///
  /// * `Region` - (Optional) The region where the managed instance group resides. If not provided, the provider region is used.
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;

  /// The self link of the instance group. Either `name` or `self_link` must be provided.
  final pulumi.Input<String>? selfLink;

  /// Creates a new [GetRegionInstanceGroupManagerArgs].
  /// [name] The name of the instance group. Either `name` or `self_link` must be provided.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [region] Optional.
  /// [selfLink] The self link of the instance group. Either `name` or `self_link` must be provided.
  GetRegionInstanceGroupManagerArgs({
    String? name,
    String? project,
    String? region,
    String? selfLink,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region),
        selfLink = pulumi.Input.asOptionalInput<String>(selfLink);

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
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
    );
  }
}
