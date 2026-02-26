// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../filter_filter_criteria/filter_filter_criteria.dart';

/// The set of arguments for Filter.
class FilterArgs2 {
  /// Action to be applied to the findings that maatch the filter. Possible values are `NONE` and `SUPPRESS`
  final Input<String> action;

  /// Description
  final Input<String>? description;

  /// Details on the filter criteria. Documented below.
  ///
  /// The following arguments are optional:
  final Input<List<FilterFilterCriteria>> filterCriterias;

  /// Name of the filter.
  final Input<String>? name;

  /// Reason for creating the filter
  final Input<String>? reason;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  FilterArgs2({
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
    map['filterCriterias'] = Input.mapInputValue<List<FilterFilterCriteria>,
            List<Map<String, dynamic>>>(
        filterCriterias,
        (value) => Input.encodeList<FilterFilterCriteria, Map<String, dynamic>>(
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

  factory FilterArgs2.fromMap(Map<String, dynamic> map) {
    return FilterArgs2(
      action: Input.asInput<String>(map['action']),
      description: Input.asOptionalInput<String>(map['description']),
      filterCriterias:
          Input.asInput<List<FilterFilterCriteria>>(map['filterCriterias']),
      name: Input.asOptionalInput<String>(map['name']),
      reason: Input.asOptionalInput<String>(map['reason']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
