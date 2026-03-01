// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_filter_criteria.dart';

/// Input properties used for looking up and filtering Filter resources.
class FilterState {
  /// Action to be applied to the findings that maatch the filter. Possible values are `NONE` and `SUPPRESS`
  final pulumi.Input<String>? action;
  /// ARN of the Filter.
  final pulumi.Input<String>? arn;
  /// Description
  final pulumi.Input<String>? description;
  /// Details on the filter criteria. Documented below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<FilterFilterCriteria>>? filterCriterias;
  /// Name of the filter.
  final pulumi.Input<String>? name;
  /// Reason for creating the filter
  final pulumi.Input<String>? reason;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [FilterState].
  /// [action] Action to be applied to the findings that maatch the filter. Possible values are `NONE` and `SUPPRESS`
  /// [arn] ARN of the Filter.
  /// [description] Description
  /// [filterCriterias] Details on the filter criteria. Documented below.
  /// [name] Name of the filter.
  /// [reason] Reason for creating the filter
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  FilterState({
    pulumi.Output<String>? action,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<List<FilterFilterCriteria>>? filterCriterias,
    pulumi.Output<String>? name,
    pulumi.Output<String>? reason,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      filterCriterias = pulumi.Input.asOptionalInput<List<FilterFilterCriteria>>(filterCriterias),
      name = pulumi.Input.asOptionalInput<String>(name),
      reason = pulumi.Input.asOptionalInput<String>(reason),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'arn': ?arn,
      'description': ?description,
      'filterCriterias': ?pulumi.Input.mapOptionalInputValue<List<FilterFilterCriteria>, List<Map<String, dynamic>>>(filterCriterias, (value) => pulumi.Input.encodeList<FilterFilterCriteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'reason': ?reason,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory FilterState.fromMap(Map<String, dynamic> map) {
    return FilterState(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      filterCriterias: map['filterCriterias'] == null ? null : pulumi.Output.create<List<FilterFilterCriteria>>(pulumi.Input.decodeList<FilterFilterCriteria>(map['filterCriterias'], (value) => FilterFilterCriteria.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      reason: map['reason'] == null ? null : pulumi.Output.create<String>(map['reason'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

