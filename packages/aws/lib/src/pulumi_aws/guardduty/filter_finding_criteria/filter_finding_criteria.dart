// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../filter_finding_criteria_criterion/filter_finding_criteria_criterion.dart';

class FilterFindingCriteria {
  final List<FilterFindingCriteriaCriterion> criterions;

  FilterFindingCriteria({
    required this.criterions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['criterions'] =
        Input.encodeList<FilterFindingCriteriaCriterion, Map<String, dynamic>>(
            criterions, (value) => value.toMap());
    return map;
  }

  factory FilterFindingCriteria.fromMap(Map<String, dynamic> map) {
    return FilterFindingCriteria(
      criterions: Input.decodeList<FilterFindingCriteriaCriterion>(
          map['criterions'],
          (value) => FilterFindingCriteriaCriterion.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
