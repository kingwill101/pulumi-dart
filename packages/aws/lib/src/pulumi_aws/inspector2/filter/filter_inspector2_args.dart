// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../filter_filter_criteria/filter_filter_criteria.dart';

/// The set of arguments for Filter.
class FilterInspector2Args {
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

  FilterInspector2Args({
    required this.action,
    this.description,
    required this.filterCriterias,
    this.name,
    this.reason,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['filterCriterias'] = pulumi.Input.mapInputValue<
            List<FilterFilterCriteria>, List<Map<String, dynamic>>>(
        filterCriterias,
        (value) =>
            pulumi.Input.encodeList<FilterFilterCriteria, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final reasonValue = reason;
    if (reasonValue != null) {
      map['reason'] = reasonValue;
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

  factory FilterInspector2Args.fromMap(Map<String, dynamic> map) {
    return FilterInspector2Args(
      action: pulumi.Input.asInput<String>(map['action']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      filterCriterias: pulumi.Input.asInput<List<FilterFilterCriteria>>(
          map['filterCriterias']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      reason: pulumi.Input.asOptionalInput<String>(map['reason']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
