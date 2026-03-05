// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bool_equals_advanced_filter.dart';

/// Filter for the Event Subscription.
class EventSubscriptionFilter {
  /// An array of advanced filters that are used for filtering event subscriptions.
  final pulumi.Input<List<BoolEqualsAdvancedFilter>>? advancedFilters;
  /// Allows advanced filters to be evaluated against an array of values instead of expecting a singular value.
  final pulumi.Input<bool>? enableAdvancedFilteringOnArrays;
  /// A list of applicable event types that need to be part of the event subscription. If it is desired to subscribe to all default event types, set the IncludedEventTypes to null.
  final pulumi.Input<List<String>>? includedEventTypes;
  /// Specifies if the SubjectBeginsWith and SubjectEndsWith properties of the filter
  /// should be compared in a case sensitive manner.
  final pulumi.Input<bool>? isSubjectCaseSensitive;
  /// An optional string to filter events for an event subscription based on a resource path prefix.
  /// The format of this depends on the publisher of the events.
  /// Wildcard characters are not supported in this path.
  final pulumi.Input<String>? subjectBeginsWith;
  /// An optional string to filter events for an event subscription based on a resource path suffix.
  /// Wildcard characters are not supported in this path.
  final pulumi.Input<String>? subjectEndsWith;

  /// Creates a new [EventSubscriptionFilter].
  /// [advancedFilters] An array of advanced filters that are used for filtering event subscriptions.
  /// [enableAdvancedFilteringOnArrays] Allows advanced filters to be evaluated against an array of values instead of expecting a singular value.
  /// [includedEventTypes] A list of applicable event types that need to be part of the event subscription. If it is desired to subscribe to all default event types, set the IncludedEventTypes to null.
  /// [isSubjectCaseSensitive] Specifies if the SubjectBeginsWith and SubjectEndsWith properties of the filter
  /// [subjectBeginsWith] An optional string to filter events for an event subscription based on a resource path prefix.
  /// [subjectEndsWith] An optional string to filter events for an event subscription based on a resource path suffix.
  EventSubscriptionFilter({
    this.advancedFilters,
    this.enableAdvancedFilteringOnArrays,
    this.includedEventTypes,
    this.isSubjectCaseSensitive,
    this.subjectBeginsWith,
    this.subjectEndsWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedFilters': ?pulumi.Input.mapOptionalInputValue<List<BoolEqualsAdvancedFilter>, List<Map<String, dynamic>>>(advancedFilters, (value) => pulumi.Input.encodeList<BoolEqualsAdvancedFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableAdvancedFilteringOnArrays': ?enableAdvancedFilteringOnArrays,
      'includedEventTypes': ?includedEventTypes,
      'isSubjectCaseSensitive': ?isSubjectCaseSensitive,
      'subjectBeginsWith': ?subjectBeginsWith,
      'subjectEndsWith': ?subjectEndsWith,
    };
  }

  factory EventSubscriptionFilter.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionFilter(
      advancedFilters: (() { final guardedValue = map['advancedFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BoolEqualsAdvancedFilter>(guardedValue, (value) => BoolEqualsAdvancedFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableAdvancedFilteringOnArrays: (() { final guardedValue = map['enableAdvancedFilteringOnArrays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includedEventTypes: (() { final guardedValue = map['includedEventTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isSubjectCaseSensitive: (() { final guardedValue = map['isSubjectCaseSensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subjectBeginsWith: (() { final guardedValue = map['subjectBeginsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectEndsWith: (() { final guardedValue = map['subjectEndsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

