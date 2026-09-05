// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_source_mapping_filter_criteria_filter.dart';

class EventSourceMappingFilterCriteria {
  /// Set of up to 5 filter. If an event satisfies at least one, Lambda sends the event to the function or adds it to the next batch. See below.
  final pulumi.Input<List<EventSourceMappingFilterCriteriaFilter>?>? filters;

  /// Creates a new [EventSourceMappingFilterCriteria].
  /// [filters] Set of up to 5 filter. If an event satisfies at least one, Lambda sends the event to the function or adds it to the next batch. See below.
  const EventSourceMappingFilterCriteria({
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<EventSourceMappingFilterCriteriaFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<EventSourceMappingFilterCriteriaFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EventSourceMappingFilterCriteria.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingFilterCriteria(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventSourceMappingFilterCriteriaFilter>(guardedValue, (value) => EventSourceMappingFilterCriteriaFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
