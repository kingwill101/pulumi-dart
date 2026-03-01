// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_filter_criteria.dart';

/// {@template pulumi_inspector2_filter_filter_args_doc}
/// The set of arguments for Filter.
/// {@endtemplate}
/// {@macro pulumi_inspector2_filter_filter_args_doc}
class FilterArgs {
  /// Action to be applied to the findings that maatch the filter. Possible values are `NONE` and `SUPPRESS`
  final pulumi.Input<String> action;

  /// Description
  final pulumi.Input<String>? description;

  /// Details on the filter criteria. Documented below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<FilterFilterCriteria>> filterCriterias;

  /// Name of the filter.
  final pulumi.Input<String>? name;

  /// Reason for creating the filter
  final pulumi.Input<String>? reason;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FilterArgs].
  /// [action] Action to be applied to the findings that maatch the filter. Possible values are `NONE` and `SUPPRESS`
  /// [description] Description
  /// [filterCriterias] Details on the filter criteria. Documented below.
  /// [name] Name of the filter.
  /// [reason] Reason for creating the filter
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  FilterArgs({
    required String action,
    String? description,
    required List<FilterFilterCriteria> filterCriterias,
    String? name,
    String? reason,
    String? region,
    Map<String, String>? tags,
  }) : action = pulumi.Input.asInput<String>(action),
       description = pulumi.Input.asOptionalInput<String>(description),
       filterCriterias = pulumi.Input.asInput<List<FilterFilterCriteria>>(
         filterCriterias,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       reason = pulumi.Input.asOptionalInput<String>(reason),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'filterCriterias':
          pulumi.Input.mapInputValue<
            List<FilterFilterCriteria>,
            List<Map<String, dynamic>>
          >(
            filterCriterias,
            (value) =>
                pulumi.Input.encodeList<
                  FilterFilterCriteria,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'reason': ?reason,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory FilterArgs.fromMap(Map<String, dynamic> map) {
    return FilterArgs(
      action: map['action'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      filterCriterias: pulumi.Input.decodeList<FilterFilterCriteria>(
        map['filterCriterias'],
        (value) => FilterFilterCriteria.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      name: map['name'] == null ? null : map['name'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
