// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'findings_filter_finding_criteria_criterion.dart';

class FindingsFilterFindingCriteria {
  /// A condition that specifies the property, operator, and one or more values to use to filter the results.  (documented below)
  final pulumi.Input<List<FindingsFilterFindingCriteriaCriterion>>? criterions;

  /// Creates a new [FindingsFilterFindingCriteria].
  /// [criterions] A condition that specifies the property, operator, and one or more values to use to filter the results.  (documented below)
  FindingsFilterFindingCriteria({
    this.criterions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criterions': ?pulumi.Input.mapOptionalInputValue<List<FindingsFilterFindingCriteriaCriterion>, List<Map<String, dynamic>>>(criterions, (value) => pulumi.Input.encodeList<FindingsFilterFindingCriteriaCriterion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FindingsFilterFindingCriteria.fromMap(Map<String, dynamic> map) {
    return FindingsFilterFindingCriteria(
      criterions: (() { final guardedValue = map['criterions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FindingsFilterFindingCriteriaCriterion>(guardedValue, (value) => FindingsFilterFindingCriteriaCriterion.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

