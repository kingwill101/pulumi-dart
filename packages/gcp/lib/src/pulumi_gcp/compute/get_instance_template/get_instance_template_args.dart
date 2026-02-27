// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstanceTemplate.
class GetInstanceTemplateArgs {
  /// A filter to retrieve the instance templates.
  /// See [API filter parameter documentation](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/list#body.QUERY_PARAMETERS.filter) for reference.
  /// If multiple instance templates match, either adjust the filter or specify `most_recent`.
  /// One of `name`, `filter` or `self_link_unique` must be provided.
  final Input<String>? filter;

  /// If `filter` is provided, ensures the most recent template is returned when multiple instance templates match. One of `name`, `filter` or `self_link_unique` must be provided.
  final Input<bool>? mostRecent;

  /// The name of the instance template. One of `name`, `filter` or `self_link_unique` must be provided.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If `project` is not provided, the provider project is used.
  final Input<String>? project;

  /// The self_link_unique URI of the instance template. One of `name`, `filter` or `self_link_unique` must be provided.
  final Input<String>? selfLinkUnique;

  GetInstanceTemplateArgs({
    this.filter,
    this.mostRecent,
    this.name,
    this.project,
    this.selfLinkUnique,
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
    final selfLinkUniqueValue = selfLinkUnique;
    if (selfLinkUniqueValue != null) {
      map['selfLinkUnique'] = selfLinkUniqueValue;
    }
    return map;
  }

  factory GetInstanceTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateArgs(
      filter: Input.asOptionalInput<String>(map['filter']),
      mostRecent: Input.asOptionalInput<bool>(map['mostRecent']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      selfLinkUnique: Input.asOptionalInput<String>(map['selfLinkUnique']),
    );
  }
}
