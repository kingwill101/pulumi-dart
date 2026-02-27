// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_launch_template_filter/get_launch_template_filter.dart';

/// Arguments for getLaunchTemplate.
class GetLaunchTemplateArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetLaunchTemplateFilter>>? filters;

  /// ID of the specific launch template to retrieve.
  final pulumi.Input<String>? id;

  /// Name of the launch template.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags, each pair of which must exactly match a pair on the desired Launch Template.
  final pulumi.Input<Map<String, String>>? tags;

  GetLaunchTemplateArgs({
    this.filters,
    this.id,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetLaunchTemplateFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetLaunchTemplateFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetLaunchTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateArgs(
      filters: pulumi.Input.asOptionalInput<List<GetLaunchTemplateFilter>>(
          map['filters']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
