// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_instance_template_get_instance_template_args_doc}
/// Arguments for getInstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_get_instance_template_get_instance_template_args_doc}
class GetInstanceTemplateArgs {
  /// A filter to retrieve the instance templates.
  /// See [API filter parameter documentation](https://cloud.google.com/compute/docs/reference/rest/v1/instanceTemplates/list#body.QUERY_PARAMETERS.filter) for reference.
  /// If multiple instance templates match, either adjust the filter or specify `most_recent`.
  /// One of `name`, `filter` or `self_link_unique` must be provided.
  final pulumi.Input<String>? filter;
  /// If `filter` is provided, ensures the most recent template is returned when multiple instance templates match. One of `name`, `filter` or `self_link_unique` must be provided.
  final pulumi.Input<bool>? mostRecent;
  /// The name of the instance template. One of `name`, `filter` or `self_link_unique` must be provided.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If `project` is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The self_link_unique URI of the instance template. One of `name`, `filter` or `self_link_unique` must be provided.
  final pulumi.Input<String>? selfLinkUnique;

  /// Creates a new [GetInstanceTemplateArgs].
  /// [filter] A filter to retrieve the instance templates.
  /// [mostRecent] If `filter` is provided, ensures the most recent template is returned when multiple instance templates match. One of `name`, `filter` or `self_link_unique` must be provided.
  /// [name] The name of the instance template. One of `name`, `filter` or `self_link_unique` must be provided.
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLinkUnique] The self_link_unique URI of the instance template. One of `name`, `filter` or `self_link_unique` must be provided.
  GetInstanceTemplateArgs({
    String? filter,
    bool? mostRecent,
    String? name,
    String? project,
    String? selfLinkUnique,
  }) :
      filter = pulumi.Input.asOptionalInput<String>(filter),
      mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      selfLinkUnique = pulumi.Input.asOptionalInput<String>(selfLinkUnique);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'project': ?project,
      'selfLinkUnique': ?selfLinkUnique,
    };
  }

  factory GetInstanceTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateArgs(
      filter: map['filter'] == null ? null : map['filter'] as String,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      selfLinkUnique: map['selfLinkUnique'] == null ? null : map['selfLinkUnique'] as String,
    );
  }
}

