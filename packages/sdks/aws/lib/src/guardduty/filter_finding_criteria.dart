// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_finding_criteria_criterion.dart';

class FilterFindingCriteria {
  final pulumi.Input<List<FilterFindingCriteriaCriterion>> criterions;

  /// Creates a new [FilterFindingCriteria].
  /// [criterions] Required.
  FilterFindingCriteria({
    required this.criterions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criterions': pulumi.Input.mapInputValue<List<FilterFindingCriteriaCriterion>, List<Map<String, dynamic>>>(criterions, (value) => pulumi.Input.encodeList<FilterFindingCriteriaCriterion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FilterFindingCriteria.fromMap(Map<String, dynamic> map) {
    return FilterFindingCriteria(
      criterions: (pulumi.Input.decodeList<FilterFindingCriteriaCriterion>(map['criterions']!, (value) => FilterFindingCriteriaCriterion.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

