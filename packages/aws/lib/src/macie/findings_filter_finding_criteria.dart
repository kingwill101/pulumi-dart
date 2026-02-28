// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'findings_filter_finding_criteria_criterion.dart';

class FindingsFilterFindingCriteria {
  /// A condition that specifies the property, operator, and one or more values to use to filter the results.  (documented below)
  final List<FindingsFilterFindingCriteriaCriterion>? criterions;

  /// Creates a new [FindingsFilterFindingCriteria].
  /// [criterions] A condition that specifies the property, operator, and one or more values to use to filter the results.  (documented below)
  FindingsFilterFindingCriteria({
    this.criterions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final criterionsValue = criterions;
    if (criterionsValue != null) {
      map['criterions'] = pulumi.Input.encodeList<
          FindingsFilterFindingCriteriaCriterion,
          Map<String, dynamic>>(criterionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory FindingsFilterFindingCriteria.fromMap(Map<String, dynamic> map) {
    return FindingsFilterFindingCriteria(
      criterions: map['criterions'] == null
          ? null
          : pulumi.Input.decodeList<FindingsFilterFindingCriteriaCriterion>(
              map['criterions'],
              (value) => FindingsFilterFindingCriteriaCriterion.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
