// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipe_source_parameters_filter_criteria_filter/pipe_source_parameters_filter_criteria_filter.dart';

class PipeSourceParametersFilterCriteria {
  /// An array of up to 5 event patterns. Detailed below.
  final List<PipeSourceParametersFilterCriteriaFilter>? filters;

  PipeSourceParametersFilterCriteria({
    this.filters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.encodeList<
          PipeSourceParametersFilterCriteriaFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    return map;
  }

  factory PipeSourceParametersFilterCriteria.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersFilterCriteria(
      filters: map['filters'] == null
          ? null
          : Input.decodeList<PipeSourceParametersFilterCriteriaFilter>(
              map['filters'],
              (value) => PipeSourceParametersFilterCriteriaFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
