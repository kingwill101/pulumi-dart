// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../event_source_mapping_filter_criteria_filter/event_source_mapping_filter_criteria_filter.dart';

class EventSourceMappingFilterCriteria {
  /// Set of up to 5 filter. If an event satisfies at least one, Lambda sends the event to the function or adds it to the next batch. See below.
  final List<EventSourceMappingFilterCriteriaFilter>? filters;

  EventSourceMappingFilterCriteria({
    this.filters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.encodeList<EventSourceMappingFilterCriteriaFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    return map;
  }

  factory EventSourceMappingFilterCriteria.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingFilterCriteria(
      filters: map['filters'] == null
          ? null
          : Input.decodeList<EventSourceMappingFilterCriteriaFilter>(
              map['filters'],
              (value) => EventSourceMappingFilterCriteriaFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
