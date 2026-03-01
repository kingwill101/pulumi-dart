// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_source_mapping_filter_criteria_filter.dart';

class EventSourceMappingFilterCriteria {
  /// Set of up to 5 filter. If an event satisfies at least one, Lambda sends the event to the function or adds it to the next batch. See below.
  final List<EventSourceMappingFilterCriteriaFilter>? filters;

  /// Creates a new [EventSourceMappingFilterCriteria].
  /// [filters] Set of up to 5 filter. If an event satisfies at least one, Lambda sends the event to the function or adds it to the next batch. See below.
  EventSourceMappingFilterCriteria({this.filters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<
              EventSourceMappingFilterCriteriaFilter,
              Map<String, dynamic>
            >(filters!, (value) => value.toMap()),
    };
  }

  factory EventSourceMappingFilterCriteria.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingFilterCriteria(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<EventSourceMappingFilterCriteriaFilter>(
              map['filters'],
              (value) => EventSourceMappingFilterCriteriaFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
