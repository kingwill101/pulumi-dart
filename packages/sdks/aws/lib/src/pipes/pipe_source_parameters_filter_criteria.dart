// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_source_parameters_filter_criteria_filter.dart';

class PipeSourceParametersFilterCriteria {
  /// An array of up to 5 event patterns. Detailed below.
  final pulumi.Input<List<PipeSourceParametersFilterCriteriaFilter>>? filters;

  /// Creates a new [PipeSourceParametersFilterCriteria].
  /// [filters] An array of up to 5 event patterns. Detailed below.
  const PipeSourceParametersFilterCriteria({
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<PipeSourceParametersFilterCriteriaFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<PipeSourceParametersFilterCriteriaFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PipeSourceParametersFilterCriteria.fromMap(Map<String, dynamic> map) {
    return PipeSourceParametersFilterCriteria(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipeSourceParametersFilterCriteriaFilter>(guardedValue, (value) => PipeSourceParametersFilterCriteriaFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
