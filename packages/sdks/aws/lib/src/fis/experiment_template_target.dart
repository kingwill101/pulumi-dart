// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_template_target_filter.dart';
import 'experiment_template_target_resource_tag.dart';

class ExperimentTemplateTarget {
  /// Filter(s) for the target. Filters can be used to select resources based on specific attributes returned by the respective describe action of the resource type. For more information, see [Targets for AWS FIS](https://docs.aws.amazon.com/fis/latest/userguide/targets.html#target-filters). See below.
  final pulumi.Input<List<ExperimentTemplateTargetFilter>>? filters;
  /// Friendly name given to the target.
  final pulumi.Input<String> name;
  /// The resource type parameters.
  ///
  /// &gt; **NOTE:** The `target` configuration block requires either `resource_arns` or `resource_tag`.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Set of ARNs of the resources to target with an action. Conflicts with `resource_tag`.
  final pulumi.Input<List<String>>? resourceArns;
  /// Tag(s) the resources need to have to be considered a valid target for an action. Conflicts with `resource_arns`. See below.
  final pulumi.Input<List<ExperimentTemplateTargetResourceTag>>? resourceTags;
  /// AWS resource type. The resource type must be supported for the specified action. To find out what resource types are supported, see [Targets for AWS FIS](https://docs.aws.amazon.com/fis/latest/userguide/targets.html#resource-types).
  final pulumi.Input<String> resourceType;
  /// Scopes the identified resources. Valid values are `ALL` (all identified resources), `COUNT(n)` (randomly select `n` of the identified resources), `PERCENT(n)` (randomly select `n` percent of the identified resources).
  final pulumi.Input<String> selectionMode;

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
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<ExperimentTemplateTargetFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<ExperimentTemplateTargetFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'parameters': ?parameters,
      'resourceArns': ?resourceArns,
      'resourceTags': ?pulumi.Input.mapOptionalInputValue<List<ExperimentTemplateTargetResourceTag>, List<Map<String, dynamic>>>(resourceTags, (value) => pulumi.Input.encodeList<ExperimentTemplateTargetResourceTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceType': resourceType,
      'selectionMode': selectionMode,
    };
  }

  factory ExperimentTemplateTarget.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateTarget(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExperimentTemplateTargetFilter>(guardedValue, (value) => ExperimentTemplateTargetFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceArns: (() { final guardedValue = map['resourceArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceTags: (() { final guardedValue = map['resourceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExperimentTemplateTargetResourceTag>(guardedValue, (value) => ExperimentTemplateTargetResourceTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      selectionMode: pulumi.Input.fromValue(map['selectionMode'] as String),
    );
  }
}

