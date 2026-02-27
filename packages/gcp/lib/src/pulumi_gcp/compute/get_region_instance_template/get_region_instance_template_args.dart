// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionInstanceTemplate.
class GetRegionInstanceTemplateArgs {
  /// A filter to retrieve the instance templates.
  /// See [API filter parameter documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceTemplates/list#body.QUERY_PARAMETERS.filter) for reference.
  /// If multiple instance templates match, either adjust the filter or specify `most_recent`. One of `name` or `filter` must be provided.
  final pulumi.Input<String>? filter;

  /// If `filter` is provided, ensures the most recent template is returned when multiple instance templates match. One of `name` or `filter` must be provided.
  final pulumi.Input<bool>? mostRecent;

  /// The name of the instance template. One of `name` or `filter` must be provided.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If `project` is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The Region in which the resource belongs.
  /// If `region` is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  GetRegionInstanceTemplateArgs({
    this.filter,
    this.mostRecent,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
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

  factory GetRegionInstanceTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateArgs(
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
      mostRecent: pulumi.Input.asOptionalInput<bool>(map['mostRecent']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
