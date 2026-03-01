// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_source_parameters_filter_criteria_filter.dart';

class PipeSourceParametersFilterCriteria {
  /// An array of up to 5 event patterns. Detailed below.
  final List<PipeSourceParametersFilterCriteriaFilter>? filters;

  /// Creates a new [PipeSourceParametersFilterCriteria].
  /// [filters] An array of up to 5 event patterns. Detailed below.
  PipeSourceParametersFilterCriteria({
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<PipeSourceParametersFilterCriteriaFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
    };
  }

  factory PipeSourceParametersFilterCriteria.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersFilterCriteria(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<PipeSourceParametersFilterCriteriaFilter>(map['filters'], (value) => PipeSourceParametersFilterCriteriaFilter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

