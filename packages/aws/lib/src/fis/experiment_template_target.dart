// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_template_target_filter.dart';
import 'experiment_template_target_resource_tag.dart';

class ExperimentTemplateTarget {
  /// Filter(s) for the target. Filters can be used to select resources based on specific attributes returned by the respective describe action of the resource type. For more information, see [Targets for AWS FIS](https://docs.aws.amazon.com/fis/latest/userguide/targets.html#target-filters). See below.
  final List<ExperimentTemplateTargetFilter>? filters;

  /// Friendly name given to the target.
  final String name;

  /// The resource type parameters.
  ///
  /// > **NOTE:** The `target` configuration block requires either `resource_arns` or `resource_tag`.
  final Map<String, String>? parameters;

  /// Set of ARNs of the resources to target with an action. Conflicts with `resource_tag`.
  final List<String>? resourceArns;

  /// Tag(s) the resources need to have to be considered a valid target for an action. Conflicts with `resource_arns`. See below.
  final List<ExperimentTemplateTargetResourceTag>? resourceTags;

  /// AWS resource type. The resource type must be supported for the specified action. To find out what resource types are supported, see [Targets for AWS FIS](https://docs.aws.amazon.com/fis/latest/userguide/targets.html#resource-types).
  final String resourceType;

  /// Scopes the identified resources. Valid values are `ALL` (all identified resources), `COUNT(n)` (randomly select `n` of the identified resources), `PERCENT(n)` (randomly select `n` percent of the identified resources).
  final String selectionMode;

  /// Creates a new [ExperimentTemplateTarget].
  /// [filters] Filter(s) for the target. Filters can be used to select resources based on specific attributes returned by the respective describe action of the resource type. For more information, see [Targets for AWS FIS](https://docs.aws.amazon.com/fis/latest/userguide/targets.html#target-filters). See below.
  /// [name] Friendly name given to the target.
  /// [parameters] The resource type parameters.
  /// [resourceArns] Set of ARNs of the resources to target with an action. Conflicts with `resource_tag`.
  /// [resourceTags] Tag(s) the resources need to have to be considered a valid target for an action. Conflicts with `resource_arns`. See below.
  /// [resourceType] AWS resource type. The resource type must be supported for the specified action. To find out what resource types are supported, see [Targets for AWS FIS](https://docs.aws.amazon.com/fis/latest/userguide/targets.html#resource-types).
  /// [selectionMode] Scopes the identified resources. Valid values are `ALL` (all identified resources), `COUNT(n)` (randomly select `n` of the identified resources), `PERCENT(n)` (randomly select `n` percent of the identified resources).
  ExperimentTemplateTarget({
    this.filters,
    required this.name,
    this.parameters,
    this.resourceArns,
    this.resourceTags,
    required this.resourceType,
    required this.selectionMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<ExperimentTemplateTargetFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['name'] = name;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final resourceArnsValue = resourceArns;
    if (resourceArnsValue != null) {
      map['resourceArns'] = resourceArnsValue;
    }
    final resourceTagsValue = resourceTags;
    if (resourceTagsValue != null) {
      map['resourceTags'] = pulumi.Input.encodeList<
          ExperimentTemplateTargetResourceTag,
          Map<String, dynamic>>(resourceTagsValue, (value) => value.toMap());
    }
    map['resourceType'] = resourceType;
    map['selectionMode'] = selectionMode;
    return map;
  }

  factory ExperimentTemplateTarget.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateTarget(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<ExperimentTemplateTargetFilter>(
              map['filters'],
              (value) => ExperimentTemplateTargetFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      resourceArns: map['resourceArns'] == null
          ? null
          : (map['resourceArns'] as List).cast<String>(),
      resourceTags: map['resourceTags'] == null
          ? null
          : pulumi.Input.decodeList<ExperimentTemplateTargetResourceTag>(
              map['resourceTags'],
              (value) => ExperimentTemplateTargetResourceTag.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceType: map['resourceType'] as String,
      selectionMode: map['selectionMode'] as String,
    );
  }
}
